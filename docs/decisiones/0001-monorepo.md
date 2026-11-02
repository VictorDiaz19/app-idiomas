# 0001. Usar un monorepo

- **Estado:** Propuesta
- **Fecha:** 2026-10-26

## Contexto

El proyecto tiene dos partes desarrolladas por dos personas: una app en Flutter
y un backend en Spring Boot, que se comunican mediante una API. Necesitamos que
los cambios en esa API se mantengan sincronizados en ambos lados.

## Decisión

Usar un único repositorio de Git con las carpetas `app/`, `backend/`,
`contract/` y `docs/decisiones/`.

## Consecuencias

- Un cambio en el contrato y su implementación en app y backend puede ir en un
  mismo commit o pull request.
- Una sola historia, un solo lugar para issues, documentación y CHANGELOG.
- Cada parte conserva sus propias herramientas de compilación (Flutter, Gradle/Maven).
- Si en el futuro se configura CI, habrá que filtrar por carpeta para no compilar
  todo en cada cambio.
