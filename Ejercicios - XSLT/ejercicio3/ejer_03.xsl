<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html> 
			<head>
				<title>Movies</title>
			</head>
			<body>
			  <table border="1">
				<tr>
					<th>Title</th>
					<th>Genre</th>
					<th>Year</th>
				</tr>
				<xsl:for-each select="Movies/Movie">
					<xsl:sort select="Year" order="descending"/>
					<xsl:if test="Year>=1990 and Year&lt;2000">
						<tr>
							<td><xsl:value-of select="Title"/></td>
							<td><xsl:value-of select="Genre"/></td>
							<td><xsl:value-of select="Year"/></td>
						</tr>
					</xsl:if>
				</xsl:for-each>
			  </table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>