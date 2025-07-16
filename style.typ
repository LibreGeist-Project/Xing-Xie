#import "@preview/shadowed:0.2.0": shadowed
#import "@preview/wrap-it:0.1.1": wrap-content
#import "@preview/hydra:0.6.1": hydra
#import "@preview/shadowed:0.2.0": shadowed
#import "@preview/wrap-it:0.1.1": wrap-content

#let gfsize = 20mm;
#let isNormalPage = true;
#let bak_font = "WenYuan Serif SC";

#let def_style(content) = {
//  set page(width: 890mm, height: 1240mm) if (isNormalPage)
//  set page(numbering: "1")
  set text(
    font: (
      (name: "New Computer Modern", covers: "latin-in-cjk"), // English Font
      "FZShuSong-Z01S",
      bak_font, // Chinese font
    ),
    lang: "zh",
    region: "CN",
    size: gfsize,
    tracking: 0.4pt,
    ligatures: true,

  )
  set quote(block: true)
  show quote: set align(center)
  show quote: set pad(x: 1em)
  show quote: text.with(font: "Zhuque Fangsong (technical preview)")

  show "？": text.with(font: bak_font)
  show "！": text.with(font: bak_font)
  show "——": text.with(font: bak_font)

  show strong: it => {
    set text(font: bak_font, text.size*0.94)
    // sans-serif 代表系统默认无衬线字体
    it// 可选：保留加粗样式或替换为其他效果
  }

  show heading: it => {
    set text(font: bak_font)
    it
    v(0.5em)
  }

  show heading.where(level: 1): it => {
    set align(center+horizon)
    it
  }

  show heading.where(level: 2): it => {
    set align(center)
    it
  }

  set heading(numbering: none)
  set par(spacing: 0.8em, justify: true, first-line-indent: (
    all: true,
    amount: 2em,
  ))
  set math.cancel(stroke: (thickness: 0.8mm))
  content
}

#let prelims(head, content) = {
//  set page(footer: none)
  set text(gfsize + 5mm)
  set align(center + horizon)
  v(-4em)
  head
  v(3em)
  text(font: "Zhuque Fangsong (technical preview)")[#content]
}
