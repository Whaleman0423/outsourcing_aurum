import 'package:flutter/material.dart';

class YellowBorderTextButton extends StatelessWidget {
  final VoidCallback onPressed; // 定義回調函數類型的參數
  final String text;

  const YellowBorderTextButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed, // 使用傳入的回調函數
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFFF5A623), width: 2),
        minimumSize: const Size(double.infinity, 50), // 設置按鈕的寬度和高度
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Color(0xFFF5A623),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
