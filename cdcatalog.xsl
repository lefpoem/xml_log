<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> <!--match属性关联XML元素和模板,match="/"定义整个文档-->
    <html>
        <body>
            <h2>My CD Collection</h2>
            <table border="1">
                <tr>
                    <td><xsl:value-of select="Title"/></td> <!--用于提取某个选定节点的值-->
                    <td><xsl:value-of select="Artist"/></td>
                </tr>
                <xsl:for-each select="catalog/cd"> 
                <xsl:sort select="artist"/>
                <tr>    
                    <td><xsl:value-of select="title"/>></td>
                    <xsl:choose>
                        <xsl:when test="price &gt; 10">
                            <td bgcolor="#ff00ff"><xsl:value-of select="artist"/></td>
                        </xsl:when>
                        <xsl:otherwise>
                            <td><xsl:value-of select="artist"/></td>
                        </xsl:otherwise>
                    </xsl:choose>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>