<?xml version="1.0" encoding="ISO-8859-1"?>
  <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="countries">
     <html>
      <table border="1">
      <xsl:for-each select="country">
      <xsl:sort order="ascending"/>
       <xsl:if test="count(language) &gt; 3">
         <tr>
            <td>
              <b><xsl:value-of select="./@name"/></b>
            </td>
            <td><xsl:value-of select="./@population"/></td>
            <td><xsl:value-of select="./@area"/></td>
            <td><xsl:value-of select="./count(language)"/></td>
          </tr>
          </xsl:if>
          </xsl:for-each>
      </table>
     </html>
    </xsl:template>
  </xsl:stylesheet>
