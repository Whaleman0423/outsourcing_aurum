import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // 引入 flutter_svg 包

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
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF29262D), // 混合的顏色，這裡使用背景色之一
                    BlendMode.dst, // 混合模式
                  ),
                  child: SvgPicture.asset(
                    'assets/welcome/globe.svg', // 替換成您的地球圖像資源
                    height: 600,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // 應用名稱
              const Text(
                'Arurm',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              // Login 按鈕
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // 登入按鈕的動作
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5A623), // 按鈕顏色
                    minimumSize: const Size(double.infinity, 50), // 設置按鈕寬度和高度
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // 按鈕圓角
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
              const SizedBox(height: 10),
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
                      borderRadius: BorderRadius.circular(12),
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
