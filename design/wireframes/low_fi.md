# Low-Fidelity Wireframes

Los wireframes de baja fidelidad sirven para validar la distribución espacial y la jerarquía de
información sin entrar en detalles visuales. En esta fase priorizamos:

- Estructura global (sidebar, zona de contenido, panel contextual).
- Flujo de navegación entre secciones.
- Ubicación de elementos principales (tarjetas, formularios, listas).

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

## Secciones

1. **Inicio**: tarjetas resumen, accesos rápidos en panel derecho.
2. **Perfil**: formulario de usuario, historial en panel derecho.
3. **Ajustes**: lista de opciones, ayuda en panel derecho.

> Editar `src/main/resources/com/aura/main.fxml` con Scene Builder para experimentar con la
> disposición. Añade comentarios `<!-- TODO: ... -->` para anotar ideas.

Una vez validados aquí, los elementos se recrearán con estilo en el prototipo Hi‑Fi.