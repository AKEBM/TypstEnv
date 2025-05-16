#import "../mytemplate.typ": *

// depuis le dossier (ex:.../Maths) -> typst watch base.typ --root "../"

#let title = "Mathématiques - Structures algébriques"
#show: template.with(
  title: title,
  date: date,
  heading-color: rgb("#FF0000"),
  link-color: rgb("#12472b"),
  
)
#show heading.where(depth:1): it => underline(it)
#show heading.where(depth:2): it => text(rgb("#FF33FF"), it)
#show heading.where(depth:3): it => text(rgb("#ef99ef"), it)
#set text(rgb("#138f61"))