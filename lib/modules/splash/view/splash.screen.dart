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

  @override
  void initState() {
    // Animate logo
    _animationTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _visible.value = !_visible.value;
    });

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
              child: const Center(
                child: Text(
                  'LOGO',
                  style: TextStyle(fontSize: 64),
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
