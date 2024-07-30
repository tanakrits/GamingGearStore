<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html lang="th">
        <head>
            <meta charset="UTF-8" />
            <title>ข้อมูลพนักงานขาย</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f4f4f4;
                    margin: 0;
                    padding: 0;
                }
                table {
                    width: 80%;
                    margin: 20px auto;
                    border-collapse: collapse;
                }
                th, td {
                    border: 1px solid #ddd;
                    padding: 8px;
                }
                th {
                    background-color: #E100FF;
                    color: white;
                    text-align: center;
                }
                tr:nth-child(even) {
                    background-color: #f2f2f2;
                }
                tr:hover {
                    background-color: #EB72FB;
                }
                td {
                    text-align: center;
                }
                .but {
                    text-align: center;
                    margin-top: 20px;
                }
                .button {
                    display: inline-block;
                    padding: 10px 20px;
                    font-size: 16px;
                    cursor: pointer;
                    text-align: center;
                    text-decoration: none;
                    outline: none;
                    color: #fff;
                    background-color: #E100FF;
                    border: none;
                    border-radius: 15px;
                }
                .button:hover {
                    background-color: #EB72FB;
                }
                .button:active {
                    background-color: #E100FF;
                    transform: translateY(4px);
                }
            </style>
        </head>
        <body>
            <h1 style="text-align:center;">ข้อมูลพนักงานขาย</h1>
            <table>
                <tr>
                    <th>รหัสพนักงาน</th>
                    <th>ชื่อพนักงาน</th>
                    <th>ตำแหน่ง</th>
                    <th>เบอร์โทรศัพท์</th>
                    <th>อีเมล</th>
                </tr>
                <xsl:for-each select="sales_staff/staff">
                    <tr>
                        <td><xsl:value-of select="staff_id" /></td>
                        <td><xsl:value-of select="staff_name" /></td>
                        <td><xsl:value-of select="position" /></td>
                        <td><xsl:value-of select="phone_number" /></td>
                        <td><xsl:value-of select="email" /></td>
                    </tr>
                </xsl:for-each>
            </table>
            <div class="but">
                <a class="button" href="index.html">BACK</a>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
