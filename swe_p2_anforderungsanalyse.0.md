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

#Anforderungsanalyse für das Meldeverfahren für Medikamente

##Sprachliche Analyse der Anforderungen
Die sprachliche Analyse der Anforderungen erfolgt nach den Regeln der RUPP/SOPHIST Group.   
Die angegebenen Anforderungen sind zum Teil sehr unklar und bedürfen einer genaueren Untersuchung.   

Im ersten Punkt ist definiert das der "Hersteller von Medikamenten" seine Medikamente zur Bewertung anmelden soll, desweiteren ist dann beschrieben das die Anmeldung bei einer Zulassungsbehörde passieren soll. Daraus lässt sich nicht schließen wie das passieren soll, also ob die Anmeldung über das System stattfinden soll oder nicht. Es ist auch gefordert das das Medikament von der Zulassungsbehörde bestätigt werden muss, aber es ist nicht definiert wie dies passieren soll, daraus ergibt sich, dass das noch definiert werden muss. Aus dieser Anforderung lassen sich 2 Akteure definieren, der Hersteller von Medikamenten und die Zulassungsbehörde.   

Im zweitem Punkt wird gefordert, dass die Ärzte die Auffälligkeiten bei der Anwendung der Medikamente als Ereignisse erfassen, dafür soll vorher eine Registrierung der Ärzte beim Meldeverfahren stattfinden, hier fehlt aber auch jegliche Information wie die Registrierung stattfinden soll. Gefordert ist ebenso das die Behörde das Konto deaktivieren und auch wieder aktivieren kann, dazu muss jedoch der Grund definiert werden. Nun kommt die Rolle des Arztes hinzu.   

Im dritten Punkt der Anforderung ist die Bewertung der Medikamente dur die Behörde festgelegt, das soll anhand der Ereignisse durchgeführt werden. Es fehlt auch hier die Spezifikation ob die Behörde das manuell macht oder ob einiges Automatisiert werden soll.   

Als weiterer Punkt ist festgelegt das die Kategorien duch die Behörde vorgegeben werden und als Wertekatalog erfasst werden sollen.   
Es sollen ebenso verschiedene Auswertungen geben die je nach Rolle unterschiedlich sind, hier fehlt jedoch was genau angezeigt werden soll. Ein Beispiel für die unklar definierte Anforderung ist z.B. direkt in der ersten geforderten Auswertung. Es ist gewollt das der Hersteller eine Liste der eigenen Medikamente mit Ereignissen zur Verfügung stehen soll, aber es ist nicht definiert welche Datenfelder für den Hersteller zu sehen sein soll.

Die oben genannten Punkte werden im nächsten Abschnitt etwas präziser und eindeutig formuliert.

##Neudefinition der Anforderungen für das Meldeverfahren für Medikamente
**Die Anwendung "Meldeverfahren" dient dazu, Auffälligkeiten bei der Anwendung von Medikamenten zu erfassen und zu bewerten. Dazu sind folgende fachlichen Anforderungen zu berücksichtigen:**   

>+ **Anmeldung von Medikamenten**
	* Hersteller von Medikamenten müssen ihre Medikamente die sie zur Bewertung freigeben wollen müssen angemeldet werden
	* Die Anmeldung wird durch eine Zulassungsbehörde vorgenommen
	* Es wird ein Antrag benötigt, das vom Hersteller ausgefüllt werden muss und dem, von der Zulassungsbehörde, zugestimmt werden muss
	* Der Hersteller bekommt ein Initialaccount falls er noch nicht bei der Zulassungsbehörde registriert ist
	* Die Medikamente werden in Bezug zum Hersteller geschpeichert
	* Bei erfolgreicher Bestätigung der Medikamentenregistrierung wird der Hersteller in Form einer Email benachrichtigt
	* Die Bestätigung erfolgt manuell durch die Zulassungsbehörde
>+ **Erfassen von Auffälligkeiten von Medikamenten als Ereignisse**
	* Ärzte die das Meldeverfahren nutzen wollen müssen sich im System registrieren
	* Die Registrierung funktioniert über eine Bestätigung seiner Angaben(Titel, Name, Vorname, Spezialisierung, Anschrift)
	* Das System stellt eine Auswahl an Kategorien für ein Ereigniss zur Verfügung, diese wird zwingend benötigt damit ein Ereigniss erfasst werden kann
	* Die Behörde hat die möglichkeit Benutzerkonten der Ärte zu deaktivieren und wieder zu aktivieren.
	* Die Behörde muss einen Grund für die aktivierung/deaktivierung angeben
	* Es ist zwingend notwendig das die zwei vorher genannten Aktivitätet der Behörde dokumentiert werden
>+ **Auswertung der Medikamente**
	* Die Auswertung erfolgt durch die Behörde, anhand der vorliegenden Ereignisse die von den Ärzten erfasst werden
	* Das System muss für die Auswertung die Ereignisse filtern.
	* Die Filterung der Ereignisse kann nach der Kategorie erfolgen oder nach dem Hersteller sowie auch die Zeiträume in denen die Ereignisse eingetreten sind

**Auswertungsmöglichkeiten**

**Das System muss jeder Rolle Auswertungsmöglichkeiten zur verfügung stellen, dazu sind folgende Anforderungen gestellt:**

>+ **Hersteller:**   
	* Liste der eigenen Medikamente
		* Anzeige der angemeldeten Mediakmente(Datum der Anmeldung, Name des Medikamentes, Bearbeitungsstatus, Grund für Ablehnung)
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
		* Anzeige der Bewertung durch die Behörde ein oder ausschalten

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

**Anforderungen an die Benutzungsschnittstelle**

>**

**Die Administration des Systems wird von der Behörde vorgenommen.**

**Die Kategorien für das System muss von der Behörde als Wertekatalog erfasst oder importiert werden, damit diese für die Erfassung der Ereignisse vorgegeben werden.**