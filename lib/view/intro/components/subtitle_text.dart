import 'package:flutter/material.dart';

class CustomSubtitile extends StatelessWidget {
  final String text;
  const CustomSubtitile({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, color: Colors.black),
    );
  }
}
