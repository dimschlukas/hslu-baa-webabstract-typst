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
    right: 1.8mm,
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
  (BAA-Titel)
]


#table(
  stroke: none,
  inset: (x: 0mm, y:2.3mm),
  columns: (1fr, 3fr),
  [*Themenbereich*],[xxx],
  [*Studierende*],[xxx],
  [*Betreuungsperson*],[xxx],
  [*Experte*],[xxx],
  [*Auftraggebende*],[xxx],
  [*Keywords*],[xxx],
)


= Aufgabenstellung

(Text)

= Vorgehen / Lösungskonzept

(Text)

= Spezielle Herausforderungen

(Text)

= Konkrete Ergebnisse

(Text)

= Ausblick

(Text)
