#import "template/style.typ": *
#show: def_style
#context {
//  set page(footer: none)
  align(center+horizon)[#scale(400%, [*星屑*])]
}
#{
  prelims[][南陌扫花尘，北陌存芳土。往返竟何之？异道相安处。
  
  采月赖清瞳，幽影谁人顾。曾许共分光，星屑织帷幕。
  
  ——题记]

  prelims[][
    献给此书的第一位读者
  ]
}
//#page(numbering: "i")[
#{
  counter(page).update(1)
  include "P.typ"
  pagebreak()
}

#context [
//  #set page(header: none)
  #outline()
]

#prelims([= 第一章 死亡], [
  前言
  #v(1em)
  最沉重的问题，放在最前面。
])
#pagebreak()
#counter(page).update(1)

#include "1.typ"
#prelims[= 第二章 哲学][
  亲爱的朋友，所有理论都是灰色的，而生命的金树长青。 ——《浮士德第一章：书斋》 
  #v(1em)
  Grau, teurer Freund, ist alle Theorie, Und grün des Lebens goldner Baum.
  
   ——Faust I: Studierzimmer
]

#prelims[#text(30mm)[*极简哲学史*]][

这一份哲学史是为了行动者所准备的。我努力刨除多余的杂质，试图使之成为一个连续的行动纲领。

这一纲领蕴含了古希腊四美德中的三个：正义、勇敢、节制；而将对智慧的爱（philo-sophia），替换为了对生命的欲望（eros），欲望，是一切哲学的最内在秘密。

极简哲学史只涉及很少的哲学家，它们分别是：

笛卡尔、斯宾诺莎、莱布尼兹、康德、费希特、谢林、黑格尔、马克思、胡塞尔、海德格尔。

其中最重要的角色，是笛卡尔、康德、黑格尔、海德格尔，他们是哲学的四个最重要节点。仅这四个人是沉浸在思辨当中，并终其一生贯彻了哲学的使命——表达一种名为“智慧”的欲望。尽管其他人的理智努力都是歧路，但至少表达了一种与哲学相关的生命冲动。
]

#include "2.typ"

#prelims[= 第三章 爱欲][纤云弄巧，飞星传恨，银汉迢迢暗度。

金风玉露一相逢，便胜却、人间无数。

柔情似水，佳期如梦，忍顾鹊桥归路。

两情若是久长时，又岂在、朝朝暮暮。]

#include "3.typ"
