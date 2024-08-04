import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:travel/constant/app_font.dart';
import 'package:travel/view_models/place/place_model.dart';

import '../constant/app_color.dart';
import '../widgets/place-detail/place_detail_icon.dart';
import '../widgets/place-detail/place_detail_icon_text.dart';
import '../widgets/place-detail/place_detail_row.dart';

class PlaceDetailScreen extends StatefulWidget {
  const PlaceDetailScreen({super.key});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  PlaceModel? _place;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      final args = ModalRoute.of(context)!.settings.arguments as Map;
      _place = args['place'] as PlaceModel;
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: _place == null
          ? const Center(child: CircularProgressIndicator())
          : CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 400,
                  leadingWidth: 70,
                  toolbarHeight: 70,
                  stretch: true,
                  leading: Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 10),
                    child: PlaceDetailIcon(
                        onTap: () => Navigator.of(context).pop(), isBlur: true),
                  ),
                  pinned: true,
                  flexibleSpace: Hero(
                    tag: _place!.image,
                    child: Image.asset(
                      _place!.image,
                      height: height,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PlaceDetailRow(place: _place),
                            const SizedBox(height: 25),
                            Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              children: [
                                PlaceDetailIconText(
                                  icon: EvaIcons.pin,
                                  title: "Location",
                                  subTitle: _place!.location,
                                ),
                                PlaceDetailIconText(
                                  icon: EvaIcons.clockOutline,
                                  title: "Duration",
                                  subTitle: _place!.duration,
                                ),
                                // const SizedBox(height: 20),
                                PlaceDetailIconText(
                                  icon: Icons.attach_money_rounded,
                                  title: "Price",
                                  subTitle: "${_place!.price} \$",
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Text(
                              _place!.description,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontFamily: AppFont.poppins,
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Reviews",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    fontFamily: AppFont.poppins,
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(height: 20),

                            // Reviews
                            ...List.generate(
                              _place!.reviews.length,
                              (index) => Container(
                                width: width,
                                margin: const EdgeInsets.only(bottom: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColor.greyEC,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _place!.reviews[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            fontFamily: AppFont.poppins,
                                            color: AppColor.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      _place!.reviews[index].comment,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontFamily: AppFont.poppins,
                                            color: AppColor.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
