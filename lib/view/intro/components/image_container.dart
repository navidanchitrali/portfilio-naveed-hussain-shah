import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageContainer extends StatelessWidget {
  String imagePath;
  double height;
  double width;
  ImageContainer(
      {super.key,
      required this.height,
      required this.width,
      required,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(imagePath),
    );
  }
}
