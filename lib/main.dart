import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

import './src/app.dart';
import './src/localization/string_hardcoded.dart';

void main() async {
  // * Register error handlers. For more info, see:
  // * TODO: https://docs.flutter.dev/testing/errors
  registerErrorHandlers();

  await GetStorage.init(); // 初始化 GetStorage

  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

/// 用來處理 Flutter & 底層平台錯誤
void registerErrorHandlers() {
  // * Show some error UI if any uncaught exception happens
  // 設置 FlutterError.onError 來處理 Flutter 框架中的錯誤。
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint(details.toString());
  };
  // * Handle errors from the underlying platform/OS
  // 捕獲底層平台或操作系統的錯誤。
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint(error.toString());
    return true;
  };
  // * Show some error UI when any widget in the app fails to build
  // 自定義錯誤 Widget
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('An error occurred'.hardcoded),
      ),
      body: Center(child: Text(details.toString())),
    );
  };
}
