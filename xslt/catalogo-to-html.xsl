<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <title>Catálogo Dinámico - Tienda de Ropa Deportiva</title>
            <link rel="stylesheet" type="text/css" href="css/style.css"/>
        </head>
        <body>
            <header>
                <h1>Tienda de Ropa Deportiva</h1>
                <div class="header-buttons">
                    <a href="index.html" class="header-button">Inicio</a>
                    <a href="contacto.html" class="header-button">Contacto</a>
                </div>
            </header>

            <nav>
                <a href="index.html">Inicio</a>
                <a href="ropa.html">Ropa</a>
                <a href="zapatillas.html">Zapatillas</a>
                <a href="accesorios.html">Accesorios</a>
            </nav>

            <main class="contenedor-productos">
                <h2>Catálogo Completo de Productos</h2>
                <div class="productos-grid">
                    <xsl:apply-templates select="catalogo/categoria/*"/>
                </div>
            </main>

            <footer>
                <p>© 2025 Tienda de Ropa Deportiva</p>
                <p>Generado mediante transformación XSLT</p>
            </footer>
        </body>
        </html>
    </xsl:template>
    
    <xsl:template match="zapatilla | ropa_deportiva | accesorio">
        <div class="producto-card">
            <div class="producto-img">
                <img style="width:100%; height:100%; object-fit:cover;">
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('images/', local-name(), '.jpg')"/>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="nombre"/>
                    </xsl:attribute>
                </img>
            </div>

            <h3><xsl:value-of select="nombre"/></h3>
            
            <p class="precio">
                <xsl:value-of select="precio"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="precio/@moneda"/>
            </p>

            <p class="descripcion"><xsl:value-of select="descripcion"/></p>
            
            <p><small>Material: <xsl:value-of select="especificaciones/material"/></small></p>

            <button class="cta-button">Añadir al carrito</button>
        </div>
    </xsl:template>




    

</xsl:stylesheet>
