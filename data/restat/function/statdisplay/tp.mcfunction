

execute as @s store result storage restat:entid statdisplay.entid int 1 run scoreboard players get @s ss.entID
execute as @s at @s run function restat:statdisplay/tpmacro with storage restat:entid statdisplay


