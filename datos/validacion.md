# Validación del archivo catalogo.xml

## 1. Herramientas utilizadas
### Validación DTD y XSD
* **Herramienta**: [xmlvalidation.com](https://www.xmlvalidation.com/)
* **Versión**: Servicio web online (Febrero 2026).

## 2. Proceso de validación

### Validación contra DTD
**Pasos ejecutados:**
1. Se añadió la declaración de tipo de documento `<!DOCTYPE catalogo SYSTEM "catalogo.dtd">` al inicio del archivo XML para vincularlo con el validador externo.
2. Se subieron simultáneamente los archivos `catalogo.xml` y `catalogo.dtd` a la plataforma XMLValidation.
3. Se activó la casilla de verificación para validar contra un DTD externo.
4. La herramienta confirmó que el documento es válido y que todos los elementos y atributos están correctamente declarados.

**Captura de pantalla:**
`![Validación DTD](../images/validacion-dtd.png)`

### Validación contra XSD
**Pasos ejecutados:**
1. Se vinculó el esquema XML mediante los atributos `xmlns:xsi` y `xsi:noNamespaceSchemaLocation="catalogo.xsd"` en la etiqueta raíz.
2. Se cargó el archivo XML junto con el archivo `catalogo.xsd` en la herramienta web.
3. Se verificó que los datos cumplieran con las restricciones de tipo (fechas, decimales y enteros positivos) y los patrones definidos.

**Captura de pantalla:**
`![Validación XSD](../images/validacion-xsd.png)`

## 3. Decisiones de diseño
* **¿Por qué usar elementos vs atributos?**
    * **Atributos**: Se han utilizado para los identificadores únicos (`id`) y estados lógicos (`disponible`, `destacado`) ya que son metadatos simples que no requieren estructura interna.
    * **Elementos**: Se han utilizado para datos como `nombre`, `precio` y `descripcion` porque representan el contenido principal del producto y permiten una mejor legibilidad y futura expansión.
* **Jerarquía**: Se ha implementado una estructura de 4 niveles de profundidad (`catalogo` > `categoria` > `zapatilla/ropa_deportiva/accesorio` > `especificaciones`) para organizar de forma lógica y escalable el catálogo de la tienda.

## 4. Restricciones XSD aplicadas
1. **Patrón de ID (xs:pattern)**: Se ha definido una expresión regular para obligar a que los IDs tengan el formato de tres letras mayúsculas, un guion y tres números (ej: ZAP-001).
2. **Rango Numérico (xs:minInclusive)**: Se aplica al precio y al stock para garantizar que no existan valores negativos en el sistema.
3. **Dígitos de Fracción (xs:fractionDigits)**: Se ha limitado el precio a 2 decimales para asegurar la coherencia con el formato de moneda euro.
4. **Tipos de Datos Específicos**: Se han utilizado `xs:date` para las fechas de registro y `xs:nonNegativeInteger` para el control de inventario.

## 5. Conclusiones
Durante el proceso de validación, se detectó que Visual Studio Code mostraba avisos al intentar usar DTD y XSD simultáneamente. Por ello, se documenta que la validación final se realizó de manera exitosa mediante herramientas externas, asegurando que el archivo `catalogo.xml` cumple con todos los requisitos de estructura y contenido definidos en esta fase.
