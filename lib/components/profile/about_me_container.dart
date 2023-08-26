import 'package:flutter/material.dart';
import 'package:pro/constant/app_strings.dart';
import 'package:pro/constant/app_text_style.dart';

class AboutMeContainer extends StatelessWidget {
  final bool darkTheme;
  const AboutMeContainer({super.key, required this.darkTheme});

  @override
  Widget build(BuildContext context) {
    bool isWidth =
        MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppStrings.aboutMe,
            style: AppTextStyle.titleText,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: isWidth
                ? MediaQuery.of(context).size.width * 0.45
                : double.infinity,
            child: const Text(
              AppStrings.aboutMeDescription,
              style: AppTextStyle.subTitleText,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
