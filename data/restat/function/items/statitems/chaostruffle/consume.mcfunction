execute store result storage restat:chaostruffle chaostruffle.id int 1 run scoreboard players get @s ss.entID



execute as @s[tag=ss.nochest,scores={ss.effect.chaosTruffle=1}] run function restat:items/statitems/chaostruffle/reversestats with storage restat:chaostruffle chaostruffle

execute as @s[tag=ss.nochest,scores={ss.effect.chaosTruffle=0}] run function restat:items/nochest/remove

execute as @s[tag=!ss.nochest,scores={ss.effect.chaosTruffle=0}] run function restat:items/statitems/chaostruffle/rollstats with storage restat:chaostruffle chaostruffle

advancement grant @s only restat:packdesc/noarmor/chaostruffle-on

advancement revoke @s only restat:statitems/chaostruffle