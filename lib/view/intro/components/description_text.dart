import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.black.withOpacity(0.1),
      ),
      width: size.width * 0.5,
      // height: size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          intro,
          style: TextStyle(
              color: Colors.black.withOpacity(0.9),
              wordSpacing: 2,
              fontSize: 15),
        ),
      ),
    );
  }
}
