import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../common_widgets/globe.dart';
import '../../../../common_widgets/yellow_border_text_button.dart';
import '../../../../common_widgets/yellow_button.dart';
import '../../../../constants/app_font_families.dart';
import '../../../../constants/app_sizes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 設置線性漸變背景
        decoration: blackBGLinearGradientBoxDecoration,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              // 使用 ColorFiltered 與 BlendMode 混合背景與 SVG
              const Globe(),
              gapH64,
              // 應用名稱
              const Text(
                'Arurm',
                style: TextStyle(
                  fontSize: AppSizes.p36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: AppFontFamilies.poetsenOneRegular,
                ),
              ),
              gapH48,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: YellowButton(
                    text: 'Login',
                    onPressed: () => context.push('/welcome_login')),
              ),
              gapH12,
              // Register 按鈕
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: YellowBorderTextButton(
                  onPressed: () {
                    // 註冊按鈕的動作
                  },
                  text: 'Register',
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

Decoration blackBGLinearGradientBoxDecoration = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF29262D), // 顏色 #29262D
      Color(0xFF110F13), // 顏色 #110F13
    ],
    stops: [0.0, 1.0],
  ),
);
