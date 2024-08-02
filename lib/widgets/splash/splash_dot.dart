import 'package:flutter/material.dart';
import '../../constant/app_color.dart';

class SplashDot extends StatelessWidget {
  const SplashDot(
      {super.key, required this.currentVideoIndex, required this.index});

  final int currentVideoIndex, index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 4,
      width: 40,
      decoration: BoxDecoration(
        color: currentVideoIndex == index ? AppColor.white : AppColor.grey,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
