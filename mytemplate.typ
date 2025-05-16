#import "@preview/clean-math-paper:0.1.0": *
#import "@preview/colorful-boxes:1.4.2": *

#let def(texta) = {
    text(rgb("#31c831"))[
  #definition()[
    $texta$
  ]]
}
#let the(texta, title:none) = {
    theorem(title: title)[
    $texta$
  ]
}

#let box(color, title, body) = {
colorbox(title:title,
color: color,
radius: 2pt,
)[#text(black, body)]
}

#let warning(body) = {
stickybox(rotation: 0deg, width: 17cm)[
  

    
    #place(left, figure(image("/images/icon_warning.png", width: 9%, height: 6%)))


    #move(dx: 5em, dy: 0em)[
      #block(width: 14cm, 
      text(black, stretch:10%)[ $#h(2em)body$ ]
      )
  
    ]
]
}
#let lwarning(body) = {
stickybox(rotation: 0deg, width: 16.1cm)[
  

    
    #place(left, figure(image("/images/icon_warning.png", width:9%, height: 6%)))


    #move(dx: 5em, dy: 0em)[
      #block(width: 14cm, 
      text(black, stretch:10%)[ $#h(2em)body$ ]
      )
  
    ]
]
}
#let example_(body) = {
stickybox(rotation: 0deg, width: 16cm)[
  

    #move(dx: -0.5em, dy: 1em)[
    #place(left, figure(image("/images/icon_example.png", width: 15%, height: 9%)))
    ]


    #move(dx: 7em, dy: 0em)[
      #block(width: 14cm, 
      text(black, stretch:10%)[ $body$ ]
      )
  
    ]
]
}

#let king(body, height:10%) = {
block(width: 16cm, fill:rgb("#adc8fb"), radius: 0.2cm, height: height)[
#rotate(90deg)[#place(left, figure(image("/images/icon_left.png", height: 1cm)))]
#h(2em)#text(rgb("#ffffff"), body)

 #move(dx: 15.25cm, dy: -3.5em)[
  #rotate(90deg, figure(image("/images/icon_right.png", height: 1cm)))
 ]
]
}

#let date = datetime.today().display("[month repr:long] [day], [year]")
