import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/auth/presentation/screens/login_screen.dart';
import '../features/auth/presentation/screens/welcome_screen.dart';
import '../features/counter/presentation/counter_screen.dart';
import './not_found_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/welcome',
    debugLogDiagnostics: true, // 啟用 debug 日誌訊息
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const CounterScreen(),
      ),
      // 在此添加更多的路由
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/welcome_login',
        builder: (context, state) => const LoginScreen(),
      ),
    ],
    errorPageBuilder: (context, state) => const NoTransitionPage(
      child: NotFoundScreen(),
    ),
  );
}
