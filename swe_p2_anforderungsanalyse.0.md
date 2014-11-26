---
author:
	name1: Cristea, Liviu, 879401
	name2: Hensel, Simon, 880997
	name3: Wewering, Lukas, 880680
title:
	main: Anforderungsanalyse
	sub1: SWE-Praktikum 2 WS 2014/2015
revision:
	doc: swe_p2_anforderungsanalyse.0.md
	level: 0
	date: 23.11.2014
lang: de
---

#Anforderungsanalyse für das Meldeverfahren

##Sprachliche Analyse der Anforderungen
Die sprachliche Analyse der Anforderungen erfolgt nach den Regeln der RUPP/SOPHIST Group.   
Die angegebenen Anforderungen sind zum Teil sehr unklar und bedürfen einer genaueren Untersuchung.   

Im ersten Punkt ist definiert, dass der "Hersteller von Medikamenten" seine Medikamente zur Bewertung anmelden soll, desweiteren ist beschrieben, dass die Anmeldung über eine Zulassungsbehörde erfolgen soll. Daraus lassen sich keine Informationen über die Art und Weise ableiten, also ob die Anmeldung über das System stattfinden soll oder nicht. Es ist auch gefordert, dass das Medikament von der Zulassungsbehörde bestätigt werden muss, jedoch ist nicht definiert, wie dies passieren soll. Hier muss noch eine genauere Definition erfolgen.

Im zweitem Punkt wird gefordert, dass die Ärzte die Auffälligkeiten bei der Anwendung der Medikamente als Ereignisse erfassen. Dafür soll vorher eine Registrierung der Ärzte beim Meldeverfahren stattfinden, hier fehlt aber auch jegliche Information darüber, wie die Registrierung stattfinden soll. Gefordert ist ebenso, dass die Behörde das Konto unter Angabe eines Grundes deaktivieren und auch wieder aktivieren kann.   

Im dritten Punkt der Anforderung ist die Bewertung der Medikamente für die Behörde festgelegt, das soll anhand der Ereignisse durchgeführt werden. Es fehlt auch hier die Spezifikation, ob die Behörde das manuell macht oder ob einiges Automatisiert werden soll.   

Als weiterer Punkt ist festgelegt, dass die Kategorien duch die Behörde vorgegeben werden und als Wertekatalog erfasst werden sollen.   
Es soll ebenso verschiedene Auswertungen geben, die je nach Rolle unterschiedlich sind - hier fehlt jedoch eine Angabe darüber, was genau angezeigt werden soll. Ein Beispiel für die unklar definierte Anforderung ist z.B. direkt in der ersten geforderten Auswertung. Es ist gewollt, dass der Hersteller eine Liste der eigenen Medikamente mit Ereignissen zur Verfügung stehen soll, aber es ist nicht definiert, welche Datenfelder für den Hersteller zu sehen sein sollen.

Insgesammt lassen sich aus den genannten Anforderungen 3 Akteure definieren:

>* Zulassungsbehörde
>* Arzt
>* Hersteller

Die oben genannten Punkte werden im nächsten Abschnitt etwas präziser und eindeutig formuliert.

##Offene Fragen bei der Anforderung
Anhand der vorliegenden Mängel in der Formulierung der Anforderungen für das Meldeverfahren ergeben sich folgende offen Fragen:

>* Wie soll die Anmeldung stattfinden? Schriftlich oder über das System?*   
>* Wie soll eine Medikamentenanmeldung, welche von der Behörde eine Zustimmung erhalten hat, an den Hersteller bestätigt werden?*   
>* Sollen sich die Ärzte selbst im System registrieren, oder bekommen sie einen festen Account mit einem Initialpasswort zugeschickt?*   
>* Soll eine spezielle Bewertungsmaske implementiert werden?*   
>* Sollen die Benutzer selbst entscheiden, welche Rolle sie einnehmen?*   

#Neudefinition der Anforderungen für das Meldeverfahren
**Die Anwendung "Meldeverfahren" dient dazu, Auffälligkeiten bei der Anwendung von Medikamenten zu erfassen und zu bewerten. Dazu sind folgende fachlichen Anforderungen zu berücksichtigen:**   

>+ **Anmeldung von Medikamenten**
	* Hersteller von Medikamenten müssen ihre Medikamente, die sie zur Bewertung freigeben wollen, anmelden
	* Die Anmeldung wird durch eine Zulassungsbehörde vorgenommen
	* Es wird ein Antrag benötigt, welcher vom Hersteller ausgefüllt und von der Zulassungsbehörde bestätigt werden muss
	* Der Hersteller bekommt einen Initialaccount, falls er noch nicht bei der Zulassungsbehörde registriert ist
	* Die Medikamente werden in Bezug zum Hersteller gespeichert
	* Bei erfolgreicher Bestätigung der Medikamentenregistrierung wird der Hersteller in Form einer E-Mail benachrichtigt
	* Die Bestätigung erfolgt manuell durch die Zulassungsbehörde
>+ **Erfassen von Auffälligkeiten von Medikamenten als Ereignisse**
	* Ärzte, die das Meldeverfahren nutzen wollen, müssen sich im System registrieren
	* Die Registrierung funktioniert über eine Bestätigung seiner Angaben (Titel, Name, Vorname, Spezialisierung, Anschrift)
	* Das System stellt eine Auswahl an Kategorien für ein Ereignis zur Verfügung. Diese werden zwingend benötigt, damit ein Ereignis erfasst werden kann
	* Die Behörde hat die Möglichkeit, Benutzerkonten der Ärte zu deaktivieren und wieder zu aktivieren.
	* Die Behörde muss einen Grund für die Aktivierung/Deaktivierung angeben
	* Es ist zwingend notwendig, die zwei vorher genannten Aktivitäten der Behörde zu dokumentieren
>+ **Auswertung der Medikamente**
	* Die Auswertung erfolgt durch die Behörde anhand der vorliegenden Ereignisse, welche von den Ärzten erfasst werden
	* Das System muss für die Auswertung die Ereignisse filtern.
	* Die Filterung der Ereignisse kann nach der Kategorie erfolgen oder nach dem Hersteller sowie auch die Zeiträume, in denen die Ereignisse eingetreten sind

**Auswertungsmöglichkeiten**

**Das System muss jeder Rolle Auswertungsmöglichkeiten zur Verfügung stellen, dazu sind folgende Anforderungen gestellt:**

>+ **Hersteller:**   
	* Liste der eigenen Medikamente
		* Anzeige der angemeldeten Medikamente (Datum der Anmeldung, Name des Medikamentes, Bearbeitungsstatus, Grund für Ablehnung)
	* Liste der eigenen Medikamente mit Ereignissen
		* Anzeige der bestätigten Medikamente mit Verweis auf die erfassten Ereignisse und der vorliegenden Bewertung
		* Das System zeigt an:(Name des Medikamentes, zuständige Behörde, Bewertungsscore, Anzahl der vorliegenden Ereignisse)
>+ **Arzt:**   
	* Liste der erfassten Ereignisse zu einem Medikament mit Filterungsmöglichkeit
	* Liste der erfassten Ereignisse die der angemeldete Arzt erfasst hat
	* Das System muss dem Arzt alle angemeldeten und registrierten Medikamente anzeigen
	* Das System muss dem Arzt die Möglichkeit zur Suche von bestimmten Medikamenten bereitstellen
	* Das System muss darüber hinaus noch dem Arzt verschiedene Fildermöglichkeiten bieten, diese sind:
		* Filterung nach eigenen Ereignissen zu einem Medikament
		* Filterung nach den Kategorien 
		* Anzeige der Bewertung durch die Behörde ein- oder ausschalten

>+ **Behörde:**   
	* Das System muss der Behörde eine Liste der Hersteller anzeigen (Herstellername, Anzahl angemeldete Medikamente, Anzahl bestätigter Medikammente, Anzahl noch offener Medikamente)
	* Das System muss der Behörde eine Liste der Medikamente die noch offen(noch nicht bestätigt sind) anzeigen
	* Das System muss der Behörde eine Liste der Ärzte, die nach Registrierungsdatum sortiert sind, anzeigen
	* Das System muss der Behörde eine Liste über die erfassten Kategorien anzeigen
	* Das System muss der Behörde eine Liste über die Medikamente, mit den erfassten Ereignissen sowie auch der Bewertung(falls vorhanden), anzeigen
	* Das System muss der Behörde eine Liste der Ereignisse anzeigen, dazu muss folgendes beachtet werden:
		* Filterung nach Hersteller muss gegeben sein
		* Filterung nach Kategorien muss gegeben sein
		* Filterung nach Bewertungsscore muss gegeben sein
		* Ein- und Ausblenden der Bewertungen

**Die Kategorien für das System muss von der Behörde als Wertekatalog erfasst oder importiert werden, damit diese für die Erfassung der Ereignisse vorgegeben werden können.**

**Anforderungen an die Benutzungsschnittstelle**

>+ **Pflege der Datenbestände**
	* Das System muss den verschiedenen Benutzern, gemäß ihrer Rolle, die Möglichkeit bieten, Datensätze zu erfassen, zu ändern und zu Löschen
	* Das System muss in der Lage sein, alle fachlichen Anforderunggen zu erfüllen
	* Das System muss für die verschiedenen Benutzer eine An- und Abmeldung ermöglichen
	* Das System muss dem Benutzer nur die für die Rolle vorgesehen Funktionalität ermöglchen
	* Das System muss den Mitarbeitern der Behörde ermöglichen, dass sie mehrere Benutzerrollen einnehmen können, damit sie ihre Aufgaben wahrnehmen können

>+ **Administration des Systems**
	* Das System wird von der Behörde administriert
	* Das System muss innerhalb der Behörde auch verschiedene Benutzerkreise berücksichtigen
	* Mögliche Benutzerkreise:
		* Registrierung von Medikamenten
		* Registrierung von Ärzten
		* Bewertung von Medikamenten
		* Pflege der Daten
		* Administrator für das System

**Externe Schnittstellen**

>Das System muss auf externe Daten zugreifen können, damit für die Ärzte, Hersteller und Medikamente zentrale Melderegister verwendet werden. Die externen Daten werden über Dateiimporte aus den externen Melderegistern im Sytem gespeichert.

**Zusätzliche Anforderungen**   

> Das System wird als Web-Anwendung zur verfügung gestellt   
> Das System wird mit einem Postgresql-Datenbank System, für die Datenhaltung verknüpft