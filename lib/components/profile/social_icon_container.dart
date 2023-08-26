import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro/components/profile/social_icon.dart';

class SocialIconContainer extends StatelessWidget {
  final bool darkTheme;

  const SocialIconContainer({super.key, required this.darkTheme});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: height > width ? width : width * 0.45,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(),
          SocialIcon(
            darkTheme: darkTheme,
            title: 'LinkedIn',
            icon: const Icon(FontAwesomeIcons.linkedinIn),
          ),
          const Spacer(),
          SocialIcon(
            darkTheme: darkTheme,
            title: 'GitHub',
            icon: const Icon(FontAwesomeIcons.github),
          ),
          const Spacer(),
          SocialIcon(
            darkTheme: darkTheme,
            title: 'Mail',
            icon: const Icon(Icons.mail_outline_rounded),
          ),
          const Spacer(),
          SocialIcon(
            darkTheme: darkTheme,
            title: 'WhatsApp',
            icon: const Icon(FontAwesomeIcons.whatsapp),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
