#set document(
  author: "Jhon",//auteur
  title: "Rapport_de_periode_entreprise",//titre du fichier dans le document
  keywords: ("strarray", "strarray"),//mots clés
  date: datetime.today()//date du jour
)

#set page(//mise en page et taille de la page
     paper: "a4",
     margin: (x: 3.0cm, y: 3cm),
)
#set text(//texte de base
  size: 12pt,
  font: "Linux Libertine",
  lang: "fr",
)

#place(top + right, //ENSSAT
  grid(
    columns: (1fr),
    rows: (auto, auto),
    gutter: 3pt,
    grid.cell(
      rowspan: 1,
      image("images/enssat-logo.png", height: 9%),//taille des logos a ajuster si besoin
    ),
    grid.cell(
      rowspan: 1,
      text("
Enssat - École Nationale Supérieure des
Sciences Appliquées et de Technologie
6 Rue de Kerampont CS 80518
22305 Lannion
Téléphone 02 96 46 90 00
      ", 8pt),
    ),
  )
)


#place(top + left, //ENTREPRISE
  grid(
    columns: (1fr),
    rows: (auto, auto),
    gutter: 3pt,
    grid.cell(
      rowspan: 1,
      image("images/orange-logo.png", height: 10%),//taille des logos a ajuster si besoin
    ),
    grid.cell(
      rowspan: 1,
      text("
Orange xxxxx
xxxxxxxxxxxxxxxxxxxx
xxxxx xxxxxxxxxxxxxx
      ", 8pt),
    ),
  )
)


#align(center + horizon, text(20pt)[//titre de la page de garde
  *Rapport de période d'entreprise*
])

#align(center, text(14pt)[//auteur
  _Orange_

  _Ingénieur par alternance en Informatique_

  //date de l'année en cours
  _#datetime.today().year()_
])

\

#align(center + horizon, text(12pt)[
  Réalisé par
])
#align(center + horizon, text(16pt)[
  DOE Jhon
])
#align(center + horizon, text(12pt)[
  #datetime.today().display()
])

#align(center + bottom,
  grid(
  columns: (1fr, 1fr),
  align(center + bottom)[
    Tuteur professionnel \
    xxxxxxxxxx bob \
    #link("mailto:bob@xxxxx.edu")
  ],
  align(center + bottom)[
    Tuteur enseignant \
    xxxxxxxxxx alice \
    #link("mailto:alice@xxxxx.edu")
  ]
)
)





#pagebreak()//--------------------------------------------------------------------
#let stick-together(a, b, threshold: 3em) = {//fonction pour coller les paragraphes
  block(a + v(threshold), breakable: false)
  v(-1 * threshold)
  b
}

#set page(//mise en page
  margin: (x: 3.0cm, y: 1.5cm, top: 3cm),

  header://entête

    align(center,
        grid(
        columns: (1fr, 1fr, 1fr),
        align(left)[
          #place(left, image("images/orange-logo.png", height: 70%))
        ],
        align(center)[
          Rapport d'alternance
        ],
        align(right)[
          #place(right, image("images/enssat-logo.png", height: 60%))
        ],
      )
    ),
  header-ascent: 50%,
  

  footer://pied de page
    align(center)[
    #place(left, text("Jhon DOE"))
    #place(right, 
    counter(page).display(
      "1 / 1",
      both: true,
    )
    )
    #datetime.today().display()
  ],

)


#set par(justify: true)

#align(center + horizon)[
= Résumé
#lorem(60)

_Mots-clés : alternance, rapport, Orange, #lorem(10), electronic @electronic _
]


#pagebreak()

#align(center + horizon)[
_Remerciements._

_#lorem(20)_
]



#pagebreak()

#outline()

#pagebreak()

#outline(title: "Table des figures", target: figure.where(kind: image))

= Glossaire

/ Fact<Fact>: If a term list has a lot of text, and maybe other inline content, it should not be tight anymore.
/ Tip: To make it wide, simply insert a blank line between the items.



#pagebreak()

#set heading(numbering: "1.")



= Introduction
== Présentation de l'entreprise et du sujet traité dans le rapport
=== Orange groupe 
#lorem(40)

#figure(
  image("images/orange-logo.png", width: 50%),
  caption: [
    logo de orange
  ],
) <orange-logo>

#lorem(40)
=== #lorem(5)
#lorem(40)
== #lorem(5)
#lorem(40)

#lorem(500)
//#lorem(550)


//ici on a un titre et in ne veut pas de saut de page directement après le titre, on utilise donc la fonction stick-together

#stick-together(//fonction pour coller les paragraphes et ne pas avoir de saut de page
  threshold: 5em,//taille de l'espace entre les paragraphes
  [//ici on a un titre qui est collé au paragraphe suivant afin de ne pas avoir de saut de page directement après le titre
    = #lorem(5)
    == #lorem(5)
    === #lorem(5)
  ],[//ici on a un paragraphe qui est collé au titre précédent
    #lorem(200)
    //#lorem(800)
  ]
  
)


#lorem(600)

#figure(
  image("images/enssat-logo.png", width: 50%),
  caption: [
    logo de l'enssat
  ],
) <enssat-logo>

#lorem(600)


#bibliography("bibliography.yml")

