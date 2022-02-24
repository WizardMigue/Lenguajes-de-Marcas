<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html> 
            <head>
                <title>Movies</title>
            </head>
            <body>
                <h1>Lista de películas</h1>
                <ol>
                    <li></li>
                </ol>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Movie" >
        
    </xsl:template>
    <xsl:template match="Title" >
        
    </xsl:template>
    <xsl:template match="Genre" >
        <xsl:text> - Genre: </xsl:text>
    </xsl:template>
</xsl:stylesheet>