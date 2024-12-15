import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/nav_bar_controller.dart';
import 'package:get/get.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    final navcontroller = Get.put(NavBarController());

    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
            scale: value,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              // margin: const EdgeInsets.symmetric(
              //     vertical: defaultPadding, horizontal: defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // gradient: const LinearGradient(colors: [
                //   Colors.white,
                //   Colors.red,
                // ]),
                //boxShadow: [
                //   // BoxShadow(
                //   //   color: Colors.red,
                //   //   offset: const Offset(-2, 0),
                //   //   blurRadius:
                //   //       navcontroller.hovers[value.toInt()] ? 20 : 10,
                //   // ),
                // BoxShadow(
                //   color: Colors.white.withOpacity(0.4),
                //   // offset: const Offset(2, 0),
                //   blurRadius:
                //       navcontroller.hovers[value.toInt()] ? 20 : 10,
                // ),
                // ]
              ),
              child: Row(
                children: [
                  NavigationTextButton(
                      index: 0,
                      onTap: () {
                        controller.animateToPage(0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      text: 'Home'),
                  // if (!Responsive.isLargeMobile(context))
                  NavigationTextButton(
                      index: 1,
                      onTap: () {
                        controller.animateToPage(1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      text: 'Projects'),
                  NavigationTextButton(
                      index: 2,
                      onTap: () {
                        controller.animateToPage(2,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      text: 'Certifications'),
                  NavigationTextButton(
                      index: 3,
                      onTap: () {
                        controller.animateToPage(3,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      text: 'Contact Me'),

                  // NavigationTextButton(onTap: () {}, text: 'Achievements'),
                ],
              ),
            ));
      },
    );
  }
}
