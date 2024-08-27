<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title text-align="center">Sorting Algorithms</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          table, th, td {
            border: 1px solid black;
          }
          th, td {
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Sorting Algorithms</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Inventor</th>
            <th>Year of Publication</th>
            <th>Working Strategy</th>
            <th>Time Complexity (Best)</th>
            <th>Time Complexity (Average)</th>
            <th>Time Complexity (Worst)</th>
            <th>Space Complexity</th>
            <th>Suitable For</th>
            <th>Stability</th>
          </tr>
          <xsl:for-each select="sorting_algorithms/algorithm">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="inventor"/></td>
              <td><xsl:value-of select="year_of_publication"/></td>
              <td><xsl:value-of select="working_strategy"/></td>
              <td><xsl:value-of select="time_complexity/best"/></td>
              <td><xsl:value-of select="time_complexity/average"/></td>
              <td><xsl:value-of select="time_complexity/worst"/></td>
              <td><xsl:value-of select="space_complexity"/></td>
              <td><xsl:value-of select="suitable_for"/></td>
              <td><xsl:value-of select="stability"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
