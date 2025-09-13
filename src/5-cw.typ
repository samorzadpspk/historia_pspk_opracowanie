= Cwiczenie 5

Na podstawie danych udostępnianych w formie dokumentów XML przez Europejski Bank Centralny (http://www.ecb.int/stats/eurofxref/eurofxref-hist.xml), należy wykonać polecenia zawarte w dołączonym do ćwiczenia pliku eurofxref-hist-xsl.xsl. Ponieważ dane zawarte w udostępnianym pliku XML są obszerne, należy podczas wykonywania ćwiczenia używać jego skróconej wersji eurofxref-hist-short-xsl.xml dołączonej do ćwiczenia.

#figure(
  caption: "Wykonane zadanie 5",
  image("../img/5-1.png", width: 80%) 
)

== Zadanie 1
Atrybut select w poniższym elemencie xsl:for-each należy zmodyfikować w taki sposób, aby zależnie od parametrów dataod i datado oraz wartości atrybutu "time" następowało wyświetlenie kursów z określonego zakresu.

Kod należy zmodyfikować w taki sposób, żeby zależnie od parametrów zaznaczgora i zaznaczdol oraz wartości kursu "rate" następowało wyróżnienie wartości kursu różnymi kolorami.

=== eurofxref-hist-short-xsl.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet type="text/xsl" href="eurofxref-hist-xsl.xsl"?>
<gesmes:Envelope xmlns:gesmes="http://www.gesmes.org/xml/2002-08-01"
                 xmlns="http://www.ecb.int/vocabulary/2002-08-01/eurofxref">
    <gesmes:subject>Reference rates</gesmes:subject>
    <gesmes:Sender>
        <gesmes:name>European Central Bank</gesmes:name>
    </gesmes:Sender>

    <Cube>
        <Cube time="2010-04-14">
            <Cube currency="USD" rate="1.3625"/>
            <Cube currency="GBP" rate="0.8730"/>
        </Cube>
        <Cube time="2010-04-13">
            <Cube currency="USD" rate="1.3580"/>
            <Cube currency="GBP" rate="0.8685"/>
        </Cube>
        <Cube time="2010-04-12">
            <Cube currency="USD" rate="1.3502"/>
            <Cube currency="GBP" rate="0.8700"/>
        </Cube>
        <Cube time="2010-04-09">
            <Cube currency="USD" rate="1.3450"/>
            <Cube currency="GBP" rate="0.8675"/>
        </Cube>
        <Cube time="2010-04-08">
            <Cube currency="USD" rate="1.3200"/>
            <Cube currency="GBP" rate="0.8650"/>
        </Cube>
    </Cube>
</gesmes:Envelope>
```

=== eurofxref-hist-short-xsl.xsl
```xml
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:gesmes="http://www.gesmes.org/xml/2002-08-01"
    xmlns:e="http://www.ecb.int/vocabulary/2002-08-01/eurofxref">

  <xsl:param name="currency">USD</xsl:param>
  <xsl:param name="zaznaczgora">1.36</xsl:param>
  <xsl:param name="zaznaczdol">1.20</xsl:param>
  <xsl:param name="dataod">2010-01-01</xsl:param>
  <xsl:param name="datado">2020-12-31</xsl:param>

  <xsl:output method="html" encoding="utf-8" doctype-system="about:legacy-compat"/>

  <xsl:template match="/gesmes:Envelope">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="eurofxref-hist-xsl.css"/>
        <title>Kursy</title>
      </head>
      <body>
        <h1>Kursy</h1>

        <xsl:for-each select="e:Cube/e:Cube[e:Cube[@currency=$currency]]/e:Cube[@currency=$currency]">
          <xsl:sort select="number(@rate)" order="descending"/>
          <xsl:if test="position() = 1">
            <p>Maksymalny kurs: <xsl:value-of select="@rate"/></p>
          </xsl:if>
        </xsl:for-each>

        <xsl:for-each select="e:Cube/e:Cube[e:Cube[@currency=$currency]]/e:Cube[@currency=$currency]">
          <xsl:sort select="number(@rate)" order="ascending"/>
          <xsl:if test="position() = 1">
            <p>Minimalny kurs: <xsl:value-of select="@rate"/></p>
          </xsl:if>
        </xsl:for-each>

        <xsl:for-each select="e:Cube/e:Cube[translate(@time, '-', '') &gt;= translate($dataod, '-', '') and translate(@time, '-', '') &lt;= translate($datado, '-', '')]">
          <xsl:sort select="@time" order="descending"/>
          <div class="dzien">
            <div class="data">
              <xsl:value-of select="@time"/>
            </div>
            <div class="waluta">
              <xsl:for-each select="e:Cube[@currency=$currency]">
                <xsl:value-of select="@currency"/><xsl:text>: </xsl:text>
                <xsl:choose>
                  <xsl:when test="number(@rate) &gt; number($zaznaczgora)">
                    <span class="marktop"><xsl:value-of select="@rate"/></span>
                  </xsl:when>
                  <xsl:when test="number(@rate) &lt; number($zaznaczdol)">
                    <span class="marklow"><xsl:value-of select="@rate"/></span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span><xsl:value-of select="@rate"/></span>
                  </xsl:otherwise>
                </xsl:choose>
                <br/>
              </xsl:for-each>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

```

=== eurofxref-hist-short-xsl.css
```css
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #eef2f7;
    color: #222;
    margin: 40px;
}

h1 {
    color: #005f99;
    font-size: 2em;
    margin-bottom: 20px;
    border-bottom: 2px solid #ccc;
    padding-bottom: 5px;
}

.dzien {
    border-left: 4px solid #005f99;
    background-color: #ffffff;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    margin-bottom: 15px;
    padding: 15px 20px;
    border-radius: 8px;
}

.data {
    font-weight: 600;
    color: #007acc;
    margin-bottom: 10px;
    font-size: 1.1em;
}

.waluta {
    margin-left: 15px;
    line-height: 1.6;
}

.marktop {
    color: #c0392b;
    font-weight: bold;
    background-color: #fdecea;
    padding: 2px 5px;
    border-radius: 3px;
}

.marklow {
    color: #27ae60;
    font-weight: bold;
    background-color: #eafaf1;
    padding: 2px 5px;
    border-radius: 3px;
}

```


