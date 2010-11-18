<?xml version="1.0" encoding="GB2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:include href="ProcessCRLF.xsl"/>

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../style/ContentStyle.css"/>
      </head>
      <body>
        <p class="Title">
          �洢�������ƣ�<xsl:value-of select="StoredProcedure/Name"/><br/><br/>
          �洢���̽ű���
        </p>
        <div class="Script">
          <pre>
            <xsl:call-template name="processCRLF">
              <xsl:with-param name="text" select="StoredProcedure/Script"/>
            </xsl:call-template>
          </pre>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
