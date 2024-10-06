
execute as @s[tag=!ss.maxArmor] run function restat:items/statitems/supplements/statchange
execute as @s[tag=ss.maxArmor] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
advancement revoke @s only restat:statitems/supplementbrick
function restat:setstats

