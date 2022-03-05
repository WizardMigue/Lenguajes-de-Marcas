<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="/">
		<html> 
			<head>
				<title>Movies</title>
			</head>
			<body>
				<h1>Lista de directores y sus películas más valoradas</h1>
				<ol>
					<xsl:for-each select="Movies/Movie[position() &lt; 6]/Director">
						<li>
							<xsl:value-of select="concat(Name/Last,', ', Name/First)"/>	
							<xsl:if test="Name/@highratedmovie != ''">
								<xsl:text>. </xsl:text>
								<xsl:value-of select="Name/@highratedmovie"/>	
							</xsl:if>
						</li>												
					</xsl:for-each>
				</ol>				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>