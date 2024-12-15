import 'package:flutter/material.dart';

import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            projectList[index].name,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(
                height: defaultPadding / 2,
              )
            : const SizedBox(
                height: defaultPadding,
              ),
        SizedBox(
         // width: size.width / 2,
          child: Text(
            projectList[index].description,
            style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.010,
            ),
          ),
        ),
        // const Spacer(),
        // ProjectLinks(
        //   index: index,
        // ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}
