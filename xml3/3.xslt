<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<body>
			<table border="2">
				<tr bgcolor="#9acd32">
				<td style="text-align:center">Университет</td>
				<td style="text-align:center">Проходной балл</td>
				<td style="text-align:center">Набор</td>
				<td style="text-align:center">Город</td>
			</tr>
		<xsl:for-each select="faculty/specialization">
			<tr>
				<td>
          <xsl:value-of select="name"></xsl:value-of>
        </td>
				<td><xsl:value-of select="TIME"></xsl:value-of></td>
				<td><xsl:value-of select="PAGES"></xsl:value-of></td>
				<td><xsl:value-of select="PASSING"></xsl:value-of></td>
			</tr>
		</xsl:for-each>
		</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>