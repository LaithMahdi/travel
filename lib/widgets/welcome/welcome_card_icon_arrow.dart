import 'dart:ui';
import 'package:flutter/material.dart';
import '../../constant/app_color.dart';

class WelcomeCardIconArrow extends StatelessWidget {
  const WelcomeCardIconArrow({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: AppColor.white.withOpacity(0.25), shape: BoxShape.circle),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Transform.rotate(
              angle: 7,
              child: const Icon(
                Icons.arrow_upward,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
