import 'dart:ui';

import 'package:aurum_app/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart'; // 引入 flutter_svg 包

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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF29262D), // 顏色 #29262D
              Color(0xFF110F13), // 顏色 #110F13
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              // 使用 ColorFiltered 與 BlendMode 混合背景與 SVG
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // 添加黃色橢圓的透明層
                    Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle, // 設置形狀為圓形
                        gradient: RadialGradient(
                          center: Alignment(0.1, -0.5), // 橢圓中心的位置
                          radius: 0.8, // 橢圓半徑
                          colors: [
                            Color(0x00FFFFFF), // 完全透明的白色
                            Color.fromARGB(
                                90, 255, 182, 37), // 半透明的黃色，alpha 20%
                          ],
                          stops: [0.0, 1.0], // 從完全透明過渡到半透明黃色
                        ),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 100),
                      child: Container(color: Colors.transparent),
                    ),
                    SvgPicture.asset(
                      'assets/welcome/global.svg', // 替換成您的地球圖像資源
                      height: 300,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 62),
              // 應用名稱
              const Text(
                'Arurm',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // const Spacer(),
              const SizedBox(height: 45),
              // Login 按鈕
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // 登入按鈕的動作
                    context.push('/welcome_login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5A623), // 按鈕顏色
                    minimumSize: const Size(double.infinity, 50), // 設置按鈕寬度和高度
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), // 按鈕圓角
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Register 按鈕
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: OutlinedButton(
                  onPressed: () {
                    // 註冊按鈕的動作
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFFF5A623), width: 2),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFF5A623),
                    ),
                  ),
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
