import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pro/constant/app_strings.dart';
import 'package:pro/constant/app_text_style.dart';

class NameContainer extends StatelessWidget {
  const NameContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.name,
          style: AppTextStyle.titleText,
        ),
        SizedBox(
          height: 30,
          child: AnimatedTextKit(
            stopPauseOnTap: true,
            displayFullTextOnTap: true,
            repeatForever: true,
            pause: const Duration(seconds: 1),
            isRepeatingAnimation: true,
            animatedTexts: [
              FadeAnimatedText(
                'DESIGN THINKING',
                textStyle: AppTextStyle.titleText,
              ),
              FadeAnimatedText(
                'INNOVATION',
                textStyle: AppTextStyle.titleText,
              ),
              FadeAnimatedText(
                'FLUTTER',
                textStyle: AppTextStyle.titleText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
