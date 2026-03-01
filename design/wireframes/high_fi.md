# High-Fidelity Prototipo

Este documento recoge los requisitos y pasos para construir el prototipo de alta fidelidad
en Figma. Se basa en los wireframes de baja fidelidad y en la guía de estilo (`style-guide.md`).

## Objetivos

1. Representar colores, tipografías y componentes finales.
2. Simular interacciones básicas (navegación, hover, foco).
3. Generar especificaciones que sirvan de referencia para el desarrollo en JavaFX/Flutter.

## Estructura del archivo Figma

- Página **Wireframe**: copiar el boceto de baja fidelidad para referencia.
- Página **Hi‑Fi**: cada pantalla principal (Inicio, Perfil, Ajustes) con sus componentes estilizados.
- Página **Components**: botón primary/secondary/disabled, tarjetas, campos de formulario, tipografía.
- Página **Assets**: iconos SVG, imágenes de ejemplo.

## Tokens de diseño

Los valores de color y tipografía ya están en `design/wireframes/style-guide.md`, pero en Figma se deben
crear como **Color Styles** y **Text Styles**. Ejemplos:

- `Primary / 500`: #3f51b5
- `Secondary / 500`: #009688
- `Body / 14px` (System)
- `Heading / 18px Bold` (System)

## Prototipado e interacciones

- Utilizar **Auto Layout** para que los componentes respondan a cambios de tamaño.
- Definir estados de botones: Default, Hover, Pressed, Focus.
- Añadir *Prototype links* entre botones de la barra lateral y las pantallas correspondientes.
- Simular el panel contextual expandible/colapsable con un overlay o componente deslizante.

## Exportaciones y entregables

- Exportar cada pantalla como PNG/JPEG para la documentación.
- Generar un enlace compartido de Figma con permisos de comentarios.
- Extraer los tokens de color en CSS con plugin `Design Tokens` y colocarlos en `src/main/resources/com/aura/ui-tokens.css`.

## Accesibilidad

- Añadir notas en Figma sobre contraste y tamaño de fuente.
- Verificar navegación por teclado mediante el plugin **Focus Order**.
- Documentar cualquier decisión especial (e.g., atajos, mensajes UI).

> Con el prototipo Hi‑Fi completado, el equipo de desarrollo podrá implementar fielmente
> las pantallas en el cliente JavaFX y planificar la futura migración a Flutter.