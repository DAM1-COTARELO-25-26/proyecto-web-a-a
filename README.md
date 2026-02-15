[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/0esC98hF)
# 🏪 Tienda Online de Ropa Deportiva

Este proyecto es una tienda online moderna dedicada a la venta de ropa y equipamiento deportivo para hombres, mujeres y niños. El objetivo principal es ofrecer una experiencia de usuario fluida y visualmente atractiva, utilizando una estética profesional basada en la paleta de colores **Luna Of Gale**.

---

### 🛠️ Tecnologías y Estética
* **HTML5**: Estructura semántica para todas las páginas del sitio.
* **CSS3**: Diseño responsivo mediante **CSS Grid** para el catálogo y Flexbox para la navegación.
* **Tipografías**: 
    * **Nitro Chargers**: Utilizada para títulos de alto impacto y secciones destacadas.
    * **Open Sans**: Utilizada para el cuerpo de texto y descripciones por su alta legibilidad.
* **Paleta de Colores (Luna Of Gale)**: Combinación de tonos azules y blancos para un entorno deportivo y limpio.

---

### 🗺️ Mapa del Sitio y Navegación

El sitio está organizado en las siguientes secciones interconectadas para facilitar la navegación:

1. **Página Principal (`index.html`)**:
    * Banner de bienvenida ("Supera Tus Límites").
    * Acceso directo a categorías principales: Running, Fitness y Outdoor.
2. **Catálogo de Productos**:
    * **Ropa (`ropa.html`)**: Selección de prendas técnicas.
    * **Zapatillas (`zapatillas.html`)**: Calzado especializado.
    * **Accesorios (`accesorios.html`)**: Equipamiento y complementos deportivos.
3. **Área de Usuario**:
    * **Login (`login.html`)**: Formulario de acceso para clientes registrados.
4. **Atención al Cliente**:
    * **Contacto (`contacto.html`)**: Formulario de consultas y horarios de apertura.

---

### 📊 Estructura de Datos XML (Fase 3)
El catálogo de productos está gestionado mediante datos estructurados para garantizar la integridad de la información técnica.

* **Ubicación de datos**: Carpeta `/datos/`.
* **Archivos incluidos**:
    * `catalogo.xml`: Contiene 30 productos organizados por categorías (Zapatillas, Ropa y Accesorios).
    * `catalogo.dtd`: Define la estructura y jerarquía de los elementos.
    * `catalogo.xsd`: Esquema avanzado con validación de tipos de datos y patrones (IDs, precios, stock).
* **Niveles del árbol XML**: `catalogo` > `categoria` > `zapatilla/ropa_deportiva/accesorio` > `especificaciones`.
* **Documentación técnica**: [Ver proceso de validación detallado](datos/validacion.md).

---

**Desarrollado por:** Alberto Rodríguez y Alex Eire (2025).
