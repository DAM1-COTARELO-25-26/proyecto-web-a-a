<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <title>Catálogo Dinámico - Tienda de Ropa Deportiva</title>
            <link rel="stylesheet" type="text/css" href="../css/style.css"/>
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
                <a href="../index.html">Inicio</a>
                <a href="../ropa.html">Ropa</a>
                <a href="../zapatillas.html">Zapatillas</a>
                <a href="../accesorios.html">Accesorios</a>
            </nav>

           <main class="contenedor-productos">
    <h2>Catálogo Completo de Productos</h2>

    <div class="productos-grid">
        <xsl:apply-templates select="catalogo/categoria/*">
            <xsl:sort select="precio" data-type="number" order="ascending"/>
        </xsl:apply-templates>
    </div>


    <section class="destacados" style="margin-bottom: 40px; padding: 20px; border: 1px dashed #1D3A6D;">
        <h3> Productos Destacados</h3>
        <ul style="list-style: none; display: flex; gap: 20px; justify-content: center; padding: 0;">
            <xsl:for-each select="catalogo/categoria/*[@destacado='true']">
                <li style="background: #D6E4F5; padding: 10px; border-radius: 5px;">
                    <strong><xsl:value-of select="nombre"/></strong> - 
                    <span><xsl:value-of select="precio"/>€</span>
                </li>
            </xsl:for-each>
        </ul>
    </section>

    <div style="text-align:center; margin-bottom: 20px; background: #F2F2F2; padding: 10px; border-radius: 8px;">
        <p><strong>Resumen del Inventario:</strong></p>
        <span>Total de artículos: <xsl:value-of select="count(//zapatilla | //ropa_deportiva | //accesorio)"/></span>
    </div>

    <div class="productos-grid">
        <xsl:apply-templates select="catalogo/categoria/*">
            <xsl:sort select="precio" data-type="number" order="ascending"/>
        </xsl:apply-templates>
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
            <xsl:if test="precio > 100">
                <xsl:attribute name="style">border: 2px solid #4AA0C4; transform: scale(1.02);</xsl:attribute>
            </xsl:if>

            <div class="producto-img">
                <img style="width:100%; height:100%; object-fit:cover;">
                    <xsl:attribute name="src">
                        <xsl:value-of select="concat('../images/', local-name(), '.jpg')"/>
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

            <xsl:choose>
                <xsl:when test="stock = 0">
                    <p style="color: red; font-weight: bold;">AGOTADO</p>
                </xsl:when>
                <xsl:when test="stock &lt; 5">
                    <p style="color: orange; font-weight: bold;">¡Últimas <xsl:value-of select="stock"/> unidades!</p>
                </xsl:when>
                <xsl:otherwise>
                    <p style="color: green;">Stock disponible: <xsl:value-of select="stock"/></p>
                </xsl:otherwise>
            </xsl:choose>

            <p class="descripcion"><xsl:value-of select="descripcion"/></p>
            
            <p><small>Material: <xsl:value-of select="especificaciones/material"/></small></p>

            <button class="cta-button">
                <xsl:if test="stock = 0">
                    <xsl:attribute name="disabled">disabled</xsl:attribute>
                    <xsl:attribute name="style">background-color: #ccc; cursor: not-allowed;</xsl:attribute>
                </xsl:if>
                Añadir al carrito
            </button>
        </div>
    </xsl:template>

</xsl:stylesheet>
