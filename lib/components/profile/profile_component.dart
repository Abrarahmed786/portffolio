import 'package:flutter/material.dart';
import 'package:pro/components/profile/about_me_container.dart';
import 'package:pro/components/profile/name_container.dart';
import 'package:pro/components/profile/profile_picture_container.dart';
import 'package:pro/components/profile/social_icon_container.dart';

class ProfileComponent extends StatelessWidget {
  final bool darkTheme;
  const ProfileComponent({super.key, required this.darkTheme});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ProfilePictureContainer(darkTheme: darkTheme),
            const NameContainer()
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        SocialIconContainer(darkTheme: darkTheme),
        AboutMeContainer(darkTheme: darkTheme),
      ],
    );
  }
}
