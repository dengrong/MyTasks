<?xml version="1.0" encoding="GB2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="processCRLF">
    <xsl:param name="text"/>
    <xsl:choose>
      <xsl:when test="contains($text, '&#10;')">
        <xsl:value-of select="substring-before($text, '&#10;')"/><br/>
        <xsl:call-template name="processCRLF">
          <xsl:with-param name="text" select="substring-after($text, '&#10;')"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
