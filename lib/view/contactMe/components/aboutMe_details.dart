import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/contactMe_model.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/aboutMe_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';

class ContactMeStack extends StatelessWidget {
  final controller = Get.put(AboutMeController());
  ContactMeStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        launchUrl(Uri.parse(contactMeList[index].url));
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor.withOpacity(0.5)),
          duration: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contactMeList[index].name,
                  // style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  //     color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                SvgPicture.asset(contactMeList[index].icon),
                const SizedBox(
                  height: defaultPadding,
                ),
                Text(contactMeList[index].contact),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
              ],
            ),
          )),
    );
  }
}
