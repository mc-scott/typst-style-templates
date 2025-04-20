# `Typst` style templates

Typst is a typesetting system that can be used in place fo LaTeX. Quarto's engines can render Typst-styled documents into a wide variety of styles including scientific journals, posters, and newsletters - all compiled into a PDF output. 

You have a couple of options when styling PDFs using Typst syntax. 

## Option 1

The first and easiest to achieve would be to add a `typst` block directly to the start of a `.qmd` document. Specify in the header-yaml the output format is typst and then add the block. You can now continue writing in the `qmd` file as usual:

```
---
format: typst
---
```

```{=typst}

<... code here ...>

```

However, be aware that as soon as you add other arguments like `title: "My title"` or `author: "Me"` to the header-yaml, your carefully-created style will break as quarto adds an un-styled title page with these details on to your document. You'd have to add these options in using typst instead.

See [`code-blocks-template.qmd`](code-blocks-template.qmd).

## Option 2

Use a variety of typst options exposed through the header-yaml in quarto. Be careful as arguments like `logo` only apply to sliders.

```
format:
  typst:
    <options go here>

```

See [`header-yaml-template.qmd`](header-yaml-template.qmd).

## Option 3 (and the most promising option)

Use template files

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
- [Typst documentation on creating templates](https://typst.app/docs/tutorial/making-a-template/)
- [Quarto documentation on using custom templates](https://quarto.org/docs/output-formats/typst-custom.html#advanced-customization)

## Option 4

TODO: Could also use a `_brand.yml` file to style `typst` outputs because this is supported for typst but not pdf outputs.

See [Quarto documentation on brand yaml and typst outputs](https://quarto.org/docs/advanced/typst/brand-yaml.html)
