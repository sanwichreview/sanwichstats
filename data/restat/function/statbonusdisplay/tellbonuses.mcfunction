
tag @s add ss.displayBonuses

execute store result storage restat:tellbonuses tellbonuses.healthval double 1 run scoreboard players get @s ss.healthBonus 
execute as @s[scores={ss.healthBonus=0}] run data modify storage restat:tellbonuses tellbonuses.healthclr set value gray
execute as @s[scores={ss.healthBonus=5..}] run data modify storage restat:tellbonuses tellbonuses.healthclr set value dark_green
execute as @s[scores={ss.healthBonus=1..4}] run data modify storage restat:tellbonuses tellbonuses.healthclr set value "#3b8f4e"
execute as @s[scores={ss.healthBonus=-4..-1}] run data modify storage restat:tellbonuses tellbonuses.healthclr set value "gold"
execute as @s[scores={ss.healthBonus=..-5}] run data modify storage restat:tellbonuses tellbonuses.healthclr set value red


execute store result storage restat:tellbonuses tellbonuses.armorval double 1 run scoreboard players get @s ss.armorBonus
execute as @s[scores={ss.armorBonus=0}] run data modify storage restat:tellbonuses tellbonuses.armorclr set value gray
execute as @s[scores={ss.armorBonus=1..10}] run data modify storage restat:tellbonuses tellbonuses.armorclr set value "#3b8f4e"
execute as @s[scores={ss.armorBonus=11..}] run data modify storage restat:tellbonuses tellbonuses.armorclr set value dark_green
execute as @s[scores={ss.armorBonus=-5..-1}] run data modify storage restat:tellbonuses tellbonuses.armorclr set value gold
execute as @s[scores={ss.armorBonus=..-6}] run data modify storage restat:tellbonuses tellbonuses.armorclr set value red


execute store result storage restat:tellbonuses tellbonuses.sizeval double .1 run scoreboard players get @s ss.sizeBonus 
execute as @s[scores={ss.sizeBonus=-2..2}] run data modify storage restat:tellbonuses tellbonuses.sizeclr set value "#3b8f4e"
execute as @s[scores={ss.sizeBonus=0}] run data modify storage restat:tellbonuses tellbonuses.sizeclr set value gray
execute as @s[scores={ss.sizeBonus=3..}] run data modify storage restat:tellbonuses tellbonuses.sizeclr set value red
execute as @s[scores={ss.sizeBonus=..-3}] run data modify storage restat:tellbonuses tellbonuses.sizeclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.damageBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellbonuses tellbonuses.damagevalones int .1 run scoreboard players get @s ss.damageBonus
execute store result storage restat:tellbonuses tellbonuses.damagevaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.damageBonus=0}] run data modify storage restat:tellbonuses tellbonuses.damageclr set value gray
execute as @s[scores={ss.damageBonus=1..20}] run data modify storage restat:tellbonuses tellbonuses.damageclr set value "#3b8f4e"
execute as @s[scores={ss.damageBonus=21..}] run data modify storage restat:tellbonuses tellbonuses.damageclr set value dark_green
execute as @s[scores={ss.damageBonus=-10..-1}] run data modify storage restat:tellbonuses tellbonuses.damageclr set value gold
execute as @s[scores={ss.damageBonus=..-11}] run data modify storage restat:tellbonuses tellbonuses.damageclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.speedBonus
scoreboard players set $100 ss.intTemp 100
scoreboard players operation @s ss.mathTemp %= $100 ss.intTemp 

execute store result storage restat:tellbonuses tellbonuses.speedvalones int .01 run scoreboard players get @s ss.speedBonus
execute store result storage restat:tellbonuses tellbonuses.speedvaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.speedBonus=0}] run data modify storage restat:tellbonuses tellbonuses.speedclr set value gray
execute as @s[scores={ss.speedBonus=1..20}] run data modify storage restat:tellbonuses tellbonuses.speedclr set value "#3b8f4e"
execute as @s[scores={ss.speedBonus=21..}] run data modify storage restat:tellbonuses tellbonuses.speedclr set value dark_green
execute as @s[scores={ss.speedBonus=-10..-1}] run data modify storage restat:tellbonuses tellbonuses.speedclr set value gold
execute as @s[scores={ss.speedBonus=..-11}] run data modify storage restat:tellbonuses tellbonuses.speedclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.blockReachBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellbonuses tellbonuses.blockreachvalones int .1 run scoreboard players get @s ss.blockReachBonus
execute store result storage restat:tellbonuses tellbonuses.blockreachvaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.blockReachBonus=0}] run data modify storage restat:tellbonuses tellbonuses.blockreachclr set value gray
execute as @s[scores={ss.blockReachBonus=1..15}] run data modify storage restat:tellbonuses tellbonuses.blockreachclr set value "#3b8f4e"
execute as @s[scores={ss.blockReachBonus=16..}] run data modify storage restat:tellbonuses tellbonuses.blockreachclr set value dark_green
execute as @s[scores={ss.blockReachBonus=-10..-1}] run data modify storage restat:tellbonuses tellbonuses.blockreachclr set value gold
execute as @s[scores={ss.blockReachBonus=..-11}] run data modify storage restat:tellbonuses tellbonuses.blockreachclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.entityReachBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellbonuses tellbonuses.entityreachvalones int .1 run scoreboard players get @s ss.entityReachBonus 
execute store result storage restat:tellbonuses tellbonuses.entityreachvaltenths int 1 run scoreboard players get @s ss.mathTemp 
execute as @s[scores={ss.entityReachBonus=0}] run data modify storage restat:tellbonuses tellbonuses.entityreachclr set value gray
execute as @s[scores={ss.entityReachBonus=1..10}] run data modify storage restat:tellbonuses tellbonuses.entityreachclr set value "#3b8f4e"
execute as @s[scores={ss.entityReachBonus=11..}] run data modify storage restat:tellbonuses tellbonuses.entityreachclr set value dark_green
execute as @s[scores={ss.entityReachBonus=-5..-1}] run data modify storage restat:tellbonuses tellbonuses.entityreachclr set value gold
execute as @s[scores={ss.entityReachBonus=..-6}] run data modify storage restat:tellbonuses tellbonuses.entityreachclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.mineSpeedBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellbonuses tellbonuses.minespeedvalones int .1 run scoreboard players get @s ss.mineSpeedBonus 
execute store result storage restat:tellbonuses tellbonuses.minespeedvaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.mineSpeedBonus=0}] run data modify storage restat:tellbonuses tellbonuses.minespeedclr set value gray
execute as @s[scores={ss.mineSpeedBonus=1..14}] run data modify storage restat:tellbonuses tellbonuses.minespeedclr set value "#3b8f4e"
execute as @s[scores={ss.mineSpeedBonus=15..}] run data modify storage restat:tellbonuses tellbonuses.minespeedclr set value dark_green
execute as @s[scores={ss.mineSpeedBonus=-7..-1}] run data modify storage restat:tellbonuses tellbonuses.minespeedclr set value gold
execute as @s[scores={ss.mineSpeedBonus=..-8}] run data modify storage restat:tellbonuses tellbonuses.minespeedclr set value red



scoreboard players operation @s ss.mathTemp = @s ss.attackSpeedBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellbonuses tellbonuses.attackspeedvalones int .1 run scoreboard players get @s ss.attackSpeedBonus 
execute store result storage restat:tellbonuses tellbonuses.attackspeedvaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.attackSpeedBonus=0}] run data modify storage restat:tellbonuses tellbonuses.attackspeedclr set value gray
execute as @s[scores={ss.attackSpeedBonus=1..2}] run data modify storage restat:tellbonuses tellbonuses.attackspeedclr set value "#3b8f4e"
execute as @s[scores={ss.attackSpeedBonus=3..}] run data modify storage restat:tellbonuses tellbonuses.attackspeedclr set value dark_green
execute as @s[scores={ss.attackSpeedBonus=-2..-1}] run data modify storage restat:tellbonuses tellbonuses.attackspeedclr set value gold
execute as @s[scores={ss.attackSpeedBonus=..-3}] run data modify storage restat:tellbonuses tellbonuses.attackspeedclr set value red


#summoning text display without text, then linking it to the player via scoreboard id
execute as @s[tag=!ss.bonusDisplayLinked] at @s run summon text_display ~ ~ ~ {billboard:"center",teleport_duration:1,see_through:0b,brightness:{sky:15,block:15},Tags:["ss.bonusDisplay"],background:1681596226,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.2f,.2f,.2f]},text:'{"text":"test"}'}
execute as @s[tag=!ss.bonusDisplayLinked] at @s run scoreboard players operation @e[type=text_display,tag=ss.bonusDisplay,limit=1,sort=nearest] ss.entID = @s ss.entID

#add /trigger option later- if you have a certain tag, display your bonuses in the chat instead of through the entity 
#execute as @s[tag=ss.tellMebonuses] run function restat:tellbonusesmacro with storage restat:tellbonuses tellbonuses 

#update the text display entity data via macro with all of your bonuses
execute store result storage restat:tellbonuses tellbonuses.id int 1 run scoreboard players get @s ss.entID
function restat:statbonusdisplay/updatemacro with storage restat:tellbonuses tellbonuses

#a little temporary exclusion tag so the trigger command for this whole function can act like an on/off switch. if this little tag isnt here then the tag ss.statDisplayLinked will just be given and then taken away in the same function
execute as @s[tag=ss.bonusDisplayLinked,scores={showbonuses=1}] run tag @s add ss.bonusDisplayRemove

#if you currently have a stat display up you should have the tag ss.statDisplayLinked, so this function removes your stat display related tags and kills the text entity only if you have one up.
execute as @s[tag=ss.bonusDisplayLinked,scores={showbonuses=1}] run function restat:statbonusdisplay/remove with storage restat:tellbonuses tellbonuses

scoreboard players set @s showbonuses 0
scoreboard players enable @s showbonuses
tag @s[tag=!ss.bonusDisplayRemove] add ss.bonusDisplayLinked
tag @s remove ss.bonusDisplayRemove