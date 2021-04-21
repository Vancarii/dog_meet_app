import 'dart:io';
import 'package:dog_meet_app/src/global_components/components/app_colors.dart';
import 'package:dog_meet_app/src/global_components/route_transitions/transparent_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'fullscreen_image.dart';

class AddImagesGridView extends StatefulWidget {
  final int gridCount;

  AddImagesGridView({@required this.gridCount});

  @override
  _AddImagesGridViewState createState() => _AddImagesGridViewState();
}

class _AddImagesGridViewState extends State<AddImagesGridView> {
  List<Object> images = [];
  PickedFile _imageFile;
  File _image;

  ImagePicker picker = ImagePicker();

  @override
  void initState() {
    setState(() {
      for (var i = 0; i < widget.gridCount; i++) {
        images.add("Add Image");
      }
    });
    super.initState();
  }

  Future _onAddImageClick(int index) async {
    setState(() async {
      _imageFile = await picker.getImage(source: ImageSource.gallery);
      getFileImage(index);
    });
  }

  void getFileImage(int index) async {
//    var dir = await path_provider.getTemporaryDirectory();

    setState(() {
      _image = File(_imageFile.path);
      ImageUploadModel imageUpload = new ImageUploadModel();
      imageUpload.isUploaded = false;
      imageUpload.uploading = false;
      imageUpload.imageFile = _image;
      imageUpload.imageUrl = '';
      images.replaceRange(index, index + 1, [imageUpload]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: buildGridView(),
    );
  }

  Widget buildGridView() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      childAspectRatio: 1,
      children: List.generate(images.length, (index) {
        if (images[index] is ImageUploadModel) {
          ImageUploadModel uploadModel = images[index];
          return Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    TransparentRoute(
                      builder: (context) => FullscreenImage(
                        image: Image.file(
                          uploadModel.imageFile,
                          fit: BoxFit.contain,
                        ),
                        index: index,
                      ),
                    ),
                  );
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Hero(
                    tag: 'listingImage$index',
                    child: Image.file(
                      uploadModel.imageFile,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -2,
                top: -2,
                child: InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.colorWhite,
                    ),
                    child: Icon(
                      Icons.close_rounded,
                      size: 20,
                      color: Colors.red,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      images.replaceRange(index, index + 1, ['Add Image']);
                    });
                  },
                ),
              ),
            ],
          );
        } else {
          return Card(
            child: InkWell(
              onTap: () {
                _onAddImageClick(index);
              },
              child: Container(
                child: Icon(Icons.add),
              ),
            ),
          );
        }
      }),
    );
  }
}

class ImageUploadModel {
  bool isUploaded;
  bool uploading;
  File imageFile;
  String imageUrl;

  ImageUploadModel({
    this.isUploaded,
    this.uploading,
    this.imageFile,
    this.imageUrl,
  });
}
