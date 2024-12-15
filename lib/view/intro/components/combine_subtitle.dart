import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: CustomSubtitile(text: 'Flutter Developer '),
          largeMobile: CustomSubtitile(text: 'Flutter Developer'),
          mobile: CustomSubtitile(text: 'Flutter Developer'),
          tablet: CustomSubtitile(text: 'Flutter Developer'),
        ),
        // (kIsWeb && Responsive.isLargeMobile(context)
        //     ? const Responsive(
        //         desktop: CustomSubtitile(
        //           text: 'Developer ',
        //         ),
        //         largeMobile: CustomSubtitile(
        //           text: 'Developer ',
        //         ),
        //         mobile: CustomSubtitile(
        //           text: 'Developer ',
        //         ),
        //         tablet: CustomSubtitile(
        //           text: 'Developer ',
        //         ),
        //       )
        //     : ShaderMask(
        //         shaderCallback: (bounds) {
        //           return const LinearGradient(colors: [
        //             Colors.pink,
        //             Colors.blue,
        //           ]).createShader(bounds);
        //         },
        //         child: const Responsive(
        //           desktop: CustomSubtitile(
        //             text: 'Developer ',
        //           ),
        //           largeMobile: CustomSubtitile(
        //             text: 'Developer ',
        //           ),
        //           mobile: CustomSubtitile(
        //             text: 'Developer ',
        //           ),
        //           tablet: CustomSubtitile(
        //             text: 'Developer ',
        //           ),
        //         ),
        //       ))
      ],
    );
  }
}
