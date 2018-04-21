<?xml version="1.0" encoding="ISO-8859-1"?>
  <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="Course_Catalog">
      <table border="1">
      <xsl:for-each select="//Course[@Enrollment &gt; 200]">
        <xsl:sort select="./Title"/>
          <xsl:if test="contains(./@Number, 'CS')">
          <tr>
            <td>
              <i><xsl:value-of select="./@Number"/></i>
            </td>
            <td>
              <b><xsl:value-of select="./Title"/></b>
            </td>
            <td>
              <xsl:value-of select="./@Enrollment"/>
            </td>
          </tr>
          </xsl:if>
      </xsl:for-each>
      </table>
    </xsl:template>
  </xsl:stylesheet>
