import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PicPage extends StatefulWidget {
  @override
  _PicPageState createState() => _PicPageState();
}

class _PicPageState extends State<PicPage> {
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _openCamera();
  }

  Future<void> _openCamera() async {
    var image = await picker.getImage(
        source: ImageSource.camera,
        maxWidth: 1000,
        maxHeight: 1200,
        imageQuality: 60);

    File imgFile = File(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
