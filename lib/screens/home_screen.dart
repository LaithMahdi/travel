import 'dart:ui';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../constant/app_color.dart';
import '../widgets/home/home_icon_button.dart';
import 'welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    const WelcomeScreen(),
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.amber),
  ];

  final List<IconData> _icons = const [
    EvaIcons.home,
    EvaIcons.shoppingBag,
    EvaIcons.bookmark,
    EvaIcons.settings,
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_currentPage],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            margin: const EdgeInsets.all(20),
            height: 90,
            decoration: BoxDecoration(
              color: AppColor.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                _icons.length,
                (index) => HomeIconButton(
                  icon: _icons[index],
                  index: index,
                  currentPage: _currentPage,
                  onTap: () => _onPageChanged(index),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
