$data merge entity @e[type=text_display,scores={ss.entID=$(id)},limit=1,sort=nearest,tag=ss.statDisplay] {text:'[{"text":"Health:","underlined":true,"color":"dark_red"},{"text":"....................................$(healthval)","underlined":false,"color":"$(healthclr)"},{"text":"\\n"},{"text":"Armor:","underlined":true,"color":"#4d4d4d"},{"text":".....................................$(armorval)","underlined":false,"color":"$(armorclr)"},{"text":"\\n"},{"text":"Size:","underlined":true,"color":"#ff00ff"},{"text":"..........................................$(sizeval)","underlined":false,"color":"$(sizeclr)"},{"text":"\\n"},{"text":"Damage:","underlined":true,"color":"#1bfa80"},{"text":"..................................$(damagevalones).$(damagevaltenths)","underlined":false,"color":"$(damageclr)"},{"text":"\\n"},{"text":"Speed:","underlined":true,"color":"#59fff9"},{"text":".....................................$(speedvalones).$(speedvaltenths)","underlined":false,"color":"$(speedclr)"},{"text":"\\n"},{"text":"Block Reach:","underlined":true,"color":"#f05800"},{"text":"......................$(blockreachvalones).$(blockreachvaltenths)","underlined":false,"color":"$(blockreachclr)"},{"text":"\\n"},{"text":"Range:","underlined":true,"color":"#9f57de"},{"text":".....................................$(entityreachvalones).$(entityreachvaltenths)","underlined":false,"color":"$(entityreachclr)"},{"text":"\\n"},{"text":"Mining Speed:","underlined":true,"color":"#e3ae00"},{"text":"......................$(minespeedvalones).$(minespeedvaltenths)","underlined":false,"color":"$(minespeedclr)"},{"text":"\\n"},{"text":"Attack Speed:","underlined":true,"color":"#3fa0e8"},{"text":"......................$(attackspeedvalones).$(attackspeedvaltenths)","underlined":false,"color":"$(attackspeedclr)"}]'}



#{"text":"Health:","underlined":true,"color":"dark_red"},{"text":"....................................$(healthval)","underlined":false,"color":"$(healthclr)"},
#{"text":"\\n"},
#{"text":"Armor:","underlined":true,"color":"#4d4d4d"},{"text":".....................................$(armorval)","underlined":false,"color":"$(armorclr)"},
#{"text":"\\n"},
#{"text":"Size:","underlined":true,"color":"#ff00ff"},{"text":"..........................................$(sizeval)","underlined":false,"color":"$(sizeclr)"},
#{"text":"\\n"},
#{"text":"Damage:","underlined":true,"color":"#1bfa80"},{"text":"..................................$(damageval)","underlined":false,"color":"$(damageclr)"},
#{"text":"\\n"},
#{"text":"Speed:","underlined":true,"color":"#59fff9"},{"text":".....................................$(speedval)","underlined":false,"color":"$(speedclr)"},
#{"text":"\\n"},
#{"text":"Block Reach:","underlined":true,"color":"#f05800"},{"text":"......................$(blockreachval)","underlined":false,"color":"$(blockreachclr)"},
#{"text":"\\n"},
#{"text":"Entity Reach:","underlined":true,"color":"#9f57de"},{"text":"......................$(entityreachval)","underlined":false,"color":"$(entityreachclr)"},
#{"text":"\\n"},
#{"text":"Mining Speed:","underlined":true,"color":"#e3ae00"},{"text":"......................$(minespeedval)","underlined":false,"color":"$(minespeedclr)"}