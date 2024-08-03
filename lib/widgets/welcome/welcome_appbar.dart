import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../constant/app_color.dart';
import 'welcome_icon_appbar.dart';

class WelcomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WelcomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WelcomeIconAppBar(icon: EvaIcons.menu, onTap: () {}),
          Row(
            children: [
              WelcomeIconAppBar(icon: EvaIcons.searchOutline, onTap: () {}),
              const SizedBox(width: 15),
              WelcomeIconAppBar(icon: EvaIcons.bellOutline, onTap: () {}),
              const SizedBox(width: 15),
              const CircleAvatar(
                radius: 23,
                backgroundColor: AppColor.greyEB,
                child: CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
