import 'package:flutter/material.dart';
import '../../constant/app_color.dart';
import 'place_detail_icon.dart';

class PlaceDetailIconText extends StatelessWidget {
  const PlaceDetailIconText({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  final String title, subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PlaceDetailIcon(icon: icon, color: AppColor.grey, onTap: () {}),
        const SizedBox(width: 15),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: AppColor.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColor.black, fontWeight: FontWeight.bold),
          ),
        ]),
      ],
    );
  }
}
