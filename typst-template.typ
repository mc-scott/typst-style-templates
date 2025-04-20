#let report(
  title: "title",
  body,
) = {

set page(
  paper: "a4",
  fill: rgb("#f3f6f4"),
  header: [
    #set text(12pt)
    #smallcaps[The Pensions Regulator]
    #h(1fr) OFFICIAL
  ],
  numbering: "TPR | 1 of 1",
  number-align: right
)

#set par(
  justify: true
)

#set text(
  font: "Source Serif Pro",
  size: 14pt
)

}