# Low-Fidelity Wireframe

Este documento describe la estructura visual inicial del Proyecto Aura. El objetivo es capturar
la jerarquía de la información y el flujo de navegación; los detalles de color y tipografía serán
abordados en el prototipo Hi‑Fi.

## Pantalla principal

```
+---------------------------------------------+
| Sidebar                                     |
| (Navegación)                                |
| [Inicio] [Perfil] [Ajustes]                 |
+------------------+--------------------------+
|                  |                          |
|  Contenido       |  Panel contextual        |
|  Principal       |  (detalles/acciones)     |
|                  |                          |
+------------------+--------------------------+
```

- **Barra lateral**: siempre visible, con secciones principales. Cada botón cambiará el contenido de la zona central.
- **Zona central**: área flexible que mostrará la vista actual (`Inicio`, `Perfil`, `Ajustes`, etc.).
- **Panel derecho**: opcional, contenido contextual relacionado con la sección activa (p.ej. detalles de un elemento seleccionado).

## Wireframes de secciones

1. **Inicio**
   - Dashboard simple con tarjetas de resumen (actividades, estadísticas, avisos).
   - El panel derecho muestra acciones rápidas (nueva entrada, filtros).

2. **Perfil**
   - Formulario de edición de datos del usuario con campos básicos (nombre, email, foto).
   - Área de historial o configuraciones del perfil en el panel derecho.

3. **Ajustes**
   - Lista de opciones de configuración agrupadas (general, notificaciones, privacidad).
   - El panel derecho se usa para descripciones o ayuda rápida.

```
[Inicio] -> Tarjetas | Panel derecho: acciones      
[Perfil] -> Formulario | Panel derecho: historial    
[Ajustes]-> Lista opciones | Panel derecho: ayuda    
```

## Cómo completar y validar

- **Edición FXML**: abre `src/main/resources/com/aura/main.fxml` en Scene Builder. El centro ahora contiene un `VBox` con un `Label` (título) y un `StackPane` vacío (`contentPane`).
- **Secciones**: crea nuevos archivos FXML (e.g. `home.fxml`, `profile.fxml`, `settings.fxml`) bajo la misma carpeta y agrégales controladores Java. Ya hay ejemplos en el proyecto.
- **Navegación dinámica**: `MainController.loadSection(...)` carga el FXML elegido en el `contentPane` y actualiza el título. Para añadir una sección nueva basta con:
  1. Crear `myView.fxml` y su `MyViewController`.
  2. Añadir un botón en la barra lateral con `onAction="#onNavButtonClick"` y un `fx:id` único.
  3. Extender el switch de `onNavButtonClick` para invocar `loadSection("myView.fxml", "Mi sección");`.
- **Anotaciones rápidas**: usa comentarios `<!-- TODO: ... -->` en el FXML para marcar ideas de diseño.

### Extensibilidad
El patrón adoptado permite escalar fácilmente: nuevas pantallas sólo requieren crear un FXML y su controlador; la navegación ya existe en `MainController`. Esto mantiene el sistema modular y facilita el mantenimiento.
### Exportar a papel o imagen
Imprime o exporta el esquemático desde Scene Builder como PNG para revisión con stakeholders.

> Este documento sirve como referencia para desarrolladores y diseñadores. Una vez que las páginas estén definidas, el siguiente paso será recrear estas pantallas en Figma como prototipos interactivos de alta fidelidad.
