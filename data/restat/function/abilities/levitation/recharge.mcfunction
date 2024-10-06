execute as @s[scores={ss.levitationCharge=..299}] run scoreboard players add @s ss.levitationCharge 2


execute as @s[scores={ss.levitationCharge=300..}] at @s run particle minecraft:dust_plume ~ ~ ~ .15 .15 .15 .05 70 force @s
execute as @s[scores={ss.levitationCharge=300..}] at @s run particle minecraft:wax_off ~ ~ ~ .5 1 .5 1 40 force @s
execute as @s[scores={ss.levitationCharge=300..}] at @s run playsound minecraft:sanwichstats.magicwoosh master @s ~ ~ ~ .3 1.1

execute as @s[scores={ss.levitationCharge=300..}] run scoreboard players set @s ss.levitationCharge 300