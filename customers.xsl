<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html lang="th">
        <head>
            <meta charset="UTF-8" />
            <title>ข้อมูลลูกค้า</title>
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
                    background-color: #FF3434;
                    color: white;
                    text-align: center;
                }
                tr:nth-child(even) {
                    background-color: #f2f2f2;
                }
                tr:hover {
                    background-color: #FF7575;
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
                    background-color: #FF3434;
                    border: none;
                    border-radius: 15px;
                }
                .button:hover {
                    background-color: #FF7575;
                }
                .button:active {
                    background-color: #FF3434;
                    transform: translateY(4px);
                }
            </style>
        </head>
        <body>
            <h1 style="text-align:center;">ข้อมูลลูกค้า</h1>
            <table>
                <tr>
                    <th>รหัสลูกค้า</th>
                    <th>ชื่อลูกค้า</th>
                    <th>ที่อยู่</th>
                    <th>เบอร์โทรศัพท์</th>
                    <th>อีเมล</th>
                </tr>
                <xsl:for-each select="customers/customer">
                    <tr>
                        <td><xsl:value-of select="customer_id" /></td>
                        <td><xsl:value-of select="customer_name" /></td>
                        <td><xsl:value-of select="address" /></td>
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
