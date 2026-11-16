import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/home_screen.dart';
import '../../features/library/presentation/library_screen.dart';
import '../../features/video/presentation/video_screen.dart';
import 'scaffold_with_nav_bar.dart';

/// Rutas de la app, en un solo sitio para no escribirlas a mano en cada pantalla.
abstract final class AppRoutes {
  static const home = '/';
  static const library = '/library';
  static String video(String videoId) => '/video/$videoId';
}

/// Expone el router como provider para que, más adelante, pueda leer
/// otros providers (por ejemplo, redirigir si no hay sesión).
final routerProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      // Pestañas con barra inferior. Cada rama conserva su propio historial.
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            ScaffoldWithNavBar(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.home,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.library,
                builder: (context, state) => const LibraryScreen(),
              ),
            ],
          ),
        ],
      ),
      // Video va fuera del shell: pantalla completa, sin barra inferior.
      GoRoute(
        path: '/video/:videoId',
        builder: (context, state) =>
            VideoScreen(videoId: state.pathParameters['videoId']!),
      ),
    ],
  );
  ref.onDispose(router.dispose);
  return router;
});
