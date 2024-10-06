
scoreboard players add @s ss.levitationUnstuckTimer 1

execute as @s[scores={ss.levitationUnstuckTimer=1..10}] run attribute @s generic.gravity base set .015

execute as @s[scores={ss.levitationUnstuckTimer=11}] run function restat:abilities/levitation/ascendlevitation
execute as @s[scores={ss.levitationUnstuckTimer=11..}] run tag @s remove ss.levitationUnstuck
execute as @s[scores={ss.levitationUnstuckTimer=11..}] run scoreboard players set @s ss.levitationUnstuckTimer 0
