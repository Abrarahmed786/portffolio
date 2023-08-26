import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro/components/skills/technical_skill_pill.dart';
import 'package:pro/constant/app_strings.dart';
import 'package:pro/constant/app_text_style.dart';

class TechnicalSkillsComponent extends StatelessWidget {
  final bool darkTheme;
  const TechnicalSkillsComponent({super.key, required this.darkTheme});

  @override
  Widget build(BuildContext context) {
    bool isWidth =
        MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
    return SizedBox(
      width:
          isWidth ? MediaQuery.of(context).size.width * 0.45 : double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              AppStrings.skills,
              style: AppTextStyle.titleText,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.mobile),
            title: 'FLUTTER',
            value: 0.75,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.code),
            title: 'DART',
            value: 0.65,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.git),
            title: 'GIT',
            value: 0.8,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.python),
            title: 'PYTHON',
            value: 0.65,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.aws),
            title: 'AWS',
            value: 0.7,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.fire),
            title: 'FIREBASE',
            value: 0.6,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.networkWired),
            title: 'REST API',
            value: 0.8,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.bugSlash),
            title: 'REFACTORING',
            value: 0.8,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.comments),
            title: 'COMMUNICATION',
            value: 0.85,
          ),
          SizedBox(
            height: 12,
          ),
          TechnicalSkillsPill(
            icon: Icon(FontAwesomeIcons.thinkPeaks),
            title: 'DESIGN THINKING',
            value: 0.85,
          ),
        ],
      ),
    );
  }
}
