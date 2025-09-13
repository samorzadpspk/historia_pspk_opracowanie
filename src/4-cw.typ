= Cwiczenie 4
== Zadanie 1 
Dla wizytownika powstałego w poprzednim ćwiczeniu stworzyć szablon XSL, który skonwertuje dokument XML do dokumentu XHTML. Podczas realizacji ćwiczenia należy użyć wszystkich znaczników XSL podanych w przykładzie powyżej oraz stworzyć styl CSS dla dokumentu XHTML. Najlepsze efekty uzyska się, wykonując ćwiczenie w przeglądarce Mozilla Firefox w wersji 3.x.

#figure(
  caption: "Wykonane zadanie 4.1.",
  image("../img/4-1.png", width: 80%) 
)

=== wizytownik2.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="wizytownik2.xsl"?>

<wizytownik>
    <osoba>
        <imie>Jan</imie>
        <nazwisko>Kowalski</nazwisko>
        <adres>
            <miejscowosc>Warszawa</miejscowosc>
            <kod_pocztowy>00-001</kod_pocztowy>
            <ulica>Nowa 10</ulica>
        </adres>
        <telefon>
            <komorkowy>+48 600 123 456</komorkowy>
            <domowy>+48 22 123 45 67</domowy>
        </telefon>
        <email>jan.kowalski@example.com</email>
        <www>http://www.jankowalski.pl</www>
    </osoba>

    <osoba>
        <imie>Anna</imie>
        <nazwisko>Nowak</nazwisko>
        <adres>
            <miejscowosc>Kraków</miejscowosc>
            <kod_pocztowy>30-002</kod_pocztowy>
            <ulica>Stara 5</ulica>
        </adres>
        <telefon>
            <komorkowy>+48 601 987 654</komorkowy>
        </telefon>
        <email>anna.nowak@example.com</email>
        <www>http://www.annanowak.pl</www>
    </osoba>

    <osoba>
        <imie>Piotr</imie>
        <nazwisko>Wiśniewski</nazwisko>
        <adres>
            <miejscowosc>Gdańsk</miejscowosc>
            <kod_pocztowy>80-001</kod_pocztowy>
            <ulica>Morska 7</ulica>
        </adres>
        <telefon>
            <domowy>+48 58 321 76 54</domowy>
        </telefon>
        <email>piotr.w@example.com</email>
        <www>http://www.piotrwisniewski.pl</www>
    </osoba>
</wizytownik>

```
=== wizytownik2.xls
```xml
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat" indent="yes"/>

<xsl:template match="/wizytownik">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Wizytownik</title>
    <style type="text/css">
      body {
          font-family: Arial, 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          margin: 20px;
          background-color: #f9f9f9;
      }
    
      table {
          width: 100%;
          border-collapse: collapse;
          background-color: #fff;
      }
    
      th, td {
          border: 1px solid #ccc;
          padding: 10px;
          text-align: left;
      }
    
      th {
          background-color: #f2f2f2;
          color: #1a5276;
      }
    
      h1 {
          color: #1a5276;
      }
    
      a {
          color: #2e86c1;
          text-decoration: none;
      }
    
      a:hover {
          text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <h1>Lista kontaktów</h1>
    <table>
      <thead>
        <tr>
          <th>Imię i nazwisko</th>
          <th>Adres</th>
          <th>Telefon</th>
          <th>Email</th>
          <th>WWW</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="osoba">
          <xsl:sort select="nazwisko" order="ascending"/>
          <tr>
            <td>
              <xsl:value-of select="imie" />
              <xsl:text> </xsl:text>
              <xsl:value-of select="nazwisko" />
            </td>
            <td>
              <xsl:value-of select="adres/ulica" />
              <xsl:text>, </xsl:text>
              <xsl:value-of select="adres/kod_pocztowy" />
              <xsl:text> </xsl:text>
              <xsl:value-of select="adres/miejscowosc" />
            </td>
            <td>
              <xsl:choose>
                <xsl:when test="telefon/komorkowy">
                  Kom: <xsl:value-of select="telefon/komorkowy" /><br/>
                </xsl:when>
                <xsl:otherwise>
                  Brak telefonu komórkowego<br/>
                </xsl:otherwise>
              </xsl:choose>
              <xsl:choose>
                <xsl:when test="telefon/domowy">
                  Dom: <xsl:value-of select="telefon/domowy" />
                </xsl:when>
              </xsl:choose>
            </td>
            <td>
              <a href="mailto:{email}">
                <xsl:value-of select="email" />
              </a>
            </td>
            <td>
              <a href="{www}" target="_blank">
                <xsl:value-of select="www" />
              </a>
            </td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </body>
</html>
</xsl:template>

</xsl:stylesheet>

```

=== wizytownik2.css
```css
  body {
      font-family: Arial, 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 20px;
      background-color: #f9f9f9;
  }

  .osoba {
      border: 1px solid #ccc;
      background-color: #fff;
      margin-bottom: 15px;
      padding: 10px;
      border-radius: 5px;
  }

  h2 {
      color: #1a5276;
  }

  .adres, .telefon, p {
      margin: 5px 0;
  }

  a {
      color: #2e86c1;
      text-decoration: none;
  }

  a:hover {
      text-decoration: underline;
  }

```


