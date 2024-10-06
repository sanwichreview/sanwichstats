execute at @s as @a[distance=..3] run effect give @s resistance 1 100 true 
execute at @s anchored eyes run summon firework_rocket ^ ^ ^.5 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;16777215],fade_colors:[I;16776074]},{shape:"small_ball",colors:[I;16715535],fade_colors:[I;16777215]}]}}}}

advancement revoke @s only restat:popcorncraft