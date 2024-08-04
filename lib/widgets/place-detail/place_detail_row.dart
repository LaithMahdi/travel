import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../constant/app_color.dart';
import '../../constant/app_font.dart';
import '../../view_models/place/place_model.dart';

class PlaceDetailRow extends StatelessWidget {
  const PlaceDetailRow({super.key, this.place});

  final PlaceModel? place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            place!.name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColor.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(EvaIcons.star,
                      color: AppColor.yellowColor, size: 27),
                  const SizedBox(width: 7),
                  Text(
                    place!.nbstar.toString(),
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontFamily: AppFont.poppins,
                        color: AppColor.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Text(
                "${place!.nbReview} reviews",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColor.grey, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
