# `Typst` style templates

Typst is a typesetting system that can be used in place fo LaTeX. Quarto's engines can render Typst-styled documents into a wide variety of styles including scientific journals, posters, and newsletters - all compiled into a PDF output. 

You have a couple of options when styling PDFs using Typst syntax. 

# 1

The first and easiest to achieve would be to add a `typst` block directly to the start of a `.qmd` document. Specify in the header-yaml the output format is typst and then add the block. You can now continue writing in the `qmd` file as usual:

```
---
format: typst
---

```{=typst}
// page style attributes
#set page(
    paper: "a4",
    fill: rgb("#f3f6f4"),
    numbering: "| 1 of 1",
    number-align: right,
    header: [
        #set text(12pt)
        #smallcaps[My brand here]
        #h(1fr) OFFICIAL
        
    ],
    columns: 1
  )
#set par(
  justify: true
)

#set text(
  font: "Source Serif Pro",
  size: 14pt
)

// style headers
#show heading.where(level: 1): set text(
    weight: "extrabold", 
    fill: rgb("#483B8B"), 
    size: 25pt, 
    font: "Source Sans Pro"
)

#show heading.where(level: 2): set text(
    weight: "medium", 
    fill: rgb("#483B8B"), 
    size: 20pt
)
```

However, be aware that as soon as you add other arguments like `title: "My title"` or `author: "Me"` to the header-yaml, your carefully created style will break as quarto adds an unstyled title page with these details on to your document so you'd have to do this using typst blocks instead.

See [`template.qmd`](template.qmd).

# 2

TODO: get typst templates working and add them in header-yaml configuration using 

```
format:
  typst:
    template-partials:
      - typst-template.typ
      - typst-show.typ
```

See [`typst-template.typ`](typst-template.typ) and [`typst-show.typ`](typst-show.typ) for my progress here so far.

## Getting it to work
- https://typst.app/docs/tutorial/making-a-template/
- https://quarto.org/docs/output-formats/typst-custom.html#advanced-customization