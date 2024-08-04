import 'dart:ui';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../constant/app_color.dart';

class PlaceDetailIcon extends StatelessWidget {
  const PlaceDetailIcon({
    super.key,
    this.icon,
    this.isBlur,
    this.color,
    required this.onTap,
  });

  final IconData? icon;
  final VoidCallback onTap;
  final bool? isBlur;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: 50,
          height: 50,
          // padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          decoration: BoxDecoration(
            color: color ?? AppColor.black.withOpacity(0.25),
            shape: BoxShape.circle,
          ),
          child: BackdropFilter(
            filter: isBlur == null || isBlur == false
                ? ImageFilter.blur(sigmaX: 0, sigmaY: 0)
                : ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Icon(icon ?? EvaIcons.arrowIosBackOutline,
                color: AppColor.white),
          ),
        ),
      ),
    );
  }
}
