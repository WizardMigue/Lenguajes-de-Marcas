<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8" />
	<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
	<xsl:variable name="separador" select="';'" />
	<xsl:variable name="linea_nueva" select="'&#xa;'" />
	<xsl:template match="/">	
		<xsl:text>COD_MUEBLE</xsl:text>
		<xsl:value-of select="$separador" />
		<xsl:text>NOMBRE</xsl:text>
		<xsl:value-of select="$separador" />
		<xsl:text>CLASIFICACION</xsl:text>
		<xsl:value-of select="$separador" />
		<xsl:text>PRECIO</xsl:text>
		<xsl:value-of select="$separador" />
		<xsl:text>REFERENCIA</xsl:text>
		<xsl:value-of select="$linea_nueva" />
		<xsl:for-each select="muebles/mueble">			
			<xsl:call-template name="cod_mueble_template">
				<xsl:with-param name="codigo" select="@cod" />
			</xsl:call-template>
			<xsl:call-template name="nombre_template">
				<xsl:with-param name="nombre_param" select="tipo" />
			</xsl:call-template>
			<xsl:call-template name="clasif_template">
				<xsl:with-param name="clasif" select="@cod" />
			</xsl:call-template>
			<xsl:call-template name="precio_template">
				<xsl:with-param name="precio_param" select="precio" />
			</xsl:call-template>
			<xsl:call-template name="ref_template">
				<xsl:with-param name="ref_cod" select="substring(@cod,1,2)" />
				<xsl:with-param name="ref_tipo" select="substring(tipo,4,3)" />
			</xsl:call-template>
		</xsl:for-each>		
	</xsl:template>
	<xsl:template name="cod_mueble_template">
		<xsl:param name="codigo" />
		<xsl:value-of select="$codigo" />
		<xsl:value-of select="$separador" />	
	</xsl:template>
	<xsl:template name="nombre_template">
		<xsl:param name="nombre_param" />
		<xsl:value-of select="$nombre_param" />
		<xsl:value-of select="$separador" />	
	</xsl:template>
	<xsl:template name="clasif_template">
		<xsl:param name="clasif" />
		<xsl:choose>
			<xsl:when test="starts-with($clasif,'MC')">
				<xsl:text>Mueble de cocina</xsl:text>
				<xsl:value-of select="$separador" />
			</xsl:when>
			<xsl:when test="starts-with($clasif,'MB')">
				<xsl:text>Mueble de baño</xsl:text>
				<xsl:value-of select="$separador" />
			</xsl:when>
			<xsl:when test="starts-with($clasif,'MS')">
				<xsl:text>Mueble de salón</xsl:text>
				<xsl:value-of select="$separador" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>Sin clasificar</xsl:text>
				<xsl:value-of select="$separador" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="precio_template">
		<xsl:param name="precio_param" />
		<xsl:value-of select="format-number($precio_param, '#.###,##','european')"/>
		<xsl:value-of select="$separador" />	
	</xsl:template>
	<xsl:template name="ref_template">
		<xsl:param name="ref_cod" />
		<xsl:param name="ref_tipo" />
		<xsl:value-of select="concat($ref_cod,'-',$ref_tipo)"/>
		<xsl:value-of select="$linea_nueva" />	
	</xsl:template>
</xsl:stylesheet>