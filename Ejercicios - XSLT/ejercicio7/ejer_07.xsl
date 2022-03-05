<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html> 
			<head>
				<title>Listado movies</title>
			</head>
			<body>
				<h1>Listado movies</h1>
				<ol>
					<xsl:for-each select="movies/movie">
						<li>
							<b><xsl:text>Título: </xsl:text></b><xsl:value-of select="title"/><br/>
							<b><xsl:text>Director: </xsl:text></b><xsl:value-of select="director"/><br/>
							<b><xsl:text>Productor: </xsl:text></b><xsl:value-of select="concat(producer[1]/name,' ',producer[1]/surname)"/><br/>
							<b><xsl:text>Actores</xsl:text></b><br/>
							<ul>
								<xsl:for-each select="actor">
									<li>
										<xsl:value-of select="."/><br/>
									</li>
								</xsl:for-each>
							</ul>
						</li>												
					</xsl:for-each>
				</ol>				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>