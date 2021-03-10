import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart' as imgpicker;
import 'dart:io' as io;

io.File pickedImage;

class ImagePickerMethods {
  imgFromCamera() async {
    io.File image = (await imgpicker.ImagePicker.pickImage(
        source: imgpicker.ImageSource.camera, imageQuality: 100));
    pickedImage = image;
  }

  imgFromGallery() async {
    io.File image = (await imgpicker.ImagePicker.pickImage(
        source: imgpicker.ImageSource.gallery, imageQuality: 100));
    pickedImage = image;
  }

  io.File showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        pickedImage = imgFromGallery() as io.File;
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      pickedImage = imgFromCamera() as io.File;
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
