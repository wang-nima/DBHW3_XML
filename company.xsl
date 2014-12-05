<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy® -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Employee Information</h2>
    <table>
      <xsl:for-each select="/company/department/division/employee">
      <tr>
        <td>Employee <xsl:value-of select="empName"/> works from <xsl:value-of select="../../@deptAddr"/> office. <xsl:value-of select="empName"/> works for XXX division(s), which are XXX. XXX manages XXX division(s), which are XXX. <xsl:value-of select="empName"/> works for the most time with the XXX division.</td>
      </tr>
      </xsl:for-each>
    </table>
  <h2>Department Information</h2>
    <table border="1">
      <xsl:for-each select="/company/department">
      <tr>
        <td><xsl:value-of select="empName"/></td>
        <td><xsl:value-of select="empPhone"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>