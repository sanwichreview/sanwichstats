

execute as @s store result storage restat:entid bonusdisplay.entid int 1 run scoreboard players get @s ss.entID
execute as @s at @s run function restat:statbonusdisplay/tpmacro with storage restat:entid bonusdisplay


