# Guía de estilo UI - Proyecto Aura

Este documento recoge los tokens de diseño y las reglas básicas que deben seguirse al codificar o diseñar la interfaz de usuario.

---

## Paleta de colores (Material Indigo/Esmeralda)

| Token                 | Valor HEX  | Uso sugerido                             |
|-----------------------|------------|------------------------------------------|
| `--color-primary`     | `#3f51b5`  | Barra de navegación, botones primarios   |
| `--color-primary-variant` | `#303f9f` | Hover/activo primary                    |
| `--color-secondary`   | `#009688`  | Estados alternativos, focos, acentos     |
| `--color-background`  | `#fafafa`  | Fondo general de pantallas               |
| `--color-surface`     | `#ffffff`  | Paneles, tarjetas                        |
| `--color-on-primary`  | `#ffffff`  | Texto sobre primary                      |

_Cada token se define en `src/main/resources/com/aura/ui-tokens.css` como variable CSS de raíz (prefijo `--`). `styles.css` importa ese archivo y lo utiliza. Cambiarlos allí actualizará la app completa._

### Contraste y accesibilidad
- Asegúrate de que el ratio de contraste mínimo sea **4.5:1** para texto normal.
- Para textos grandes (>18pt) mínimo 3:1.
- Usa herramientas como el plugin **Contrast** de Figma o `Accessibility Insights` durante el desarrollo.

---

## Tipografía

| Estilo      | Propiedades CSS                      |
|-------------|--------------------------------------|
| `Heading`   | 18px, bold                           |
| `Body`      | 14px, normal                         |
| `Caption`   | 12px, light                          |

Se utiliza la fuente del sistema (`System`). En JavaFX se declara en `.root`.

---

## Componentes comunes

- **Sidebar**: fondo `--color-primary`. Botones con texto blanco y estado focus con borde `--color-secondary`.
- **Botones**:
  - Primary: background `--color-primary`, text `--color-on-primary`.
  - Secondary: background `--color-secondary`, text `--color-on-primary`.
  - Disabled: 40% de opacidad.

- **Paneles** (`.content`, `.context-panel`): fondo `--color-background` o `--color-surface`, padding 16–24px.

### Espaciado
Usar módulo base de 8px:
- Margen/padding pequeño: 8px
- Medio: 16px
- Grande: 24px / 32px

---

## Accessibility (a11y)
- Todos los controles deben ser navegables con Tab y mostrar foco visible.
- Proveer etiquetas (`aria-label`) allí donde el texto no sea obvio.
- Evitar animaciones excesivas; ofrecer preferencia `prefers-reduced-motion`.

---

### Exportación de recursos
- Iconos en SVG deberían guardarse en `src/main/resources/com/aura/assets/`.
- Tokens de color y tipografía pueden exportarse a un fichero CSS (`ui-tokens.css`) y luego importarse en `styles.css`.

---

Mantener este documento sincronizado con el prototipo Figma y con la implementación de código: cualquier cambio de diseño debe reflejarse aquí y en el CSS/SCSS del proyecto.