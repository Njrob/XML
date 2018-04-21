<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="Course_Catalog">
          <xsl:for-each select="//Course">
            <xsl:if test="contains(./@Number, 'EE')">
              <Course Number="{@Number}" Title="{Title}">
                <xsl:copy-of select="Description"/>
                <xsl:for-each select="Instructors/Professor/Last_Name">
                  <Instructor>
                    <xsl:value-of select="."/>
                  </Instructor>
                </xsl:for-each>
              </Course>
            </xsl:if>
          </xsl:for-each>
        </xsl:template>
    </xsl:stylesheet>
