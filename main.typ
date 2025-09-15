#import "@preview/bubble:0.2.2": *

#show: bubble.with(
  title: "Historia PSPK",
  subtitle: "Samorząd Studencki Politechniki Koszalińskiej w latach 1984-2025",
  author: "Jakub Achtelik",
  affiliation: "Politechnika Koszalińska",
  date: "Kronika Parlamentu Studentów Politechniki Koszalińskiej", 
  year: "Koszalin 2025",
  class: "Parlament Studentów Politechniki Koszalińśkiej",
  other: ("Opracowanie i skład tekstu: Jakub Achtelik", " "),
  main-color: "00365f",
  logo: image("logo.png", width: 15%), 
  
)


// spis tresci
#set heading(numbering: "1.")


#show outline.entry.where(
  level: 1
): it => {
  v(12pt, weak: true)
  strong(it)
}

#outline(
  indent: auto,
  title: [Spis Treści],
)

#set figure.caption(position: bottom)

#set text(lang: "pl")




#pagebreak()

#include "rozdzialy/wstep.typ"
#pagebreak()

#include "rozdzialy/pspk.typ"
#pagebreak()

#include "rozdzialy/kadencje.typ"
#pagebreak()

#include "rozdzialy/ogolnopolsko.typ"
#pagebreak()

#include "rozdzialy/tks.typ"
#pagebreak()




#bibliography("bibliografia.bib")