// Typst-Vorlage: Web-Abstract Bachelorarbeit
// Basiert auf der Anleitung zur Erstellung eines Web-Abstracts, Version 24.02.2026 / bcl

#set document(
  title: "Web-Abstract Bachelorarbeit",
  author: "Lukas Schmid",
)

#set page(
  paper: "a4",
  margin: (
    top: 40.5mm,
    bottom: 28.8mm,
    left: 20mm,
    right: 18mm,
  ),
)

#set text(
  font: "Arial",
  size: 10pt,
  lang: "de",
)

#set par(
  justify: true,
  leading: 0.65em,
)

#show heading.where(level: 1): it => {
  text(size: 14pt, weight: "bold")[#it]
  v(0.75em)
}
#show heading.where(level: 2): it => {
  text(size: 11pt, weight: "bold")[#it]
}

#set heading(numbering: "1.")

// Titel der Bachelorarbeit
#text(size: 18pt, weight: "bold")[
  #v(1.5em)
  Konzeption und Implementierung einer Turniersoftware für regionale Judo-Wettkämpfe (MVP)
]


#table(
  stroke: none,
  inset: (x: 0mm, y: 2.3mm),
  columns: (1fr, 3fr),
  [*Themenbereich*], [Software Engineering, Web Engineering, Sportinformatik],
  [*Studierende*], [Lukas Schmid],
  [*Betreuungsperson*], [Björn Näf],
  [*Experte*], [Cedric Wehli],
  [*Auftraggebende*], [Aargauer Judo und Ju-Jitsu Verband],
  [*Keywords*], [Turniersoftware, Judo, Webapplikation, MVP, Angular, Supabase, PostgreSQL],
)

= Aufgabenstellung

Regionale Judo-Schülerturniere werden in der Praxis häufig mit Tabellen, Papierformularen und voneinander getrennten Einzelwerkzeugen organisiert. Dadurch müssen Daten mehrfach erfasst werden. Kurzfristige Änderungen lassen sich nur mit hohem Aufwand konsistent nachführen und Informationen zu Kämpfen, Resultaten oder Ranglisten sind für Organisatoren, Vereine, Coaches, Athletinnen und Athleten oft nur eingeschränkt verfügbar. Bestehende professionelle Turniersysteme decken grosse Wettkämpfe umfassend ab, sind für kleinere regionale Anlässe jedoch häufig zu aufwendig, zu teuer oder funktional überdimensioniert.

Ziel dieser Bachelorarbeit war die Konzeption und Implementierung eines webbasierten Minimum Viable Product (MVP) für regionale Judo-Wettkämpfe. Im Fokus stand ein Schülerturnier, das von der Anmeldung über Check-in, Wiegen, Poolbildung und Kampfplanung bis zur Ergebniserfassung und Rangliste digital unterstützt wird. Die Lösung soll den administrativen Aufwand reduzieren, Medienbrüche vermeiden und eine transparente Informationsbasis für alle Beteiligten schaffen. Gleichzeitig soll das MVP als erweiterbare Grundlage für eine regional ausgerichtete Turnierplattform dienen.

= Lösungskonzept

Das MVP ist als integrierte Webplattform mit gemeinsamem Datenbestand konzipiert. Alle prozessrelevanten Informationen werden zentral geführt und in den verschiedenen Arbeitsbereichen wiederverwendet. Dadurch muss eine Änderung nur einmal erfasst werden. Aktualisierte Gewichte, angepasste Kampfpläne oder erfasste Resultate stehen anschliessend dort zur Verfügung, wo sie für den weiteren Turnierablauf benötigt werden.

Die fachliche Struktur der Anwendung orientiert sich am Ablauf eines regionalen Judo-Schülerturniers. Die Anforderungen wurden aus Reglementen, bestehenden Turnierprozessen und Experteninterviews abgeleitet und nach MoSCoW priorisiert. Für den MVP wurden vor allem jene Funktionen umgesetzt, die für eine durchgängige digitale Durchführung notwendig sind.

Die Plattform umfasst Turnierverwaltung, öffentliche Registrierung, Athletenverwaltung, Check-in und Wiegen, Poolbildung, Generierung von Begegnungen, Kampffeldzuteilung, Scoreboard, Publikumsanzeigen sowie Resultate und Ranglisten. Wiederkehrende Arbeitsschritte werden automatisiert. Fachlich kritische Schritte bleiben bewusst steuerbar. Dies betrifft vor allem die Poolbildung, da kleine Teilnehmerfelder, Gewichtsanpassungen und kurzfristige Änderungen häufig manuelle Entscheide erfordern.

Technisch wurde das Frontend mit Angular und TypeScript umgesetzt. Für die Benutzeroberfläche kamen PrimeNG und Tailwind CSS zum Einsatz. Persistenz und zentrale Backend-Funktionen wurden mit Supabase und PostgreSQL realisiert. Realtime-Mechanismen sorgen dafür, dass relevante Statusänderungen im Kampfbetrieb, beim Wiegen oder in den Anzeigeansichten synchronisiert und ohne manuelles Neuladen sichtbar werden.

= Spezielle Herausforderungen

Eine zentrale Herausforderung lag darin, einen bisher stark manuell geprägten Turnierprozess in eine verständliche und zuverlässig bedienbare Anwendung zu überführen. Dabei durfte die notwendige Flexibilität der Turnierleitung nicht verloren gehen. Besonders anspruchsvoll war die Poolbildung, da sie erst nach dem Wiegen auf Basis der tatsächlich anwesenden Athletinnen und Athleten abgeschlossen werden kann. Gleichzeitig musste die Lösung automatische Unterstützung bieten, ohne fachlich notwendige manuelle Anpassungen zu verhindern.

Der laufende Kampfbetrieb stellt hohe Anforderungen an die Software. Am Turniertag arbeiten mehrere Rollen gleichzeitig mit denselben Daten. Das System muss deshalb konsistente Informationen liefern, schnell bedienbar sein und Statusänderungen zuverlässig weitergeben. Da regionale Turniere oft in Sporthallen mit begrenzter technischer Infrastruktur stattfinden, musste die Lösung einfach einsetzbar bleiben und den Betriebsaufwand gering halten.

Eine weitere Herausforderung lag in der Abgrenzung des MVP. Der erste nutzbare Stand sollte die Kernprozesse vollständig abdecken, aber nicht durch Zusatzfunktionen überladen werden. Komplexe internationale Turniermodi, umfassende Drittintegrationen, Livestreaming und erweiterte Statistikfunktionen wurden deshalb bewusst zurückgestellt.

= Konkrete Ergebnisse

Das Ergebnis der Arbeit ist ein funktionsfähiger MVP einer webbasierten Turniersoftware für regionale Judo-Wettkämpfe. Organisatoren können Turniere und Kampffelder erfassen, öffentliche Registrierungslinks verwalten und angemeldete Athletinnen und Athleten bearbeiten. Am Turniertag unterstützt das System Check-in und Wiegen, sodass Anwesenheit und Gewicht direkt im gemeinsamen Datenbestand aktualisiert werden.

Für die sportliche Durchführung können Pools erstellt, bearbeitet und mit Kampfzeiten konfiguriert werden. Aus finalen Pools generiert das System automatisch Begegnungen, die Kampffeldern zugewiesen und im laufenden Betrieb angepasst werden können. Das Scoreboard zeigt die relevanten Informationen des aktuellen Kampfes an und ermöglicht die Erfassung von Resultaten. Ergänzende Anzeigeansichten stellen laufende und kommende Kämpfe für Beteiligte und Publikum übersichtlich dar.

Nach Abschluss der Kämpfe werden Resultate und Ranglisten poolweise berechnet und nachvollziehbar angezeigt. Resultate lassen sich bei Bedarf korrigieren, was den praktischen Anforderungen eines realen Turnierbetriebs entspricht.

Die Evaluation zeigt, dass der MVP die wesentlichen Kernprozesse eines regionalen Schülerturniers in einer integrierten Lösung zusammenführt. Der durchgängige Datenfluss stellt einen deutlichen Fortschritt gegenüber einer fragmentierten Organisation mit Tabellen und manuellen, nicht digitalen, Werkzeugen dar.

= Ausblick

Der entwickelte MVP ist als erster tragfähiger Baustein einer digitalen Turnierplattform für den regionalen Judosport zu verstehen. Für eine Weiterentwicklung bieten sich zusätzliche Pool- und KO-Formate, eine teilautomatisierte Poolbildung, erweiterte öffentliche Informationsansichten sowie Benachrichtigungen und mobil optimierte Ansichten an.

Technisch stehen vor allem Netzwerk- und Offline-Robustheit, eine verfeinerte Rollen- und Rechteverwaltung sowie eine stärkere serverseitige Kapselung fachkritischer Logik im Vordergrund.

Als nächster Schritt ist ein Test in einem clubinternen Turnier vorgesehen. Bei erfolgreichem Verlauf kann anschliessend der Einsatz an regionalen Schülerturnieren folgen. Damit lässt sich das MVP schrittweise validieren, gezielt verbessern und langfristig zu einer flexiblen Turnierplattform ausbauen.
