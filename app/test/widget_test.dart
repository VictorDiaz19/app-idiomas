import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_idiomas/app.dart';
import 'package:app_idiomas/features/home/presentation/home_screen.dart';
import 'package:app_idiomas/features/library/presentation/library_screen.dart';

void main() {
  testWidgets('la app abre en la pantalla de Inicio', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: App()));
    await tester.pumpAndSettle();

    // Se busca por tipo y no por el texto "Inicio", que aparece dos veces
    // (AppBar y barra inferior).
    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.byType(LibraryScreen), findsNothing);
  });
}
