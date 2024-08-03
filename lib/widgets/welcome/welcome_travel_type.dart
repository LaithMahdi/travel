import 'package:flutter/material.dart';
import 'package:travel/constant/app_font.dart';
import '../../constant/app_color.dart';
import '../../view_models/travel/travel_model.dart';

class WelcomeTravelType extends StatelessWidget {
  const WelcomeTravelType({
    super.key,
    required this.travel,
    required this.selectedTravel,
    required this.onTap,
  });

  final TravelModel travel;
  final int selectedTravel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
        decoration: BoxDecoration(
          color: AppColor.greyEC,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: selectedTravel == travel.id
              ? Border.all(color: AppColor.black, width: 1)
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColor.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(3),
              child: Image.asset(travel.image, width: 35, height: 35),
            ),
            const SizedBox(width: 7),
            Text(
              travel.name,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600, fontFamily: AppFont.poppins),
            )
          ],
        ),
      ),
    );
  }
}
