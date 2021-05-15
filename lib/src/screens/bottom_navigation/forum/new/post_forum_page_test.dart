import 'dart:io';
import 'package:chewie/chewie.dart';
import 'package:dog_meet_app/src/global_components/themes/app_colors.dart';
import 'package:dog_meet_app/src/global_components/widgets/text_styles.dart';
import 'package:dog_meet_app/src/screens/bottom_navigation/forum/components/forum_post_header_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'components/add_media_buttons.dart';
import 'components/forum_content_textfield.dart';
import 'components/forum_title_textfield.dart';

class PostForumPage extends StatefulWidget {
  static const String id = 'post_forum_page';

  @override
  _PostForumPageState createState() => _PostForumPageState();
}

class _PostForumPageState extends State<PostForumPage> {
  File _media;
  final _picker = ImagePicker();

  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;

  bool isVideo = false;

  @override
  void initState() {
    super.initState();
    initializePlayer(_media);
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer(File file) async {
    print('initializePlayer');
    _videoPlayerController = VideoPlayerController.file(file);

    await Future.wait([_videoPlayerController.initialize()]);

    print('videoplayer: ' + _videoPlayerController.toString());

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      allowPlaybackSpeedChanging: false,
      allowFullScreen: false,
      allowedScreenSleep: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: AppColors.colorPrimaryOrange,
        handleColor: AppColors.colorPrimaryOrange,
        backgroundColor: AppColors.colorGrey,
        bufferedColor: AppColors.colorGrey,
      ),
    );

    setState(() {});
  }

  Future getMedia(Future<PickedFile> file, bool onVideoTapped) async {
    final pickedFile = await file;

    setState(() {
      if (pickedFile != null) {
        _media = File(pickedFile.path);

        print('_media: ' + _media.toString());
        print('onVideoTapped: ' + onVideoTapped.toString());

        if (onVideoTapped == true) {
          initializePlayer(_media);
        }
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorPrimaryOrange,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: CustomText(
          text: 'New Text Post',
          size: 18,
          bold: true,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close_rounded),
        ),
        actions: <Widget>[
          Center(
            child: GestureDetector(
              child: CustomText(
                text: 'Post',
                size: 18,
                color: AppColors.colorDarkSlateGrey,
                bold: true,
                // alignment: TextAlign.center,
                padding: const EdgeInsets.only(right: 15.0),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    //margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Column(
                        children: [
                          ForumPostHeaderInfo(),
                          ForumTitleTextField(),
                          isVideo == false
                              ? _media != null
                                  ? Container(
                                      width: double.infinity,
                                      child: Image.file(_media),
                                      constraints: BoxConstraints(
                                        maxHeight: 400,
                                      ),
                                    )
                                  : Container()
                              : _chewieController != null &&
                                      _chewieController.videoPlayerController.value.isInitialized
                                  ? Container(
                                      constraints: BoxConstraints(
                                        maxHeight: 400,
                                      ),
                                      child: Chewie(
                                        controller: _chewieController,
                                      ),
                                    )
                                  : Container(),
                          ForumContentTextField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddMediaButtons(
                    title: 'Add Link',
                    icon: FontAwesomeIcons.link,
                    onTapCallback: () {},
                  ),
                  AddMediaButtons(
                    title: 'Add Image',
                    icon: FontAwesomeIcons.camera,
                    onTapCallback: () {
                      setState(() {
                        isVideo = false;
                        getMedia(_picker.getImage(source: ImageSource.gallery), false);
                      });
                    },
                  ),
                  AddMediaButtons(
                    title: 'Add Video',
                    icon: Icons.movie,
                    onTapCallback: () {
                      setState(() {
                        if (_chewieController != null) {
                          _chewieController.dispose();
                        }
                        isVideo = true;
                        getMedia(_picker.getVideo(source: ImageSource.gallery), true);
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
