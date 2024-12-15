 import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/aboutMe_controller.dart';
 import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';
import 'components/aboutMe_grid.dart';

class ContactMe extends StatelessWidget {
  final controller = Get.put(AboutMeController());
  ContactMe({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'Contact', title: 'Me'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: AboutMeGrid(
                    crossAxisCount: 4,
                    ratio: 1.5,
                  ),
                  extraLargeScreen: AboutMeGrid(crossAxisCount: 4, ratio: 1.6),
                  largeMobile: AboutMeGrid(crossAxisCount: 2, ratio: 1.8),
                  mobile: AboutMeGrid(crossAxisCount: 2, ratio: 1.4),
                  tablet: AboutMeGrid(
                    ratio: 1.7,
                    crossAxisCount: 3,
                  )))
        ],
      ),
    );
  }
}
