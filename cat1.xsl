<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
        <html>
        <head>
        <title>CAT 01</title>
        </head>

        <body>
        
        <h1 style="text-align:center;">Employee Management System</h1>
        <table align="center" border="1" >
        <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Salary</th>
        <th>Email</th>
        <th>MobNum</th>
        <th>Designation</th>
        <th>Promotion</th>
        </tr>
        <xsl:for-each select="Company/Employee">
		<xsl:sort select="ID"></xsl:sort>
		<tr>
            <td><xsl:value-of select="Emp-id"></xsl:value-of></td>
            <td><xsl:value-of select="Emp-name"></xsl:value-of></td>
            <td><xsl:value-of select="Emp-age"></xsl:value-of></td>
            <td><xsl:value-of select="Emp-salary"></xsl:value-of></td>
            <td><xsl:value-of select="Emp-emailid"></xsl:value-of></td>
            <td><xsl:value-of select="Emp-phonenum"></xsl:value-of></td>
            <td><xsl:value-of select="Emp-designation"></xsl:value-of></td>
            <!-- >=50 -->
            <xsl:if test="Emp-age &gt; 49" >
               <td>Associate Project Manager</td>
            </xsl:if>
            <!-- >=40 and <=49  -->
            <xsl:if test="Emp-age &gt; 39" >
                <xsl:if test="Emp-age &lt; 50" >
                    <td>Team Leader</td>
                </xsl:if>
            </xsl:if>
            <!-- <40 -->
            <xsl:if test="Emp-age &lt; 40" >
               <td>Developer</td>
            </xsl:if>
		</tr>
		</xsl:for-each> 
        </table>

        </body>
        </html>

    </xsl:template>
</xsl:stylesheet>