import 'package:flutter/material.dart';
import '../../constant/app_color.dart';

class HomeIconButton extends StatelessWidget {
  const HomeIconButton({
    super.key,
    required this.icon,
    required this.index,
    required this.currentPage,
    required this.onTap,
  });

  final IconData icon;
  final int index, currentPage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(27),
        decoration: BoxDecoration(
          color: currentPage == index ? AppColor.white : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: currentPage == index ? AppColor.black : AppColor.white,
        ),
      ),
    );
  }
}
