tag @s[tag=!ss.tpInterrupt] add ss.tpCancel
attribute @s gravity modifier remove ss.gravitytemp
effect give @s slow_falling 2 0 true
scoreboard players set @s ss.isDoubleJumped 0
scoreboard players set @s ss.teleportCharge 0
tag @s add ss.tpBlock
tag @s remove ss.tpInterrupt
execute as @s at @s run playsound minecraft:block.copper_bulb.turn_on master @s ~ ~ ~ 1 0.3