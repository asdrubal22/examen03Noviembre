<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/examen">
        <html>
            <head>
                <!-- CSS only -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
            </head>
            <body>
                <div class="container-fluid">
                    <ul>
                        <xsl:for-each select="libro">
                            <xsl:sort select="titulo"/>
                            <xsl:if test="titulo = 'El mohan'">
                                <li style="color:red"><xsl:value-of select="titulo"/></li>
                            </xsl:if>

                        </xsl:for-each>
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>