<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html> 
			<head>
				<style>
					.red{
						background-color: red;
					}
					.orange{
						background-color: orange;
					}
					.green{
						background-color: green;
					}
				</style>
				<title>Movies</title>
			</head>
			<body>
			  <table border="1">
				<tr>
					<th>Title</th>
					<th>Genre</th>
					<th>Year</th>
					<th>Apto para</th>
					<th>Director</th>
				</tr>
				<xsl:for-each select="Movies/Movie">
					<tr>
						<td><xsl:value-of select="Title"/></td>
						<td><xsl:value-of select="Genre"/></td>
						<td><xsl:value-of select="Year"/></td>
						<xsl:choose>
							<xsl:when test="@rating='G'">
								<td class="green">Todos los públicos</td>
							</xsl:when>
							<xsl:when test="@rating='R'">
								<td class="red">Restringido para menores de edad</td>
							</xsl:when>
							<xsl:otherwise>
								<td class="orange">Otras restricciones</td>
							</xsl:otherwise>
						</xsl:choose>
						<td><xsl:value-of select="concat(Director/Name/First,'_',Director/Name/Last)"/></td>
					</tr>
				</xsl:for-each>
			  </table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>