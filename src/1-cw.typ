= Ćwiczenie 1


== Zadanie 1
Na podstawie dowolnie wybranego utworu (wiersza, piosenki, artykułu) stworzy¢ dokument (X)HTML. Do zmiany wyglądu strony nalezy uzyć styli CSS. Poprawnosc stworzonego
dokumentu nalezy sprawdzić pod adresem: http://validator.w3.org/.
Przykład gotowego dokumentu (X)HTML:


#figure(
  caption: "Ćwiczenie 1 - Zadanie 1.",
  image("../img/1-1.png", width: 80%),
  
)

=== tekst.html
```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta
      http-equiv="Content-Type"
      content="application/xhtml+xml; charset=UTF-8"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link type="text/css" href="tekst.css" rel="stylesheet" />
    <title>Ich Troje – A wszystko to... (bo Ciebie kocham)</title>
  </head>
  <body>
    <h1>Ich Troje</h1>
    <h2>A wszystko to... (bo Ciebie kocham)</h2>

    <p>Czy wiesz malutka może, jak Ciebie mi brak?</p>
    <p>Czy czujesz to, co ja, gdy jestem sam?</p>
    <p>Jestem opętany jak w niewoli pies.</p>
    <p>Kto jest temu winien, wiesz?</p>
    <p>Nie ma takich prostych słów,</p>
    <p>Co oddadzą to, co boli mnie...</p>
    <p>Przeczucie mam, że jednak spyta ktoś:</p>
    <p>"Czy ta bajka się nie kończy źle"?</p>
    <p>To tylko zazdrość zżera mnie,</p>
    <p>Zawsze wtedy, kiedy obok Ciebie nie ma mnie.</p>
    <p>Raz jestem Doktor Jekyll, raz Mister Hyde.</p>
    <p>Transformacja trwa – nie zatrzymam jej!</p>
    <p>Oko w oko stań. Co za twarz!</p>
    <p>No powiedz! – Boisz się...</p>
    <p>Za późno już, zwalam stąd.</p>
    <p>Będzie lepiej, jak zapomnisz mnie!</p>
    <p>A wszystko to, bo ciebie kocham!</p>
    <p>I nie wiem, jak bez Ciebie mógłbym żyć.</p>
    <p>Chodź, pokażę ci, czym moja miłość jest.</p>
    <p>Dla ciebie zabije się!</p>
  </body>
</html>


```
=== tekst.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE songs [
    <!ELEMENT songs (song+)>
    <!ELEMENT song (author, title, lyrics)>
    <!ELEMENT author (#PCDATA)>
    <!ELEMENT title (#PCDATA)>
    <!ELEMENT lyrics (line+)>
    <!ELEMENT line (#PCDATA)>
]>
<?xml-stylesheet type="text/css" href="tekst1.css"?>

<songs>
    <song>
        <author>Ich Troje</author>
        <title>A wszystko to... (bo ciebie kocham)</title>
        <lyrics>
            <line>Czy wiesz malutka może, jak Ciebie mi brak?</line>
            <line>Czy czujesz to, co ja, gdy jestem sam?</line>
            <line>Jestem opętany jak w niewoli pies.</line>
            <line>Kto jest temu winien, wiesz?</line>
            <line>Nie ma takich prostych słów,</line>
            <line>Co oddadzą to, co boli mnie...</line>
            <line>Przeczucie mam, że jednak spyta ktoś:</line>
            <line>"Czy ta bajka się nie kończy źle"?</line>
            <line>To tylko zazdrość zżera mnie,</line>
            <line>Zawsze wtedy, kiedy obok Ciebie nie ma mnie.</line>
            <line>Raz jestem Doktor Jekyll, raz Mister Hyde.</line>
            <line>Transformacja trwa – nie zatrzymam jej!</line>
            <line>Oko w oko stań. Co za twarz!</line>
            <line>No powiedz! – Boisz się...</line>
            <line>Za późno już, zwalam stąd.</line>
            <line>Będzie lepiej, jak zapomnisz mnie!</line>
            <line>A wszystko to, bo ciebie kocham!</line>
            <line>I nie wiem, jak bez Ciebie mógłbym żyć.</line>
            <line>Chodź, pokażę ci, czym moja miłość jest.</line>
            <line>Dla ciebie zabije się!</line>
        </lyrics>
    </song>
</songs>
```

=== tekst1.css
```css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
songs {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin: auto;
    max-width: 300px;
    padding: 20px;
    background: #333;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
}

song {
    display: block;
    margin-bottom: 20px;
}

author {
    display: block;
    font-size: 1.5em;
    font-weight: bold;
    color: #ff9800;
    margin-bottom: 5px;
}

title {
    display: block;
    font-size: 1.2em;
    font-style: italic;
    color: #fbc02d;
    margin-bottom: 10px;
}

lyrics {
    display: block;
    padding-left: 10px;
    border-left: 3px solid #4caf50;
}

line {
    display: block;
    font-size: 1em;
    margin: 5px 0;
    color: #ccc;
}

```

== Zadanie 2 
Na podstawie dokumentu (X)HTML powstałego w 1 zadaniu, stworzyć dokument XML.
Do zmiany wyglądu równiez nalezy uzyć styli CSS. Poprawność ("well-formed") stworzonego dokumentu nalezy sprawdzi¢ pod adresem: http://validator.w3.org/. Poprawności
"well-formed" odpowiada wynik: "Tentatively passed, 3 warning(s)""

#figure(
  caption: "Ćwiczenie 1 - Zadanie 2.",
  image("../img/2-1.png", width: 80%) 
)

=== wizytownik.xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE wizytownik [
    <!ELEMENT wizytownik (osoba+)>
    <!ELEMENT osoba (imie, nazwisko, adres, telefon, email, www)>
    <!ELEMENT imie (#PCDATA)>
    <!ELEMENT nazwisko (#PCDATA)>
    <!ELEMENT adres (miejscowosc, kod_pocztowy, ulica)>
    <!ELEMENT miejscowosc (#PCDATA)>
    <!ELEMENT kod_pocztowy (#PCDATA)>
    <!ELEMENT ulica (#PCDATA)>
    <!ELEMENT telefon (komorkowy?, domowy?)>
    <!ELEMENT komorkowy (#PCDATA)>
    <!ELEMENT domowy (#PCDATA)>
    <!ELEMENT email (#PCDATA)>
    <!ELEMENT www (#PCDATA)>
]>
<?xml-stylesheet type="text/css" href="wizytownik.css"?>

<wizytownik>
    <osoba>
        <imie>Mateusz</imie>
        <nazwisko>Zieliński</nazwisko>
        <adres>
            <miejscowosc>Gdańsk</miejscowosc>
            <kod_pocztowy>80-001</kod_pocztowy>
            <ulica>Morska 15A</ulica>
        </adres>
        <telefon>
            <komorkowy>+48 723 456 789</komorkowy>
            <domowy>+48 58 321 45 67</domowy>
        </telefon>
        <email>mateusz.zielinski@example.com</email>
        <www>http://www.mzielinski.pl</www>
    </osoba>

    <osoba>
        <imie>Katarzyna</imie>
        <nazwisko>Wiśniewska</nazwisko>
        <adres>
            <miejscowosc>Wrocław</miejscowosc>
            <kod_pocztowy>50-002</kod_pocztowy>
            <ulica>Leśna 7</ulica>
        </adres>
        <telefon>
            <komorkowy>+48 789 654 321</komorkowy>
        </telefon>
        <email>k.wisniewska@example.com</email>
        <www>http://www.katarzynawisniewska.pl</www>
    </osoba>
</wizytownik>

```
=== wizytownik.css
```css
/* Global styles */
wizytownik {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    display: block;
    margin: 40px;
    background-color: #f0f4f8;
}

/* Each contact card */
osoba {
    display: block;
    background: #ffffff;
    border-left: 5px solid #3498db;
    padding: 20px;
    margin: 20px 0;
    border-radius: 10px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.05);
}

/* Name formatting */
imie,
nazwisko {
    font-size: 1.4em;
    font-weight: bold;
    display: inline;
    color: #2c3e50;
    margin-right: 8px;
}

/* Address section */
adres {
    display: block;
    margin-top: 10px;
    font-style: italic;
    color: #7f8c8d;
}

/* Phone numbers */
telefon {
    display: block;
    margin-top: 10px;
    color: #2980b9;
}

komorkowy,
domowy {
    display: block;
    margin-top: 2px;
}

/* Email styling */
email {
    display: block;
    margin-top: 10px;
    color: #c0392b;
    font-weight: 600;
}

/* Website link */
www {
    display: block;
    margin-top: 5px;
    color: #27ae60;
    text-decoration: underline;
}

```