---
author:
	name1: Cristea, Liviu, 879401
	name2: Hensel, Simon, 880997
	name3: Wewering, Lukas, 880680
title:
	main: Systementwurf
	sub1: SWE-Praktikum 2 WS 2014/2015
revision:
	doc: swe_p2_systementwurf.0.md
	level: 0
	date: 23.11.2014
lang: de
---

# Systementwurf

## Datenbasis
![Klassendiagramm](./Diagramme/uml-klassendiagramm.png)

## Beschreibung
Im Folgenden werden die einzelnen Klassen jeweils näher erläutert.

### User
Die Klasse *User* dient als abstrakte Basisklasse für die drei möglichen Rollen im Gesamtsystem. Zur Authentifizierung werden eine E-Mail und ein Passwort benötigt, zusätzlich wird das Registrierungsdatum vermerkt.

### Behördenmitarbeiter
Behördenmitarbeiter erben von *User* und speichern zusätzlich Vor- und Nachname.

Ein Mitarbeiter kann im System folgende Funktionen ausüben:

1. Bestätigung der von den Herstellern angemeldeten Medikamente
2. Bewertung der von den Ärzten eingetragenen Ereignisse und dahingehend Bewertung der Medikamente
3. (De)aktivierung der Ärzte-Accounts
4. Bestätigen der Hersteller
5. Datenpflege
6. Administrative Aufgaben

Je nach Befugnis werden einem Behördenmitarbeiter ein oder mehrere Benutzerkreis(e) zugewiesen, welche unterschiedliche Rechte verleihen (s. unten).

### Benutzerkreis
Einem Behördenmitarbeiter muss mindestens ein Benutzerkreis zugeordnet werden. Es existieren Benutzerkreise für die im Abschnitt *Behördenmitarbeiter* genannten Funktionen.
Die Benutzerkreise können beliebig kombiniert werden.

### Hersteller
Hersteller erben von *User* und implementieren zusätzlich Namen und Anschrift.

Ein Hersteller kann beliebig viele Medikamente anmelden. Um mit dem System interagieren zu können, muss der *Hersteller*-Account von einem *Behördenmitarbeiter* aktiviert worden sein.

### Arzt
Ärzte erben von *User* und implementieren zusätzlich Vorname, Nachname, Spezialisierung und Anschrift.

Ein Arzt ist dafür zuständig Ereignisse zu Medikamenten einzutragen. Sein Status kann von Behördenmitarbeitern mit entsprechenden Rechten unter Angabe eines Grundes aktiviert oder deaktiviert werden.

### Medikament
Ein Medikament wird von *einem* Hersteller eingetragen und kann anschließend von einem Behördenmitarbeiter bestätigt werden.
Weiterhin kann ein Medikament beliebig vielen *Ereignissen* zugeordnet werden.
Ein Medikament wird von einem Behördenmitarbeiter anhand der dafür eingetragenen *Ereignisse* bewertet.

### Ereignis
Ein Ereignis wird von einem *Arzt* eingetragen und enthält weitere Informationen, welche von diesem eingetragen werden (Beschreibung und Wertung).
Jedem Ereignis wird genau ein *Medikament* und mindestens eine *Kategorie* zugeordnet.

Eingetragene Ereignisse können von einem Behördenmitarbeiter bewertet werden.

### Kategorie
Eine *Kategorie* spezifiziert ein *Ereignis* und wird von einem *Behördenmitarbeiter* eingetragen.

### Statusänderung
Eine *Statusänderung* kann von einem *Behördenmitarbeiter* hinzugefügt werden und bezieht sich immer auf einen Arzt. Es bewirkt die Änderung des aktiv-Flags. 
Für die Statusänderung muss ein Grund angegeben werden.

## Umwandlung in relationales Datenmodell

### User

|Attribut	|Typ	|
|-----------|-------|
|id			|int	|
|rolle_id	|int	|
|email		|string	|
|passwort	|string	|
|registrierung|datetime|

### Benutzerkreis

|Attribut	|Typ	|
|-----------|-------|
|id			|int	|
|bezeichnung|string	|

### User_Benutzerkreis

|Attribut	|Typ	|
|-----------|-------|
|user_id	|int	|
|benutzerkreis_id|int|

### Hersteller

|Attribut	|Typ	|
|-----------|-------|
|id			|int	|
|name		|string	|
|anschrift	|string	|
|bestätigt	|bool	|

### Arzt

|Attribut	|Typ	|
|-----------|-------|
|id			|int	|
|vorname	|string	|
|nachname	|string	|
|spezialisierung|string|
|anschrift	|string	|
|aktiv		|bool	|

### Medikament

|Attribut	|Typ	|
|-----------|-------|
|id			|int	|
|hersteller_id|int	|
|name		|string	|
|beschreibung|string|
|bestätigt	|bool	|
|bewertung	|string	|

### Ereignis

|Attribut	|Typ	|
|-----------|-------|
|id			|int	|
|medikament_id|int	|
|arzt_id	|int	|
|beschreibung|string|
|priorität	|int	|
|zeitpunkt	|date	|

### Kategorie

|Attribut	|Typ	|
|-----------|-------|
|id			|int	|
|bezeichnung|string	|
|mitarbeiter_id|int |

### Ereignis_Kategorie

|Attribut	|Typ	|
|-----------|-------|
|ereignis_id|int	|
|kategorie_id|int	|

### Statusänderung
|Attribut	|Typ	|
|-----------|-------|
|id			|int	|
|mitarbeiter_id|int  |
|arzt_id	|int	|
|grund		|string	|
|datum		|datetime|