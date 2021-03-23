<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <body>
      <xsl:for-each select="receptes/recepta">
       <div class="title">
        <p class="titlecat">Categoria: <xsl:value-of select="categoria"/>
        </p>
        <p class="titlenom"><xsl:value-of select="nom"/></p>
       </div>
      </xsl:for-each>
      <xsl:for-each select="receptes/recepta/informacio_general">
       <div class="cubo">
         <p class="textcubo"><img class="imagen"><xsl:attribute name="src"><xsl:value-of select="foto"/> </xsl:attribute></img></p>
          <dl class="textcubo">
          <dt class="principal">Informació</dt>
          <dd><a class="principal">Comensals: </a> <xsl:value-of select="comensals"/><br /><a class="principal">Temps: </a> <xsl:value-of select="temps"/>  <xsl:value-of select="temps/@unitat"/><br /><a class="principal">Dificultat: </a>  <xsl:value-of select="dificultat"/></dd>
          </dl>

          <dl class="textcubo">
          <dt class="principal">Que necessitem</dt>
          <dd><xsl:copy-of select="//ingredient[1]"/></dd>
          <dd><xsl:copy-of select="//ingredient[2]"/></dd>
          <dd><xsl:copy-of select="//ingredient[3]"/></dd>
          <dd><xsl:copy-of select="//ingredient[4]"/></dd>
          <dd><xsl:copy-of select="//ingredient[5]"/></dd>
          <dd><xsl:copy-of select="//ingredient[6]"/></dd>
          <dd><xsl:copy-of select="//ingredient[7]"/></dd>
          <dd><xsl:copy-of select="//ingredient[8]"/></dd>
          <dd><xsl:copy-of select="//ingredient[9]"/></dd>
          </dl>

      </div>
      </xsl:for-each>

      <xsl:for-each select="receptes/recepta/preparacio">
      <xsl:sort select="pas"/>
       <div class="cubo">
          <ol class="textcubobig">
          <a class="principal">Com ho preparem</a>
          <li><xsl:value-of select="pas[1]"/></li>
          <li><xsl:value-of select="pas[2]"/></li>
          <li><xsl:value-of select="pas[3]"/></li>
          <li><xsl:value-of select="pas[4]"/></li>
          <li><xsl:value-of select="pas[5]"/></li>
          <li><xsl:value-of select="pas[6]"/></li>
          <li><xsl:value-of select="pas[7]"/></li>
          <li><xsl:value-of select="pas[8]"/></li>
          </ol>
       </div>
      </xsl:for-each>

    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
