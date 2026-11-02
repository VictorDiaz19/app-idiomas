# Contrato de la API

Especificación de la API compartida entre `app/` y `backend/`.

- **Formato previsto:** OpenAPI 3 (`openapi.yaml`)

## Estado

Pendiente: aún no hay endpoints definidos.

## Reglas

- *Contract-first*: cualquier cambio en la API se hace **primero aquí** y se
  revisa entre ambos antes de implementarlo en la app o en el backend.
- Ejemplo de modelo a definir: `Nota { videoId, timestampMs, frase, explicacion }`.
