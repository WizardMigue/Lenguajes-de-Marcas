<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="title">
		<b><xsl:text>Título: </xsl:text></b><xsl:value-of select="."/><br/>
	</xsl:template>
	<xsl:template match="director">
		<b><xsl:text>Director: </xsl:text></b><xsl:value-of select="."/><br/>
	</xsl:template>
	<xsl:template match="producer">
		<b><xsl:text>Productor: </xsl:text></b><xsl:value-of select="concat(./name,' ',./surname)"/><br/>
	</xsl:template>
	<xsl:template match="actor">
		<li>
			<xsl:value-of select="."/><br/>
		</li>
	</xsl:template>
</xsl:stylesheet>