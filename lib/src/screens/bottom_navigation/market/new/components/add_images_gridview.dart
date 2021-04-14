import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImagesGridView extends StatefulWidget {
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
    // TODO: implement initState
    super.initState();
    setState(() {
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
    });
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
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: <Widget>[
                Image.file(
                  uploadModel.imageFile,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: InkWell(
                    child: Icon(
                      Icons.remove_circle,
                      size: 20,
                      color: Colors.red,
                    ),
                    onTap: () {
                      setState(() {
                        images.replaceRange(index, index + 1, ['Add Image']);
                      });
                    },
                  ),
                ),
              ],
            ),
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

/*GridView.builder(
      //padding: const EdgeInsets.all(5.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            //TODO: add images to the gridview and use the itembuilder index
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.colorGrey.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Icon(
              Icons.add,
              color: AppColors.colorDarkSlateGrey,
            ),
          ),
        );
      },
    );*/
