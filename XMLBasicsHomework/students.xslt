<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
      <html>
        <body>
          <table bgcolor="#E0E0E0" cellspacing="1">
            <tr bgcolor="#EEEEEE">
              <td><b>Name</b></td>
              <td><b>Birth Date</b></td>
            </tr>
            <xsl:for-each select="/students/student">
              <tr bgcolor="white">
                <td><xsl:value-of select="name"></xsl:value-of></td>
                <td>
                  <xsl:value-of select="birthDate"></xsl:value-of>
                </td>
              </tr>             
            </xsl:for-each>            
          </table>
        </body>
      </html>
    </xsl:template>
</xsl:stylesheet>
