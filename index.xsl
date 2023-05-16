<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
<xsl:template match="/">
<html>
  <head>
      <title>AnimeWeb</title>
      <link rel="stylesheet" type="text/css" href="Style.css"/>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
  </head>
  <body>
    <div class="page-container">

      <header id="header">
        <div class="wrapper">
          <div class="content-header">
            <div class="logo-wrap"><img src="resources/logo_aw.jpg"/></div>
            <div><p>Anime<span><i>WEB</i></span></p></div>
          </div>
        </div>
      </header>
    
      <div id="main">
        <div class="wrapper">
          <div class="sidebar-wrap">
            <div class="sidebar">
              <p><a href="Index.html">INICIO</a></p>
              <p><a href="Contacto.html">CONTACTO</a></p>
            </div>
          </div>
          <div class="content-main">
            <div class="animes-wrap">
            <h1 class="animes-title"><i>ANIMES</i></h1>
            <xsl:for-each select="//anime">
              <div class="cover">
                <a href="{@url}?tipo=anime&amp;id={@id}" title="{titulo}">
                  <div class="img-container">
                    <img src="{@cover}"/>
                    <span class="year"><xsl:value-of select="año_comienzo"/></span>
                    <span class="title"><h4><xsl:value-of select="titulo"/></h4></span>
                  </div>
                </a>
              </div>
            </xsl:for-each>
            <h1 class="animes-title"><i>PELICULAS</i></h1>
            <xsl:for-each select="//pelicula">
              <div class="cover">
                <a href="{@url}?tipo=pelicula&amp;id={@id}" title="{titulo}">
                  <div class="img-container">
                    <img src="{@cover}"/>
                    <span class="year"><xsl:value-of select="año_comienzo"/></span>
                    <span class="title"><h4><xsl:value-of select="titulo"/></h4></span>
                  </div>
                </a>
              </div>
            </xsl:for-each>
            </div>
          </div>
        </div>
      </div>
    
      <footer id="footer">
        <div class="wrapper">
          <div class="content-footer">
            <p>Desarrollado y mantenido por <span>Daniel</span>, <span>Javier</span> y <span>Lucas</span></p>
            <p class="l2">Todos los derechos reservados</p>
          </div>
        </div>
      </footer>
      
    </div>
  </body>
</html>
</xsl:template>
</xsl:transform>