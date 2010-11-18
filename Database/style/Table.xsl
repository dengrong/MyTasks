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
          ������<xsl:value-of select="Table/Name"/><br/><br/>
          ˵����
          <xsl:call-template name="processCRLF">
            <xsl:with-param name="text" select="Table/Description"/>
          </xsl:call-template>
          <br/><br/>
          ���м�¼��<xsl:value-of select="Table/RecordCount"/>
        </p>

        <table border="0" cellpading="3" class="list">
          <tr class="listheading">
            <td width="30px">PK��</td>
            <td width="200px">����</td>
            <td width="90px">����</td>
            <td width="35px">����</td>
            <td width="35px">����</td>
            <td width="35px">С��</td>
            <td width="50px">Ĭ��ֵ</td>
            <td width="50px">NULL��</td>
            <td>˵��</td>
          </tr>

        <xsl:for-each select="Table/Columns/Column">
          <xsl:element name="tr">
            <xsl:choose>
              <xsl:when test="position() mod 2 = 1"><xsl:attribute name="class">listrow0</xsl:attribute></xsl:when>
              <xsl:otherwise><xsl:attribute name="class">listrow1</xsl:attribute></xsl:otherwise>
            </xsl:choose>
            <td align="center">
              <xsl:choose>
                <xsl:when test="PrimaryKey='True'"><img src="../style/key.gif"/></xsl:when>
                <xsl:otherwise>&#160;</xsl:otherwise>
              </xsl:choose>
            </td>
            <td align="left" title="{Name}"><xsl:value-of select="Name"/></td>
            <td align="center"><xsl:value-of select="Type"/></td>
            <td align="center">
              <xsl:choose>
                <xsl:when test="Length=''">&#160;</xsl:when>
                <xsl:otherwise><xsl:value-of select="Length"/></xsl:otherwise>
              </xsl:choose>
            </td>
            <td align="center">
              <xsl:choose>
                <xsl:when test="Precision='0'">&#160;</xsl:when>
                <xsl:otherwise><xsl:value-of select="Precision"/></xsl:otherwise>
              </xsl:choose>
            </td>
            <td align="center">
              <xsl:choose>
                <xsl:when test="Scale='0'">&#160;</xsl:when>
                <xsl:otherwise><xsl:value-of select="Scale"/></xsl:otherwise>
              </xsl:choose>
            </td>
            <td align="center">
              <xsl:choose>
                <xsl:when test="Default=''">&#160;</xsl:when>
                <xsl:otherwise><xsl:value-of select="Default"/></xsl:otherwise>
              </xsl:choose>
            </td>
            <td align="center">
              <xsl:choose>
                <xsl:when test="AllowNull='True'"><img src="../style/select.gif"/></xsl:when>
                <xsl:otherwise>&#160;</xsl:otherwise>
              </xsl:choose>
            </td>
            <td align="left" title="">
              <xsl:choose>
                <xsl:when test="Description=''">&#160;</xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="processCRLF">
                    <xsl:with-param name="text" select="Description"/>
                  </xsl:call-template>
                </xsl:otherwise>
              </xsl:choose>
            </td>
          </xsl:element>
        </xsl:for-each>

        </table>

        <p class="Title">�����</p>
        <xsl:if test="count(Table/ForeignKeys/ForeignKey) > 0">
          <xsl:for-each select="Table/ForeignKeys/ForeignKey">
            <table border="0" cellpading="3" class="list">
              <tr class="listheading">
                <td><xsl:value-of select="Name"/></td>
              </tr>
              <xsl:for-each select="Columns/Column">
                <xsl:element name="tr">
                  <xsl:choose>
                    <xsl:when test="position() mod 2 = 1"><xsl:attribute name="class">listrow0</xsl:attribute></xsl:when>
                    <xsl:otherwise><xsl:attribute name="class">listrow1</xsl:attribute></xsl:otherwise>
                  </xsl:choose>
                  <td>
                    <xsl:value-of select="KeyColumn"/>&#160;=&#160;<a href="{../../ReferencedTable}.xml"><xsl:value-of select="../../ReferencedTable"/></a>.<xsl:value-of select="ReferencedColumn"/>
                  </td>
                </xsl:element>
              </xsl:for-each>
              <xsl:if test="CascadeUpdate='True' and CascadeDelete='True'">
                <tr class="listsubtotal"><td>�������£�����ɾ��</td></tr>
              </xsl:if>
              <xsl:if test="CascadeUpdate='True' and CascadeDelete='False'">
                <tr class="listsubtotal"><td>��������</td></tr>
              </xsl:if>
              <xsl:if test="CascadeUpdate='False' and CascadeDelete='True'">
                <tr class="listsubtotal"><td>����ɾ��</td></tr>
              </xsl:if>
            </table>
            <xsl:if test="position() != last()"><div>&#160;</div></xsl:if>
          </xsl:for-each>
        </xsl:if>

        <p class="Title">Ψһ��Լ����Unique Key����</p>
        <xsl:if test="count(Table/UniqueKeys/UniqueKey) > 0">
          <xsl:for-each select="Table/UniqueKeys/UniqueKey">
            <table border="0" cellpading="3" class="list">
              <tr class="listheading">
                <td><xsl:value-of select="Name"/></td>
              </tr>
              <tr class="listrow0">
                <td>
                  <xsl:for-each select="Columns/Column">
                    <xsl:value-of select="."/><xsl:if test="position()!=last()">&#160;+&#160;</xsl:if>
                  </xsl:for-each>
                </td>
              </tr>
            </table>
            <xsl:if test="position() != last()"><div>&#160;</div></xsl:if>
          </xsl:for-each>
        </xsl:if>

        <p class="Title">Լ����</p>
        <xsl:if test="count(Table/Checks/Check) > 0">
          <xsl:for-each select="Table/Checks/Check">
            <table border="0" cellpading="3" class="list">
              <tr class="listheading">
                <td><xsl:value-of select="Name"/></td>
              </tr>
              <tr class="listrow0">
                <td><xsl:value-of select="Text"/></td>
              </tr>
              <xsl:if test="Checked='True' and ExcludeReplication='True'">
                <tr class="listsubtotal"><td>�����ã��Ը��Ʋ�ǿ��Լ��</td></tr>
              </xsl:if>
              <xsl:if test="Checked='True' and ExcludeReplication='False'">
                <tr class="listsubtotal"><td>�����ã��Ը���ǿ��Լ��</td></tr>
              </xsl:if>
              <xsl:if test="Checked='False' and ExcludeReplication='True'">
                <tr class="listsubtotal"><td>û�����ã��Ը��Ʋ�ǿ��Լ��</td></tr>
              </xsl:if>
              <xsl:if test="Checked='False' and ExcludeReplication='False'">
                <tr class="listsubtotal"><td>û�����ã��Ը���ǿ��Լ��</td></tr>
              </xsl:if>
            </table>
            <xsl:if test="position() != last()"><div>&#160;</div></xsl:if>
          </xsl:for-each>
        </xsl:if>

      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
