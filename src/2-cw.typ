= Ćwiczenie 2

== Zadanie 1 
Na podstawie dokumentu XML powstałego w zadaniu 2 ćwiczenia 1, stworzono opis jego struktury przy użyciu DTD. DTD powinno być zawarte bezpośrednio w pliku XML, aby ułatwić sprawdzenie jego poprawności online. Poprawność tak stworzonego dokumentu należy sprawdzić pod adresem: http://validator.w3.org/. Dokument jest zgodny z zawartym w sobie DTD wtedy, gdy walidator zwraca wynik: „Tentatively passed, 2 warning(s)”.

=== Struktura
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
```

=== Zadanie 2
Stworzyć dokument XML oraz opis jego struktury przy użyciu DTD, zawierający w sobie bazę danych teleadresowych (wizytownik). Dla każdej osoby należy przewidzieć co najmniej następujące dane:
	•	imię,
	•	nazwisko,
	•	adres zamieszkania (w tym miejscowość, kod pocztowy, nazwa ulicy),
	•	telefon (komórkowy, domowy),
	•	adres e-mail,
	•	strona WWW.

Poprawność tak stworzonego dokumentu należy sprawdzić pod adresem: http://validator.w3.org/

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

=== wizytownnik.css

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