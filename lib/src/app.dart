import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './constants/app_themes.dart';
import './routing/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'TodoList Riverpod Architecture Boilerplate Demo Code',
      theme: AppThemes.primaryTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
