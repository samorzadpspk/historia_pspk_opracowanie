= Ćwiczenie 3

== Zadanie 1 
Stworzyć dokument XML oraz opis jego struktury przy użyciu XML Schema, zawierający w sobie bazę danych teleadresowych (wizytownik). Dla każdej osoby należy przewidzieć co najmniej następujące dane:
	•	imię,
	•	nazwisko,
	•	płeć,
	•	adres zamieszkania składający się z miejscowości, kodu pocztowego oraz ulicy,
	•	telefony (komórkowy, domowy, firmowy itp.),
	•	adresy e-mail,
	•	strony WWW,
	•	datę dodania,
	•	datę ostatniej modyfikacji.

#figure(
  caption: "Ćwiczenie 3 - Zadanie 1.",
  image("../img/3-1.png", width: 80%) 
)

=== wizytownik2.xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/css" href="wizytownik2.css"?>

<wizytownik xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="wizytownik2.xsd">

    <osoba>
        <imie>Marek</imie>
        <nazwisko>Nowicki</nazwisko>
        <plec>Mężczyzna</plec>
        <adres>
            <miejscowosc>Gdańsk</miejscowosc>
            <kod_pocztowy>80-001</kod_pocztowy>
            <ulica>Portowa 15</ulica>
        </adres>
        <telefony>
            <telefon>
                <typ>Komórkowy</typ>
                <numer>+48 698 321 789</numer>
            </telefon>
        </telefony>
        <email>marek.nowicki@example.com</email>
        <www>http://www.marek-nowicki.com</www>
        <data_dodania>2024-01-10</data_dodania>
        <data_modyfikacji>2024-03-05</data_modyfikacji>
        <rodzaj_kontaktu>Przyjaciel</rodzaj_kontaktu>
    </osoba>

    <osoba>
        <imie>Julia</imie>
        <nazwisko>Kowal</nazwisko>
        <plec>Kobieta</plec>
        <adres>
            <miejscowosc>Łódź</miejscowosc>
            <kod_pocztowy>90-002</kod_pocztowy>
            <ulica>Piotrkowska 3</ulica>
        </adres>
        <telefony>
            <telefon>
                <typ>Firmowy</typ>
                <numer>+48 42 123 45 67</numer>
            </telefon>
        </telefony>
        <email>julia.kowal@example.com</email>
        <www>http://www.julia-kowal.pl</www>
        <data_dodania>2024-02-20</data_dodania>
        <data_modyfikacji>2024-03-18</data_modyfikacji>
        <rodzaj_kontaktu>Kontrahent</rodzaj_kontaktu>
    </osoba>

    <osoba>
        <imie>Kamil</imie>
        <nazwisko>Lewandowski</nazwisko>
        <plec>Mężczyzna</plec>
        <adres>
            <miejscowosc>Poznań</miejscowosc>
            <kod_pocztowy>61-001</kod_pocztowy>
            <ulica>Długa 22</ulica>
        </adres>
        <telefony>
            <telefon>
                <typ>Komórkowy</typ>
                <numer>+48 605 999 888</numer>
            </telefon>
        </telefony>
        <email>kamil.lewandowski@example.com</email>
        <www>http://www.kamil-lewandowski.com</www>
        <data_dodania>2024-03-10</data_dodania>
        <data_modyfikacji>2024-03-15</data_modyfikacji>
        <rodzaj_kontaktu>Rodzina</rodzaj_kontaktu>
    </osoba>

    <osoba>
        <imie>Aleksandra</imie>
        <nazwisko>Wiśniewska</nazwisko>
        <plec>Kobieta</plec>
        <adres>
            <miejscowosc>Wrocław</miejscowosc>
            <kod_pocztowy>50-123</kod_pocztowy>
            <ulica>Mostowa 5</ulica>
        </adres>
        <telefony>
            <telefon>
                <typ>Komórkowy</typ>
                <numer>+48 602 111 333</numer>
            </telefon>
            <telefon>
                <typ>Domowy</typ>
                <numer>+48 71 321 65 43</numer>
            </telefon>
        </telefony>
        <email>aleksandra.wisniewska@example.com</email>
        <www>http://www.aleksandra-wisniewska.pl</www>
        <data_dodania>2024-01-05</data_dodania>
        <data_modyfikacji>2024-02-20</data_modyfikacji>
        <rodzaj_kontaktu>Przyjaciel</rodzaj_kontaktu>
    </osoba>

    <osoba>
        <imie>Piotr</imie>
        <nazwisko>Dąbrowski</nazwisko>
        <plec>Mężczyzna</plec>
        <adres>
            <miejscowosc>Szczecin</miejscowosc>
            <kod_pocztowy>70-001</kod_pocztowy>
            <ulica>Leśna 18</ulica>
        </adres>
        <telefony>
            <telefon>
                <typ>Firmowy</typ>
                <numer>+48 91 567 89 01</numer>
            </telefon>
        </telefony>
        <email>piotr.dabrowski@example.com</email>
        <www>http://www.piotr-dabrowski.com</www>
        <data_dodania>2024-02-01</data_dodania>
        <data_modyfikacji>2024-03-08</data_modyfikacji>
        <rodzaj_kontaktu>Kontrahent</rodzaj_kontaktu>
    </osoba>

</wizytownik>

```
=== wizytownik2.xsd
```xml
<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="wizytownik">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="osoba" maxOccurs="unbounded">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="imie" type="xs:string"/>
                            <xs:element name="nazwisko" type="xs:string"/>
                            <xs:element name="plec">
                                <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                        <xs:enumeration value="Mężczyzna"/>
                                        <xs:enumeration value="Kobieta"/>
                                    </xs:restriction>
                                </xs:simpleType>
                            </xs:element>   
                            <xs:element name="adres">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="miejscowosc" type="xs:string"/>
                                        <xs:element name="kod_pocztowy" type="xs:string"/>
                                        <xs:element name="ulica" type="xs:string"/>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="telefony">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="telefon" maxOccurs="unbounded">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="typ">
                                                        <xs:simpleType>
                                                            <xs:restriction base="xs:string">
                                                                <xs:enumeration value="Komórkowy"/>
                                                                <xs:enumeration value="Domowy"/>
                                                                <xs:enumeration value="Firmowy"/>
                                                            </xs:restriction>
                                                        </xs:simpleType>
                                                    </xs:element>
                                                    <xs:element name="numer" type="xs:string"/>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="email" type="xs:string"/>
                            <xs:element name="www" type="xs:string"/>
                            <xs:element name="data_dodania" type="xs:date"/>
                            <xs:element name="data_modyfikacji" type="xs:date"/>
                            <xs:element name="rodzaj_kontaktu">
                                <xs:simpleType>
                                    <xs:restriction base="xs:string">
                                        <xs:enumeration value="Rodzina"/>
                                        <xs:enumeration value="Przyjaciel"/>
                                        <xs:enumeration value="Kontrahent"/>
                                    </xs:restriction>
                                </xs:simpleType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>

```

=== wizytownik2.css
```css
wizytownik {
    font-family: Arial, sans-serif;
    display: block;
    margin: 20px;
}

osoba {
    display: block;
    border: 2px solid #4CAF50;
    padding: 15px;
    margin: 15px 0;
    background-color: #f4f4f4;
    border-radius: 10px;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
}

imie,
nazwisko {
    font-size: 20px;
    font-weight: bold;
    color: #333;
    display: block;
}

plec {
    font-style: italic;
    color: #555;
}

adres {
    display: block;
    margin-top: 10px;
    padding: 5px;
    background-color: #e0e0e0;
    border-radius: 5px;
}

telefon {
    display: block;
    margin-top: 5px;
    padding: 5px;
    border-bottom: 1px solid #ccc;
}

typ {
    font-weight: bold;
    color: #d35400;
}

numer {
    color: #444;
}

email {
    display: block;
    font-weight: bold;
    color: #c0392b;
}

www {
    display: block;
    color: #2980b9;
    font-style: italic;
    text-decoration: underline;
}

rodzaj_kontaktu {
    display: block;
    font-size: 14px;
    font-weight: bold;
    margin-top: 10px;
    padding: 5px;
    border-left: 5px solid #4CAF50;
    background-color: #e8f5e9;
}
```