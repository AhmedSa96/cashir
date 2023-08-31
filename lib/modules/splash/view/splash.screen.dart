import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cashir/shared/constants/colors.dart' as colors;
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Rx<bool> _visible = true.obs;

  Timer? _animationTimer;

  void _checkAuthStatus() {
    /// Navigate to login screen after 3 seconds
    /// TODO: Check if user is logged in
    /// TODO: Navigate to home screen if user is logged in
    /// TODO: Navigate to login screen if user is not logged in
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/login');
    });
  }

  @override
  void initState() {
    // Animate logo
    _animationTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _visible.value = !_visible.value;
    });

    _checkAuthStatus();
    super.initState();
  }

  @override
  void dispose() {
    _animationTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWaves(),
          Obx(
            () => AnimatedOpacity(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              opacity: _visible.value ? 1 : 0,
              child: Center(
                child: Image.asset(
                  "assets/images/logo_white.png",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundWaves extends StatelessWidget {
  const BackgroundWaves({super.key});

  static const _colors = [
    colors.primaryVariant,
    colors.primary,
  ];

  static const _durations = [
    5000,
    4000,
  ];

  static const _heightPercentages = [
    0.15,
    0.16,
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: WaveWidget(
        config: CustomConfig(
          colors: _colors,
          durations: _durations,
          heightPercentages: _heightPercentages,
        ),
        backgroundColor: colors.background,
        size: const Size(double.infinity, double.infinity),
        waveAmplitude: 0,
      ),
    );
  }
}
