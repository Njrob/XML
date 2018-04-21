<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="country">
          <xsl:if test="contains(./@name, 'stan')">
            <Stan><xsl:value-of select="./@name"/></Stan>
          </xsl:if>
        </xsl:template>
    </xsl:stylesheet>
