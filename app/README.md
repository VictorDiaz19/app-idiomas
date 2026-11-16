# App

Aplicación móvil de App Idiomas.

- **Stack:** Flutter (Dart) — Android primero
- **Responsable:** Victor

## Estado

Esqueleto listo (issue #1): navegación entre tres pantallas de marcador
(Inicio, Video y Biblioteca) y tema Material 3. Todavía no hay reproductor,
notas ni conexión con el backend.

Dependencias principales: `flutter_riverpod` (estado) y `go_router` (navegación).

### Estructura de `lib/`

```
lib/
├── main.dart          Punto de entrada: envuelve la app en ProviderScope
├── app.dart           Widget raíz: conecta tema y router
├── core/
│   ├── theme/         app_theme.dart: único archivo de colores y tema
│   └── router/        Rutas (go_router) y marco con la barra inferior
└── features/          Una carpeta por funcionalidad
    ├── home/          Inicio
    ├── video/         Reproductor (ruta /video/:videoId, sin barra inferior)
    └── library/       Biblioteca de notas
```

Para cambiar los colores de toda la app, edita `seedColor` en
`lib/core/theme/app_theme.dart`.

## Responsabilidades

- Reproducir videos con el reproductor oficial YouTube IFrame.
- Pausar, anotar una frase y mostrar la explicación de la IA.
- Volver al momento exacto del video de cada nota (`videoId` + `timestampMs`).
- Consumir la API del backend según el contrato de `../contract/`.

> Esta app **no** debe contener claves de API: todo lo que se empaqueta en el APK
> puede extraerse.

## Cómo ejecutarlo

Requisitos: Flutter (canal stable) y un emulador o dispositivo Android.
Comprueba tu instalación con `flutter doctor`.

Desde esta carpeta (`app/`):

```bash
flutter pub get      # instala las dependencias
flutter run          # ejecuta la app en el emulador o dispositivo conectado
```

Antes de abrir un PR:

```bash
flutter analyze      # análisis estático: debe decir "No issues found!"
flutter test         # tests: deben pasar todos
```
