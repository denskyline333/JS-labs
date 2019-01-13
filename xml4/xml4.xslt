<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <table border="3" >
          <tr>
            <td style="text-align:center">Имя</td>
            <td style="text-align:center">Фамилия</td>
            <td style="text-align:center">Год</td>
            <td style="text-align:center">Балл</td>
          </tr>
          <xsl:for-each select="students/choice">
            <xsl:sort order="ascending" select="number(data)"/>
            <tr>
              <td>
                <xsl:value-of select="name"/>
              </td>
              <td>
                <xsl:value-of select="surname"/>
              </td>
              <td>
                <xsl:value-of select="data"/>
              </td>
              <xsl:choose>
                <xsl:when test="ball=6">                 
                  <td bgcolor="green">
                    <xsl:value-of select="ball"/>                   
                  </td>
                </xsl:when>
                <xsl:when test="ball &lt; 6">
                  <td bgcolor="red">
                    <xsl:value-of select="ball"/>            
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="ball"/>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

