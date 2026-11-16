import 'package:flutter/material.dart';

/// Pantalla de Biblioteca (marcador de posición). Aquí irán las notas guardadas.
class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Biblioteca')),
      body: const Center(child: Text('Pantalla de Biblioteca')),
    );
  }
}
