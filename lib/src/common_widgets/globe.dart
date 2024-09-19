import 'package:flutter/material.dart';
import 'dart:ui'; // 需要用到 ImageFilter
import 'package:flutter_svg/flutter_svg.dart';

class Globe extends StatelessWidget {
  const Globe({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
                  Color.fromARGB(90, 255, 182, 37), // 半透明的黃色，alpha 20%
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
    );
  }
}
