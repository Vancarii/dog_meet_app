import 'package:another_flushbar/flushbar.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/route_transitions.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/transparent_route.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/custom_rounded_textfield.dart';
import 'package:dog_meet_app/src/global_components/widgets/custom_expandable.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/provider/provider_notifier.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/market/new/components/fullscreen_image.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/meetup/meet/components/post/components/info_tiles.dart';
import 'package:dog_meet_app/src/screens/sub_screens/other_profile/other_profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/meet_up_list_tiles.dart';
import 'package:provider/provider.dart';

class MeetUpDetailsPage extends StatefulWidget {
  final String accountName;
  final String image;

  const MeetUpDetailsPage({
    Key key,
    this.accountName = 'Account Name',
    this.image,
  }) : super(key: key);

  @override
  _MeetUpDetailsPageState createState() => _MeetUpDetailsPageState();
}

class _MeetUpDetailsPageState extends State<MeetUpDetailsPage> with SingleTickerProviderStateMixin {
  bool isAttending = false;

  bool commentsIsOpen = false;

  final ScrollController _sliverScrollController = ScrollController();

  AnimationController _animationController;
  Animation _animationTween;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 0));
    _animationTween = ColorTween(
            begin: AppColors.colorWhite,
            end: Provider.of<ProviderNotifier>(context, listen: false).isDarkMode == false
                ? AppColors.colorOffBlack
                : AppColors.colorWhite)
        .animate(_animationController);

    _sliverScrollController.addListener(() {
      //print('offset: ' + (_sliverScrollController.offset).toString());
      //print('offset: ' +((_sliverScrollController.offset - 150) / 50).toString());
      _animationController.animateTo((_sliverScrollController.offset - 150) / 50);
    });
    super.initState();
  }

  @override
  void dispose() {
    _sliverScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      /*floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: joinCancelFab(),*/
      appBar: meetDetailsAppBar(),
      body: GestureDetector(
        /*onHorizontalDragUpdate: (details) {
                int sens = 5;
                if (details.delta.dx > sens) {
                  //left to right
                  Navigator.pop(context);
                } else if (details.delta.dx < -sens) {
                  //right to left
                }
              },*/
        child: CustomScrollView(
          controller: _sliverScrollController,
          slivers: [
            meetDetailSliverAppBar(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      meetDetailsLocation(),
                      meetDetailsInfo(),
                      Divider(
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      CustomExpandable(
                        headerText: 'Comments (1)',
                        borderColor: AppColors.colorBlack,
                        body: MeetUpCommentSection(),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        child: CustomText(
                          text: 'Photos',
                          size: 18,
                          bold: true,
                        ),
                      ),
                      meetDetailsPhotoGrid(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar meetDetailsAppBar() {
    return AppBar(
      brightness: Theme.of(context).primaryColorBrightness,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 0,
      //backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
        ),
      ),
      title: InkWell(
        onTap: () {
          Navigator.push(
              context, RouteTransitions().slideRightToLeftTransitionType(OtherProfilePage()));
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(
            text: widget.accountName,
            size: 18,
            bold: true,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      //title: Text('Actions'),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('Report Listing'),
                          onPressed: () {
                            //TODO: ADD FUNCTIONALITY TO REPORT LISTING
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text('Hide similar posts'),
                          onPressed: () {
                            //TODO; ADD FUNCTIONALITY TO HIDE LISTING AND SIMILAR
                          },
                        )
                      ],
                    );
                  });
            });
          },
          icon: Icon(
            Icons.more_vert,
          ),
        ),
      ],
    );
  }

  Widget meetDetailSliverAppBar() {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 250.0,
      //brightness: Brightness.dark,
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: '3:30 pm',
                      bold: true,
                      size: 20,
                      color: _animationTween.value,
                    ),
                    CustomText(
                      text: 'Tomorrow, Thursday May 27th, 2021',
                      color: _animationTween.value,
                      size: 12,
                    ),
                  ],
                ),
                Spacer(),
                InfoTiles(
                  tileColor: AppColors.colorPrimaryOrange,
                  tileText: 'PLAYDATE',
                ),
              ],
            );
          }),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black26,
                BlendMode.multiply,
              ),
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: Container(
          height: 10.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }

  Padding meetDetailsLocation() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 10.0,
        bottom: 20.0,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                CustomText(
                  text: 'Location',
                  size: 20,
                  bold: true,
                  color: Theme.of(context).primaryColorLight,
                  padding: const EdgeInsets.only(bottom: 5),
                ),
                Spacer(),
                CustomText(
                  text: 'View in Maps',
                  size: 15,
                  color: Colors.blue,
                  bold: true,
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }

  Column meetDetailsInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MeetUpListTiles(
          leadingIcon: FontAwesomeIcons.globeAmericas,
          iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
          title: 'All Breeds',
          description: 'All breeds are welcome!',
        ),
        MeetUpListTiles(
          leadingIcon: FontAwesomeIcons.venus,
          iconColor: Colors.pink,
          title: 'Female',
          description: 'A female only dog Meet Up, sorry boys!',
        ),
        MeetUpListTiles(
          leadingIcon: FontAwesomeIcons.bone,
          iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
          title: 'Intact',
          description: 'Either Fixed or Intact dogs can come play!',
        ),
        MeetUpListTiles(
          leadingIcon: FontAwesomeIcons.paw,
          iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
          title: 'Medium Size',
          description: '30 - 60 pounds / 15 - 30 kg only please!',
        ),
        MeetUpListTiles(
          leadingIcon: FontAwesomeIcons.users,
          iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
          title: '(3) doggos going',
          description: 'The Group Organizer limits 10 dogs to this meet',
        ),
        MeetUpListTiles(
          leadingIcon: FontAwesomeIcons.bolt,
          iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
          title: 'Hyper Puppers',
          description: 'This meet is for super hyper zoomies!',
        ),
        MeetUpListTiles(
          leadingIcon: Icons.date_range,
          iconColor: Theme.of(context).primaryColorLight.withOpacity(0.6),
          title: '5 - 10 Months',
          description: 'Puppies only!',
        ),
      ],
    );
  }

  GridView meetDetailsPhotoGrid() {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      children: [
        InkWell(
          onTap: () {
            showFullscreenImage(
                context,
                Image.asset(
                  'assets/images/pictures/rosy.png',
                  fit: BoxFit.contain,
                ),
                'meet_image');
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Hero(
              tag: 'meet_image',
              child: Image.asset(
                'assets/images/pictures/rosy.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget joinCancelFab() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 150),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(child: child, scale: animation);
      },
      child: FloatingActionButton.extended(
        //this herotag is important so that there wont be an error
        heroTag: null,
        key: UniqueKey(),
        onPressed: () {
          setState(() {
            isAttending = !isAttending;
          });
          Flushbar(
            backgroundColor: Theme.of(context).primaryColorLight,
            messageColor: Theme.of(context).primaryColor,
            titleColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            margin: const EdgeInsets.all(10.0),
            title: isAttending == true ? 'Cancelled Attendance' : 'You\'re Going!',
            message: isAttending == true
                ? 'That\'s Okay! Find someone else to play!'
                : 'It\'s great to meet more friends!',
            icon: isAttending == true
                ? Icon(
                    Icons.close_rounded,
                    size: 30,
                    color: AppColors.colorRed,
                  )
                : Icon(
                    Icons.check_rounded,
                    size: 30,
                    color: AppColors.colorBrightGreen,
                  ),
            duration: Duration(milliseconds: 2500),
            animationDuration: Duration(milliseconds: 500),
          )..show(context);
        },
        backgroundColor: isAttending == true ? AppColors.colorRed : AppColors.colorBrightGreen,
        focusElevation: 0,
        highlightElevation: 0,
        splashColor: AppColors.colorPrimaryOrange,
        label: isAttending == true
            ? Row(
                children: [
                  Icon(
                    Icons.close_rounded,
                    size: 30,
                    color: AppColors.colorWhite,
                  ),
                  CustomText(
                    text: 'Cancel',
                    color: AppColors.colorWhite,
                    bold: true,
                  ),
                ],
              )
            : Row(
                children: [
                  Icon(
                    Icons.check_rounded,
                    size: 30,
                    color: AppColors.colorWhite,
                  ),
                  CustomText(
                    text: 'Join',
                    color: AppColors.colorWhite,
                    bold: true,
                  ),
                ],
              ),
      ),
    );
  }
}

class MeetUpCommentSection extends StatefulWidget {
  const MeetUpCommentSection({Key key}) : super(key: key);

  @override
  _MeetUpCommentSectionState createState() => _MeetUpCommentSectionState();
}

class _MeetUpCommentSectionState extends State<MeetUpCommentSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(5.0),
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorLight.withOpacity(0.2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width / 1.5,
                      ),
                      child: Wrap(
                        children: [
                          CustomText(
                            text: 'Where is this meet? is it at a field or a dog park?',
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomRoundedTextField(
                        maxLines: null,
                        minLines: 1,
                        borderColor: Theme.of(context).primaryColorLight,
                        padding: const EdgeInsets.only(bottom: 5.0),
                        labelText: 'Add Comment / Ask a Question',
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.only(left: 8.0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.send_rounded,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Wrap(
                    children: [
                      CustomText(
                        text: 'Your comment is public to everyone who views this meet',
                        size: 12,
                        color: Theme.of(context).primaryColorLight.withOpacity(0.6),
                        padding: const EdgeInsets.only(left: 10.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MeetJoinCancelButtonDelegate extends SliverPersistentHeaderDelegate {
  double toolBarHeight;
  //toolBarHeight Included in both
  double closedHeight;
  double openHeight;

  MeetJoinCancelButtonDelegate({
    this.toolBarHeight,
    this.closedHeight,
    this.openHeight,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: toolBarHeight + openHeight,
      color: Colors.transparent,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 64,
          ),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text("Workouts"),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => toolBarHeight + openHeight;

  @override
  double get minExtent => toolBarHeight + closedHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
