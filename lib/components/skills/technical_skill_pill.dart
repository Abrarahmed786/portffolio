import 'package:flutter/material.dart';
import 'package:pro/constant/app_text_style.dart';

class TechnicalSkillsPill extends StatelessWidget {
  final Widget icon;
  final String title;
  final double value;
  const TechnicalSkillsPill(
      {super.key,
      required this.icon,
      required this.title,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 30, child: icon),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            width: 110,
            child: Text(
              title,
              style: AppTextStyle.subTitleText,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: LinearProgressIndicator(
              semanticsLabel: title,
              semanticsValue: title,
              color: const Color(0xff027DFD),
              borderRadius: BorderRadius.circular(10),
              minHeight: 25,
              value: value,
            ),
          ),
        ],
      ),
    );
  }
}
