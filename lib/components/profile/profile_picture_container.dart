import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfilePictureContainer extends StatelessWidget {
  final bool darkTheme;
  const ProfilePictureContainer({super.key, required this.darkTheme});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: darkTheme
          ? Lottie.asset("assets/prof.json")
          : Lottie.asset("assets/profl.json"),
    );
  }
}
