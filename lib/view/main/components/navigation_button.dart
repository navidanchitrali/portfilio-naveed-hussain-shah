import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/nav_bar_controller.dart';
import 'package:get/get.dart';

class NavigationTextButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final int index;

  const NavigationTextButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.index});

  @override
  State<NavigationTextButton> createState() => _NavigationTextButtonState();
}

class _NavigationTextButtonState extends State<NavigationTextButton> {
  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(NavBarController());
    final size = MediaQuery.of(context).size;
    bool _isHovered = false;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onHover: (value) {
          // controller.onHover(widget.index, value);
          setState(() {
            _isHovered = true;
          });
        },
        child: Container(
          decoration:
              BoxDecoration(color: _isHovered == true ? Colors.green : bgColor),
          child: TextButton(
              onPressed: widget.onTap,
              child: Text(
                widget.text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    // fontSize: 20
                    fontSize: size.width * 0.02),
              )),
        ),
      ),
    );
  }
}
