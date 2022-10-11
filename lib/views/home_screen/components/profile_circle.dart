import 'package:flutter/material.dart';
import 'package:myprofilr/utils/color_constants.dart';
import 'package:myprofilr/views/home_screen/components/red_dot.dart';

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: primary),
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage('assets/images/profile.png'),
            ),
          ),
          child: const SizedBox(
            height: 35,
            width: 35,
          ),
        ),
        const Positioned(
          height: 8,
          width: 8,
          right: 0,
          bottom: 2,
          child: RedDot(),
        ),
      ],
    );
  }
}

