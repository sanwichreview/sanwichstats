
tag @s add ss.displayStats

scoreboard players operation @s ss.mathTemp = @s ss.health
scoreboard players operation @s ss.mathTemp += @s ss.healthBonus

execute store result storage restat:tellstats tellstats.healthval double 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.mathTemp=20}] run data modify storage restat:tellstats tellstats.healthclr set value gray
execute as @s[scores={ss.mathTemp=21..}] run data modify storage restat:tellstats tellstats.healthclr set value dark_green
execute as @s[scores={ss.mathTemp=11..19}] run data modify storage restat:tellstats tellstats.healthclr set value gold
execute as @s[scores={ss.mathTemp=1..10}] run data modify storage restat:tellstats tellstats.healthclr set value red


execute store result storage restat:tellstats tellstats.armorval double 1 run scoreboard players get @s ss.armor 
execute as @s[scores={ss.armor=0}] run data modify storage restat:tellstats tellstats.armorclr set value gray
execute as @s[scores={ss.armor=1..10}] run data modify storage restat:tellstats tellstats.armorclr set value "#3b8f4e"
execute as @s[scores={ss.armor=11..}] run data modify storage restat:tellstats tellstats.armorclr set value dark_green
execute as @s[scores={ss.armor=-10..-1}] run data modify storage restat:tellstats tellstats.armorclr set value gold
execute as @s[scores={ss.armor=-20..-11}] run data modify storage restat:tellstats tellstats.armorclr set value red


execute store result storage restat:tellstats tellstats.sizeval double .1 run scoreboard players get @s ss.size 
execute as @s[scores={ss.size=10}] run data modify storage restat:tellstats tellstats.sizeclr set value gray
execute as @s[scores={ss.size=4..9}] run data modify storage restat:tellstats tellstats.sizeclr set value "#3b8f4e"
execute as @s[scores={ss.size=11..16}] run data modify storage restat:tellstats tellstats.sizeclr set value gold
execute as @s[scores={ss.size=17..}] run data modify storage restat:tellstats tellstats.sizeclr set value red
execute as @s[scores={ss.size=..3}] run data modify storage restat:tellstats tellstats.sizeclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.damage
scoreboard players operation @s ss.mathTemp += @s ss.damageBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.intTemp = @s ss.mathTemp
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellstats tellstats.damagevalones int .1 run scoreboard players get @s ss.intTemp
execute store result storage restat:tellstats tellstats.damagevaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.intTemp=10}] run data modify storage restat:tellstats tellstats.damageclr set value gray
execute as @s[scores={ss.intTemp=11..20}] run data modify storage restat:tellstats tellstats.damageclr set value "#3b8f4e"
execute as @s[scores={ss.intTemp=21..}] run data modify storage restat:tellstats tellstats.damageclr set value dark_green
execute as @s[scores={ss.intTemp=1..9}] run data modify storage restat:tellstats tellstats.damageclr set value gold
execute as @s[scores={ss.intTemp=..0}] run data modify storage restat:tellstats tellstats.damageclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.speed
scoreboard players operation @s ss.mathTemp += @s ss.speedBonus
scoreboard players set $100 ss.intTemp 100
scoreboard players operation @s ss.intTemp = @s ss.mathTemp
scoreboard players operation @s ss.mathTemp %= $100 ss.intTemp 

execute store result storage restat:tellstats tellstats.speedvalones int .01 run scoreboard players get @s ss.intTemp
execute store result storage restat:tellstats tellstats.speedvaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.intTemp=100}] run data modify storage restat:tellstats tellstats.speedclr set value gray
execute as @s[scores={ss.intTemp=101..130}] run data modify storage restat:tellstats tellstats.speedclr set value "#3b8f4e"
execute as @s[scores={ss.intTemp=131..}] run data modify storage restat:tellstats tellstats.speedclr set value dark_green
execute as @s[scores={ss.intTemp=80..99}] run data modify storage restat:tellstats tellstats.speedclr set value gold
execute as @s[scores={ss.intTemp=..79}] run data modify storage restat:tellstats tellstats.speedclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.blockReach
scoreboard players operation @s ss.mathTemp += @s ss.blockReachBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.intTemp = @s ss.mathTemp
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellstats tellstats.blockreachvalones int .1 run scoreboard players get @s ss.intTemp
execute store result storage restat:tellstats tellstats.blockreachvaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.intTemp=45}] run data modify storage restat:tellstats tellstats.blockreachclr set value gray
execute as @s[scores={ss.intTemp=46..55}] run data modify storage restat:tellstats tellstats.blockreachclr set value "#3b8f4e"
execute as @s[scores={ss.intTemp=56..}] run data modify storage restat:tellstats tellstats.blockreachclr set value dark_green
execute as @s[scores={ss.intTemp=35..44}] run data modify storage restat:tellstats tellstats.blockreachclr set value gold
execute as @s[scores={ss.intTemp=..34}] run data modify storage restat:tellstats tellstats.blockreachclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.entityReach
scoreboard players operation @s ss.mathTemp += @s ss.entityReachBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.intTemp = @s ss.mathTemp
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp


execute store result storage restat:tellstats tellstats.entityreachvalones int .1 run scoreboard players get @s ss.intTemp 
execute store result storage restat:tellstats tellstats.entityreachvaltenths int 1 run scoreboard players get @s ss.mathTemp 
execute as @s[scores={ss.intTemp=30}] run data modify storage restat:tellstats tellstats.entityreachclr set value gray
execute as @s[scores={ss.intTemp=31..40}] run data modify storage restat:tellstats tellstats.entityreachclr set value "#3b8f4e"
execute as @s[scores={ss.intTemp=41..}] run data modify storage restat:tellstats tellstats.entityreachclr set value dark_green
execute as @s[scores={ss.intTemp=25..29}] run data modify storage restat:tellstats tellstats.entityreachclr set value gold
execute as @s[scores={ss.intTemp=..24}] run data modify storage restat:tellstats tellstats.entityreachclr set value red


scoreboard players operation @s ss.mathTemp = @s ss.mineSpeed
scoreboard players operation @s ss.mathTemp += @s ss.mineSpeedBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.intTemp = @s ss.mathTemp
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellstats tellstats.minespeedvalones int .1 run scoreboard players get @s ss.intTemp
execute store result storage restat:tellstats tellstats.minespeedvaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.intTemp=10}] run data modify storage restat:tellstats tellstats.minespeedclr set value gray
execute as @s[scores={ss.intTemp=11..20}] run data modify storage restat:tellstats tellstats.minespeedclr set value "#3b8f4e"
execute as @s[scores={ss.intTemp=21..}] run data modify storage restat:tellstats tellstats.minespeedclr set value dark_green
execute as @s[scores={ss.intTemp=6..9}] run data modify storage restat:tellstats tellstats.minespeedclr set value gold
execute as @s[scores={ss.intTemp=..4}] run data modify storage restat:tellstats tellstats.minespeedclr set value red




scoreboard players operation @s ss.mathTemp = @s ss.attackSpeed
scoreboard players operation @s ss.mathTemp += @s ss.attackSpeedBonus
scoreboard players set $10 ss.intTemp 10
scoreboard players operation @s ss.intTemp = @s ss.mathTemp
scoreboard players operation @s ss.mathTemp %= $10 ss.intTemp 

execute store result storage restat:tellstats tellstats.attackspeedvalones int .1 run scoreboard players get @s ss.intTemp 
execute store result storage restat:tellstats tellstats.attackspeedvaltenths int 1 run scoreboard players get @s ss.mathTemp
execute as @s[scores={ss.intTemp=40}] run data modify storage restat:tellstats tellstats.attackspeedclr set value gray
execute as @s[scores={ss.intTemp=41..44}] run data modify storage restat:tellstats tellstats.attackspeedclr set value "#3b8f4e"
execute as @s[scores={ss.intTemp=45..}] run data modify storage restat:tellstats tellstats.attackspeedclr set value dark_green
execute as @s[scores={ss.intTemp=38..39}] run data modify storage restat:tellstats tellstats.attackspeedclr set value gold
execute as @s[scores={ss.intTemp=..36}] run data modify storage restat:tellstats tellstats.attackspeedclr set value red


#summoning text display without text, then linking it to the player via scoreboard id
execute as @s[tag=!ss.statDisplayLinked] at @s run summon text_display ~ ~ ~ {billboard:"center",teleport_duration:1,see_through:0b,brightness:{sky:15,block:15},Tags:["ss.statDisplay"],background:1679698498,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.2f,.2f,.2f]},text:'{"text":"test"}'}
execute as @s[tag=!ss.statDisplayLinked] at @s run scoreboard players operation @e[type=text_display,tag=ss.statDisplay,limit=1,sort=nearest] ss.entID = @s ss.entID

#add /trigger option later- if you have a certain tag, display your stats in the chat instead of through the entity 
execute as @s[tag=ss.tellMeStats] run function restat:statdisplay/tellstatsmacro with storage restat:tellstats tellstats 

#update the text display entity data via macro with all of your stats
execute store result storage restat:tellstats tellstats.id int 1 run scoreboard players get @s ss.entID
function restat:statdisplay/updatemacro with storage restat:tellstats tellstats

#a little temporary exclusion tag so the trigger command for this whole function can act like an on/off switch. if this little tag isnt here then the tag ss.statDisplayLinked will just be given and then taken away in the same function
execute as @s[tag=ss.statDisplayLinked,scores={showstats=1}] run tag @s add ss.statDisplayRemove

#if you currently have a stat display up you should have the tag ss.statDisplayLinked, so this function removes your stat display related tags and kills the text entity only if you have one up.
execute as @s[tag=ss.statDisplayLinked,scores={showstats=1}] run function restat:statdisplay/remove with storage restat:tellstats tellstats

scoreboard players set @s showstats 0
scoreboard players enable @s showstats
tag @s[tag=!ss.statDisplayRemove] add ss.statDisplayLinked
tag @s remove ss.statDisplayRemove