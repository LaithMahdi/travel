import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:travel/constant/app_font.dart';
import '../../constant/app_color.dart';
import '../../view_models/place/place_model.dart';
import 'welcome_card_icon_arrow.dart';

class WelcomePlaceCard extends StatelessWidget {
  const WelcomePlaceCard({super.key, required this.place, required this.onTap});

  final PlaceModel place;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height * .4,
        decoration: const BoxDecoration(
          color: AppColor.white,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Hero(
                tag: place.image,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    place.image,
                    width: width,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
                child: Container(
              width: width,
              height: height * .4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(.7),
                    Colors.transparent,
                  ],
                ),
              ),
            )),
            Positioned(
              top: 20,
              right: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  decoration: BoxDecoration(
                    color: AppColor.white.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Text(
                      "${place.nbReview} Reviews",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColor.black,
                          fontFamily: AppFont.poppins,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: WelcomeCardIconArrow(onTap: onTap),
            ),
            Positioned(
              bottom: height * .04,
              left: 20,
              right: width * .3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.name,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        EvaIcons.pinOutline,
                        color: AppColor.white,
                        size: 16,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        place.location,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColor.white),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
