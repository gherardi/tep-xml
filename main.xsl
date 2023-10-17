<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Document</title>
        <script src="https://cdn.tailwindcss.com"></script>
      </head>
      
      <body class="h-screen bg-gray-100 text-slate-800">
        <div class="py-16">
          <div class="grid md:grid-cols-2 xl:grid-cols-3 gap-y-10 gap-x-5 w-4/5 mx-auto">
            
            <xsl:for-each select="rows/row">

              <div class="bg-white rounded-lg shadow py-8 px-8 hover:shadow-lg transition cursor-pointer">
                <h1 class="uppercase text-lg font-bold mb-4">
                  <xsl:value-of select="denominazione"/>
                </h1>
                <p><span class="mr-1">🏨</span>
                  <xsl:value-of select="tipologia"/>
                </p>
                <p class="lowercase"><span class="mr-1">📌</span>
                  <xsl:value-of select="indirizzo"/>
                </p>
                <p><span class="mr-1">🛏️</span>Camere singole: <xsl:value-of select="singole"/></p>
                <p><span class="mr-1">🛏️</span>Camere doppie: <xsl:value-of select="doppie"/></p>
                <p><span class="mr-1">🛏️</span>Camere triple: <xsl:value-of select="triple"/></p>
                <p><span class="mr-1">🛏️</span>Camere quadruple: <xsl:value-of select="quadruple"/></p>
                <p><span class="mr-1">🛏️</span>Camere quintuple: <xsl:value-of select="quintuple"/></p>
                <p><span class="mr-1">🛏️</span>Camere sestuple: <xsl:value-of select="sestuple"/></p>
                <p><span class="mr-1">🛏️</span>Totale camere: <xsl:value-of select="totale_camere"/></p>
                <p class="mb-4"><span class="mr-1">🛌</span>Posti letto: <xsl:value-of select="posti_letto"/></p>
                
                <p class="border-t-4 border-gray-50 pt-4 font-medium">Valutazione: 
                  <xsl:choose>
                    <xsl:when test="classificazione='1 Stella'">
                      ⭐
                    </xsl:when>
                    <xsl:when test="classificazione='2 Stelle'">
                      ⭐⭐
                    </xsl:when>
                    <xsl:when test="classificazione='3 Stelle'">
                      ⭐⭐⭐
                    </xsl:when>
                    <xsl:when test="classificazione='4 Stelle'">
                      ⭐⭐⭐⭐
                    </xsl:when>
                    <xsl:when test="classificazione='5 Stelle'">
                      ⭐⭐⭐⭐⭐
                    </xsl:when>
                    <xsl:otherwise>
                      ⭐-⭐-⭐
                    </xsl:otherwise>
                  </xsl:choose>
                </p>
              </div>

            </xsl:for-each>

          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>