# App Idiomas

Aplicación móvil para aprender idiomas con videos de YouTube. El usuario
pausa el video, anota una frase, una IA se la explica, y la nota queda
guardada con el momento exacto del video (`videoId` + `timestampMs`)
para volver a él después.

## Stack

| Parte    | Tecnología                         |
|----------|------------------------------------|
| App      | Flutter (Dart) — Android primero   |
| Video    | Reproductor oficial YouTube IFrame |
| Backend  | Java 21 + Spring Boot 3            |
| Contrato | OpenAPI (en `contract/`)           |

## Estructura

```
app-idiomas/
├── app/               Aplicación Flutter (frontend)
├── backend/           API REST en Spring Boot
├── contract/          Especificación de la API compartida (OpenAPI)
└── docs/
    └── decisiones/    Registro de decisiones de arquitectura (ADR)
```

Cada carpeta tiene su propio `README.md` con más detalle.

## Seguridad

Este repositorio es **público**. Nunca subas secretos (claves de API,
contraseñas, keystores, certificados).

- Los valores reales van en un archivo `.env`, que Git ignora.
- Las variables necesarias se documentan, sin valores, en `.env.example`.
- La clave de la API de IA vive **solo en el backend**, nunca en la app.

Si un secreto llega a subirse por error, considéralo comprometido y
**cámbialo** (rótalo): borrarlo no lo elimina del historial de Git.

## Equipo

| Rol      | Nombre | GitHub  |
|----------|--------|---------|
| Frontend | ______ | @______ |
| Backend  | ______ | @______ |

## Cambios

Ver [CHANGELOG.md](CHANGELOG.md).
