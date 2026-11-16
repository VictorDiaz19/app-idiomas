import 'package:flutter/material.dart';

/// Pantalla de Video (marcador de posición). Aquí irá el reproductor de YouTube.
class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key, required this.videoId});

  final String videoId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Video')),
      body: Center(child: Text('Video: $videoId')),
    );
  }
}
