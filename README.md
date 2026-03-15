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

## 🔄 Fase 4: Transformación XSLT y Consultas XPath

En esta fase, el catálogo de productos se ha dinamizado mediante tecnologías de transformación y consulta de datos.

### 📄 Archivos Involucrados
* [cite_start]**XML**: `datos/catalogo.xml` (Contiene la fuente de datos con la hoja de estilo vinculada)[cite: 80].
* [cite_start]**XSLT**: `xslt/catalogo-to-html.xsl` (Define las reglas de transformación a HTML5)[cite: 79].
* [cite_start]**Consultas**: `datos/consultas-xpath.md` (Documentación de 10 consultas técnicas)[cite: 81].

### 🛠️ Funcionalidades XSLT Implementadas
[cite_start]Se han aplicado los siguientes elementos y técnicas avanzadas de transformación[cite: 27, 36]:
1. [cite_start]**Plantillas (`xsl:template`)**: Múltiples plantillas para organizar la estructura raíz y los artículos[cite: 28].
2. [cite_start]**Ordenación (`xsl:sort`)**: Los productos se muestran ordenados automáticamente por precio de menor a mayor[cite: 32].
3. [cite_start]**Iteración (`xsl:for-each`)**: Implementación de una sección dinámica de "Productos Destacados"[cite: 30].
4. **Lógica Condicional (`xsl:choose` / `xsl:if`)**: 
   - Gestión de stock con mensajes de "AGOTADO" o "Últimas unidades".
   - Deshabilitación automática del botón de compra si no hay existencias.
5. [cite_start]**Formato Condicional**: Resaltado visual de productos de alta gama (precio > 100€) mediante atributos dinámicos[cite: 37].
6. [cite_start]**Cálculos Estadísticos**: Uso de funciones `count()` para mostrar el total de productos en tiempo real[cite: 37].

### 🚀 Cómo visualizar la transformación
[cite_start]Para ejecutar la transformación y ver el catálogo generado, existen dos opciones[cite: 75]:
1. **Navegador**: Abrir directamente el archivo `datos/catalogo.xml` en un navegador compatible (Chrome, Edge o Firefox).
2. [cite_start]**GitHub Pages**: Acceder a la web desplegada y pulsar en el enlace **"Ver Catálogo (XSLT)"** del menú de navegación.

**Desarrollado por:** Alberto Rodríguez y Alex Eire (2025).
