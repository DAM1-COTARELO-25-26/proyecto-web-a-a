# Consultas XPath - Catálogo de Ropa Deportiva

Este documento contiene 10 consultas XPath realizadas sobre el archivo `catalogo.xml`, cumpliendo con los requisitos de la Fase 4.

## 1. Rutas (Absolutas y Relativas)
* **Consulta:** `/catalogo/categoria/@nombre`
    * **Descripción:** Selecciona los nombres de todas las categorías mediante ruta absoluta.
    * **Resultado esperado:** "Zapatillas", "Ropa", "Accesorios".
* **Consulta:** `//zapatilla/nombre`
    * **Descripción:** Selecciona el nombre de todos los nodos zapatilla sin importar su posición.
    * **Resultado esperado:** "Zapatilla Running Turbo", "Zapatilla Trail Explorer", etc.

## 2. Predicados
* **Consulta:** `//*[@destacado='true']/nombre`
    * **Descripción:** Selecciona el nombre de todos los productos marcados como destacados.
    * **Resultado esperado:** "Zapatilla Running Turbo", "Camiseta Compresión", etc.
* **Consulta:** `//zapatilla[precio > 100]/nombre`
    * **Descripción:** Selecciona el nombre de las zapatillas cuyo precio es superior a 100€.
    * **Resultado esperado:** "Zapatilla Trail Explorer", "Zapatilla Sprint Pro", "Zapatilla Power Lift".

## 3. Funciones
* **Consulta:** `count(//ropa_deportiva)`
    * **Descripción:** Cuenta el número total de productos en la categoría de ropa.
    * **Resultado esperado:** 10.
* **Consulta:** `sum(//accesorio/precio)`
    * **Descripción:** Calcula la suma total de los precios de todos los accesorios.
    * **Resultado esperado:** Valor numérico total de la categoría.
* **Consulta:** `//nombre[contains(text(), 'Running')]`
    * **Descripción:** Selecciona los nodos nombre que contienen la palabra "Running".
    * **Resultado esperado:** "Zapatilla Running Turbo", "Pantalón Corto Running".

## 4. Navegación por ejes
* **Consulta:** `//zapatilla[@id='ZAP-001']/following-sibling::zapatilla[1]/nombre`
    * **Descripción:** Selecciona el nombre del hermano siguiente (el siguiente producto) de la zapatilla con ID ZAP-001.
    * **Resultado esperado:** "Zapatilla Trail Explorer".

## 5. Consultas Complejas
* **Consulta:** `//zapatilla[stock > 10 and precio < 90]/nombre`
    * **Descripción:** Selecciona zapatillas con stock mayor a 10 y precio menor a 90€.
    * **Resultado esperado:** "Zapatilla Running Turbo", "Zapatilla Indoor Court", etc.
* **Consulta:** `//categoria[@nombre='Accesorios']/accesorio[especificaciones/material='Látex natural']/nombre`
    * **Descripción:** Selecciona el nombre de los accesorios de la categoría Accesorios hechos de "Látex natural".
    * **Resultado esperado:** "Banda Elástica Resistencia".