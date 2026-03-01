# Historias de Usuario

Las siguientes historias de usuario describen las funcionalidades iniciales del primer sprint. Cada historia puede descomponerse en tareas de desarrollo y pruebas.

1. **Como usuario** quiero **ver una pantalla de inicio con un resumen de mi actividad**,
   de modo que pueda conocer rápidamente mi estado general.
   - Criterios de aceptación: tarjetas con estadísticas o notificaciones, panel derecho con accesos rápidos.

2. **Como usuario** quiero **navegar entre secciones (Inicio, Perfil, Ajustes) usando la barra lateral**,
   para poder cambiar de contexto sin perderme.
   - Criterios de aceptación: botón de la barra cambia el contenido central y actualiza el título.

3. **Como usuario** quiero **editar mi perfil (nombre, correo, foto)**
   para mantener mi información actualizada.
   - Criterios de aceptación: formulario de edición, validación básica de campos, guardado local (simulado).

4. **Como usuario** quiero **consultar y modificar opciones de la aplicación** (notificaciones, temas),
   para personalizar mi experiencia.
   - Criterios de aceptación: lista de ajustes con interruptores/combobox, descripción en panel derecho.

5. **Como usuario con discapacidad visual** necesito **alta legibilidad y navegación por teclado**,
   para poder usar la aplicación sin ayuda de un ratón.
   - Criterios de aceptación: contraste 4.5:1, foco visible en todos los controles, tabulación completa.

6. **Como usuario** quiero **ver mensajes de ayuda en el panel contextual** relacionados con la sección activa,
   para comprender mejor las funciones disponibles.
   - Criterios de aceptación: texto descriptivo en panel derecho que cambia con la sección.

7. **Como administrador del sistema** me gustaría **cargar nuevos módulos o páginas desde el panel de ajustes**
   (anticipando escalabilidad), para permitir conformar el producto sin recompilar.
   - Criterios de aceptación: listado dinámico de módulos (puede ser mock), botón "recargar".

> Estas historias pueden añadirse a un tablero de Scrum/Kanban y priorizarse para el sprint actual. Cada historia será usada
> tanto por el equipo de desarrollo como por el de diseño para validar el flujo de interacción.