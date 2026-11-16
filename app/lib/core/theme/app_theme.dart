import 'package:flutter/material.dart';

/// Único lugar donde se definen los colores y el tema de la app.
///
/// Para cambiar el diseño, edita [seedColor]: Material 3 genera a partir de él
/// la paleta completa (primary, secondary, surface…) en modo claro y oscuro.
/// Las pantallas nunca usan colores fijos; leen `Theme.of(context).colorScheme`.
abstract final class AppTheme {
  static const Color seedColor = Color(0xFF3F51B5);

  static ThemeData light() => _build(Brightness.light);

  static ThemeData dark() => _build(Brightness.dark);

  static ThemeData _build(Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    );
    return ThemeData(colorScheme: colorScheme);
  }
}
