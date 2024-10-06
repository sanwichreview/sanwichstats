execute as @s[scores={ss.levitationCharge=1..}] run scoreboard players remove @s ss.levitationCharge 1


#execute as @s[scores={ss.levitationCharge=300}] at @s run particle dust{color:[0.110,0.000,0.000],scale:1} ~ ~ ~ .5 1 .5 1.5 15 force @s

execute as @s[scores={ss.levitationCharge=60}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .1 1.5
execute as @s[scores={ss.levitationCharge=40}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .1 1.5
execute as @s[scores={ss.levitationCharge=20}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .1 1.5
execute as @s[scores={ss.levitationCharge=1}] at @s run playsound minecraft:sanwichstats.magicbell master @s ~ ~ ~ .3 1.1 .2
execute as @s[scores={ss.levitationCharge=1}] at @s run scoreboard players set @s ss.levitateDepleteTimer 1