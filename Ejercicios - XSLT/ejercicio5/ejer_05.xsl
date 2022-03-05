<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html> 
			<head>
				<title>Movies</title>
			</head>
			<body>
				<h1>Lista de películas</h1>
				<ul>
					<xsl:for-each select="Movies/Movie">
						<li>
							<xsl:value-of select="Title"/>
							<xsl:text> - Genre: </xsl:text>
							<xsl:choose>							
								<xsl:when test="contains(Genre,'-')">
									<xsl:value-of select="concat(substring-before(Genre,'-'),' and ',substring-after(Genre,'-'))"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="Genre"/>
								</xsl:otherwise>			
							</xsl:choose>
						</li>
												
					</xsl:for-each>
				</ul>
				<p>Total count: <xsl:value-of select="count(Movies/Movie)"/></p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>