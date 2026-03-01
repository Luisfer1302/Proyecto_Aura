# Proyecto_Aura

Este repositorio contiene la base de un cliente de escritorio JavaFX para el "Proyecto Aura". El objetivo del primer sprint es levantar una interfaz mínima con barras de navegación y paneles.

## Requisitos

- JDK 17 o superior instalado
- Gradle (el wrapper incluido puede usarse con `./gradlew`)

## Compilar y ejecutar

Este proyecto utiliza el plugin `org.openjfx.javafxplugin` para gestionar las
dependencias de JavaFX. Asegúrate de tener una versión de Gradle >= 8 y un JDK
compatible (17+).

Desde la raíz del proyecto:

```bash
./gradlew clean build
./gradlew run
```

> ⚠️ En entornos sin servidor X (contenedores, CI) la ejecución fallará con un
> `UnsupportedOperationException: Unable to open DISPLAY`. Para probar localmente,
> ejecuta el comando en una máquina con entorno gráfico o configura un servidor
> X11 (e.g. `Xvfb`).

El `run` compilará y lanzará la ventana principal con la barra de navegación y
las tres secciones básicas.

## Recursos y assets

Los iconos y demás recursos gráficos deben colocarse en:

```
src/main/resources/com/aura/assets/
```

Estos se pueden referenciar desde FXML o cargarse en tiempo de ejecución.

## Documentación del diseño

- `design/wireframes/low_fi.md` – wireframes de baja fidelidad y guía de estructuras.
- `design/wireframes/high_fi.md` – instrucciones para construir el prototipo de alta fidelidad en Figma.
- `design/wireframes/wireframe.md` – explicación extendida del layout, navegación y cómo añadir nuevas vistas.
- `design/wireframes/style-guide.md` – tokens de color, tipografía y reglas de accesibilidad.
- `design/user_stories.md` – historias de usuario iniciales para el sprint.

## Wireframe inicial

La interfaz que se carga por defecto (`main.fxml`) actúa como un wireframe de baja fidelidad.

- La carpeta `design/wireframes/wireframe.md` contiene un boceto ASCII de la distribución.
- Para modificar la disposición, importa `src/main/resources/com/aura/main.fxml` en Scene Builder (Gluon). No se han aplicado colores ni tipografías definitivas; el enfoque es validar el flujo de navegación.

Este es el primer paso para cumplir con los requisitos del sprint, manteniendo la complejidad oculta detrás de la GUI.

## Diseño Hi‑Fi y guía de estilos

El prototipo de alta fidelidad será desarrollado en Figma. Las decisiones de color y tipografía se documentan en `design/wireframes/style-guide.md`.

Recursos estáticos como iconos y SVG deben almacenarse en:

```
src/main/resources/com/aura/assets/
```

De ahí se pueden referenciar desde los FXML o cargarse dinámicamente.
