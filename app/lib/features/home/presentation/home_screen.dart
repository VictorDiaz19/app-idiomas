import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_router.dart';

/// Pantalla de Inicio (marcador de posición).
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Pantalla de Inicio'),
            const SizedBox(height: 16),
            // Botón temporal para probar la ruta de Video.
            FilledButton(
              onPressed: () => context.push(AppRoutes.video('demo')),
              child: const Text('Abrir video de ejemplo'),
            ),
          ],
        ),
      ),
    );
  }
}
