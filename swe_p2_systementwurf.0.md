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

Ein Mitarbeiter kann im System mehrere Funktionen ausüben:

    1. Bestätigung der von den Herstellern angemeldeten Medikamente
    2. Bewertung der von den Ärzten eingetragenen Ereignisse
    3. (De)aktivierung der Ärzte-Accounts
    4. Datenpflege
    5. Administrative Aufgaben

Je nach Befugnis wird einem Behördenmitarbeiter ein oder mehrere Benutzerkreis(e) zugewiesen, welche unterschiedliche Rechte verleihen (s. unten).

### Benutzerkreis
Einem Behördenmitarbeiter muss mindestens ein Benutzerkreis zugeordenet werden. Es existieren Benutzerkreise für die im Abschnitt *Behördenmitarbeiter* genannten Funktionen.
Die Benutzerkreise können beliebig kombiniert werden.

### Hersteller

### Arzt

### Medikament

### Ereignis

### Kategorie

### Arzt

### Statusänderung