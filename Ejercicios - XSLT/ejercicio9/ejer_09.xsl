<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:include href="more_templates.xsl"/>
	<xsl:template match="/">
		<html> 
			<head>
				<title>Listado movies</title>
			</head>
			<body>
				<h1>Listado movies</h1>
				<ol>
					<xsl:apply-templates/>
				</ol>				
			</body>
		</html>
	</xsl:template>
	<xsl:template match="movie">
		<li>
			<xsl:apply-templates select="title"/>
			<xsl:apply-templates select="director"/>
			<xsl:apply-templates select="producer[last()]"/>
			<b><xsl:text>Actores</xsl:text></b><br/>
			<ul>				
				<xsl:apply-templates select="actor"/>
			</ul>
		</li>
	</xsl:template>		
</xsl:stylesheet>