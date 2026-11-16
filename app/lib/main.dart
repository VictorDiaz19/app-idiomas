import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

void main() {
  // ProviderScope guarda el estado de todos los providers de Riverpod.
  runApp(const ProviderScope(child: App()));
}
