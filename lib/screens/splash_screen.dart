import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../constant/app_color.dart';
import '../widgets/primary_button.dart';
import '../widgets/splash/splash_dot.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late PageController _pageController;
  int _currentVideoIndex = 0;
  final List<String> _videoPaths = [
    'assets/videos/1.mp4',
    'assets/videos/2.mp4',
    'assets/videos/3.mp4',
  ];
  final List<String> _texts = [
    'Take off with us!',
    'Explore the open road',
    'Relax on the beach',
  ];
  late List<VideoPlayerController> _controllers;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _controllers =
        _videoPaths.map((path) => VideoPlayerController.asset(path)).toList();
    for (var controller in _controllers) {
      controller.initialize().then((_) {
        controller.setVolume(0);
        setState(() {});
      });
    }
    _controllers[_currentVideoIndex].play();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    _controllers[_currentVideoIndex].pause();
    setState(() {
      _currentVideoIndex = index;
    });
    _controllers[_currentVideoIndex].play();
  }

  void goToNextPage() {
    if (_currentVideoIndex < _videoPaths.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _videoPaths.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              final controller = _controllers[index];
              return Stack(
                fit: StackFit.expand,
                children: [
                  controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: controller.value.aspectRatio,
                          child: VideoPlayer(
                            controller,
                          ),
                        )
                      : const Center(child: CircularProgressIndicator()),
                  Positioned(
                    top: height * 0.1,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColor.black.withOpacity(0.5),
                            AppColor.black.withOpacity(0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    left: 20,
                    bottom: height * .15,
                    child: Text(
                      _texts[index],
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: AppColor.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              );
            },
          ),
          Positioned(
            bottom: height * 0.03,
            right: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      _videoPaths.length,
                      (index) => SplashDot(
                          currentVideoIndex: _currentVideoIndex, index: index)),
                ),
                PrimaryButton(text: 'Let\'s go!', onTap: goToNextPage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
