<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html lang="th">
        <head>
            <meta charset="UTF-8" />
            <title>ข้อมูลการขาย</title>
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
                    background-color: #E5E800;
                    color: white;
                    text-align: center;
                }
                tr:nth-child(even) {
                    background-color: #f2f2f2;
                }
                tr:hover {
                    background-color: #FDFF7F;
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
                    background-color: #E5E800;
                    border: none;
                    border-radius: 15px;
                }
                .button:hover {
                    background-color: #FDFF7F;
                }
                .button:active {
                    background-color: #E5E800;
                    transform: translateY(4px);
                }
            </style>
        </head>
        <body>
            <h1 style="text-align:center;">ข้อมูลการขาย</h1>
            <table>
                <tr>
                    <th>รหัสการขาย</th>
                    <th>รหัสสินค้า</th>
                    <th>วันที่ขาย</th>
                    <th>จำนวนที่ขาย</th>
                    <th>ราคารวม (บาท)</th>
                </tr>
                <xsl:for-each select="sales/sale">
                    <tr>
                        <td><xsl:value-of select="sale_id" /></td>
                        <td><xsl:value-of select="product_id" /></td>
                        <td><xsl:value-of select="sale_date" /></td>
                        <td><xsl:value-of select="quantity_sold" /></td>
                        <td><xsl:value-of select="total_price" /></td>
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
