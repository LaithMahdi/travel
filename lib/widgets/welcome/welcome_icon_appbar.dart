import 'package:flutter/material.dart';
import '../../constant/app_color.dart';

class WelcomeIconAppBar extends StatelessWidget {
  const WelcomeIconAppBar({super.key, required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(0),
        minimumSize: const Size(50, 50),
        backgroundColor: AppColor.greyEB,
      ),
      icon: Icon(icon, size: 24),
    );
  }
}
