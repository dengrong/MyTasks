<?xml version="1.0" encoding="GB2312"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" type="text/css" href="../style/CatalogStyle.css"/>
      </head>
      <body>
        <p><strong>Tables</strong></p>
        <table border="0" width="100%">
        <xsl:for-each select="Database/Tables/Table">
          <tr>
            <td width="100%">
              <a href="{.}.xml" target="mainFrame">
                <xsl:value-of select="."/>
              </a>
            </td>
          </tr>
        </xsl:for-each>
        </table>

        <p><strong>Triggers</strong></p>
        <table border="0" width="100%">
        <xsl:for-each select="Database/Triggers/Trigger">
          <tr>
            <td width="100%">
              <a href="{.}.xml" target="mainFrame">
                <xsl:value-of select="."/>
              </a>
            </td>
          </tr>
        </xsl:for-each>
        </table>

        <p><strong>Views</strong></p>
        <table border="0" width="100%">
        <xsl:for-each select="Database/Views/View">
          <tr>
            <td width="100%">
              <a href="{.}.xml" target="mainFrame">
                <xsl:value-of select="."/>
              </a>
            </td>
          </tr>
        </xsl:for-each>
        </table>

        <p><strong>StoredProcedures</strong></p>
        <table border="0" width="100%">
        <xsl:for-each select="Database/StoredProcedures/StoredProcedure">
          <tr>
            <td width="100%">
              <a href="{.}.xml" target="mainFrame">
                <xsl:value-of select="."/>
              </a>
            </td>
          </tr>
        </xsl:for-each>
        </table>

        <p><strong>UserDefinedFunctions</strong></p>
        <table border="0" width="100%">
        <xsl:for-each select="Database/UserDefinedFunctions/UserDefinedFunction">
          <tr>
            <td width="100%">
              <a href="{.}.xml" target="mainFrame">
                <xsl:value-of select="."/>
              </a>
            </td>
          </tr>
        </xsl:for-each>
        </table>

      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
