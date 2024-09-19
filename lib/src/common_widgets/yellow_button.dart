import 'package:flutter/material.dart';

import '../constants/app_font_families.dart';

class YellowButton extends StatelessWidget {
  final VoidCallback onPressed; // 定義一個回調函數類型的參數
  final String text; // 定義一個字串參數來接收按鈕上的文字

  const YellowButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // 使用傳入的回調函數
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF5A623), // 按鈕顏色
        minimumSize: const Size(double.infinity, 50), // 設置按鈕寬度和高度
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6), // 按鈕圓角
        ),
      ),
      child: Text(
        text, // 使用傳入的文字
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
