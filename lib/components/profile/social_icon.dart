import 'package:flutter/material.dart';
import 'package:pro/constant/app_text_style.dart';

class SocialIcon extends StatelessWidget {
  final bool darkTheme;
  final String title;
  final Widget icon;
  const SocialIcon({
    super.key,
    required this.darkTheme,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Column(
        children: [
          icon,
          Text(
            title,
            style: AppTextStyle.subTitleText,
          ),
        ],
      ),
    );
  }
}
