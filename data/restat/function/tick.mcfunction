#"respawn detector"
execute as @e[type=player,scores={ss.deathDetect=1..}] run function restat:setstats
#initializer for scoreboards
execute as @e[type=player,tag=!ss.initialized] run function restat:load
#Gives un-ID'd player an ID
execute as @e[type=player,scores={ss.entID=0}] run function restat:getid


#armor ejector checker

#no head
execute as @e[type=player,tag=ss.nohead] if items entity @s armor.head * at @s run function restat:noarmor/ejecthead with entity @s Inventory[{Slot:103b}]
execute as @e[type=player,tag=ss.nohead] if items entity @s armor.head * at @s run function restat:noarmor/ejectheadnocomp with entity @s Inventory[{Slot:103b}]
#No head items replacement warning
execute as @e[type=player,tag=ss.nohead,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"ss.nohead":1b}] run function restat:noarmor/warning/nohead

execute as @e[type=player,tag=ss.nochest] if items entity @s armor.chest #minecraft:chest_armor at @s run function restat:noarmor/ejectchest with entity @s Inventory[{Slot:102b}]
execute as @e[type=player,tag=ss.nochest] if items entity @s armor.chest #minecraft:chest_armor at @s run function restat:noarmor/ejectchestnocomp with entity @s Inventory[{Slot:102b}]
execute as @e[type=player,tag=ss.nochest,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"ss.nochest":1b}] run function restat:noarmor/warning/nochest

execute as @e[type=player,tag=ss.majorAbility] if items entity @s armor.chest minecraft:elytra at @s run function restat:noarmor/ejectchest with entity @s Inventory[{Slot:102b}]
execute as @e[type=player,tag=ss.majorAbility] if items entity @s armor.chest minecraft:elytra at @s run function restat:noarmor/ejectchestnocomp with entity @s Inventory[{Slot:102b}]

execute as @e[type=player,tag=ss.nolegs] if items entity @s armor.legs * at @s run function restat:noarmor/ejectlegs with entity @s Inventory[{Slot:101b}]
execute as @e[type=player,tag=ss.nolegs] if items entity @s armor.legs * at @s run function restat:noarmor/ejectlegsnocomp with entity @s Inventory[{Slot:101b}]

execute as @e[type=player,tag=ss.nofeet] if items entity @s armor.feet * at @s run function restat:noarmor/ejectfeet with entity @s Inventory[{Slot:100b}]
execute as @e[type=player,tag=ss.nofeet] if items entity @s armor.feet * at @s run function restat:noarmor/ejectfeetnocomp with entity @s Inventory[{Slot:100b}]
#end of armor ejector chekcer




#Stat Incompatability Notifier
#Will tell you a message if your stats are too high/low for the food youre holding

#Minimush incompatability check
execute as @e[type=player,tag=ss.minSize,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"minimush":1b}] run function restat:items/statitems/minimush/incompatability
execute as @e[type=player,tag=ss.minHealth,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"minimush":1b}] run function restat:items/statitems/minimush/incompatability

#Beatroot incompatability check
execute as @e[type=player,tag=ss.maxDamage,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"beatroot":1b}] run function restat:items/statitems/beatroot/incompatability
execute as @e[type=player,tag=ss.minHealth,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"beatroot":1b}] run function restat:items/statitems/beatroot/incompatability

#Health nectar incompatability check
execute as @e[type=player,tag=ss.maxHealth,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"healthnectar":1b}] run function restat:items/statitems/healthnectar/incompatability
execute as @e[type=player,tag=ss.minArmor,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"healthnectar":1b}] run function restat:items/statitems/healthnectar/incompatability

#Megamush incompatability check
execute as @e[type=player,tag=ss.maxSize,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"megamush":1b}] run function restat:items/statitems/megamush/incompatability

#Supplements incompatability check
execute as @e[type=player,tag=ss.maxArmor,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"supplements":1b}] run function restat:items/statitems/supplements/incompatability

#Burrower brew incompatability check
execute as @e[type=player,tag=ss.maxMineSpeed,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"burrowerbrew":1b}] run function restat:items/statitems/burrowerbrew/incompatability

#Fast bread incompatability check
execute as @e[type=player,tag=ss.maxSpeed,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"fastbread":1b}] run function restat:items/statitems/fastbread/incompatability
execute as @e[type=player,tag=ss.minHealth,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"fastbread":1b}] run function restat:items/statitems/fastbread/incompatability

#Adult gummy incompatability check
execute as @e[type=player,tag=ss.maxHealth,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"adultgummy":1b}] run function restat:items/statitems/adultgummy/incompatability

#Royal biscuit incompatability check
execute as @e[type=player,tag=ss.maxArmor,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"royalbiscuit":1b}] run function restat:items/statitems/royalbiscuit/incompatability
execute as @e[type=player,tag=ss.minHealth,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"royalbiscuit":1b}] run function restat:items/statitems/royalbiscuit/incompatability

#Fighting juice incompatability check
execute as @e[type=player,tag=ss.minArmor,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"tequila":1b}] run function restat:items/statitems/tequila/incompatability
execute as @e[type=player,tag=ss.maxDamage,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"tequila":1b}] run function restat:items/statitems/tequila/incompatability

#Attack powder incompatability check
execute as @e[type=player,tag=ss.maxAttackSpeed,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"attackpowder":1b}] run function restat:items/statitems/attackpowder/incompatability
execute as @e[type=player,tag=ss.minHealth,scores={ss.incompatabilityCheck=0}] if items entity @s weapon.* *[minecraft:custom_data~{"attackpowder":1b}] run function restat:items/statitems/attackpowder/incompatability


#Weightless Macaron stat incompatability check
execute as @e[type=player,scores={ss.incompatabilityCheck=0,ss.health=..10}] if items entity @s weapon.* *[minecraft:custom_data~{"floatmacaron":1b}] run function restat:items/abilityitems/floatmacaron/incompatability
execute as @e[type=player,scores={ss.incompatabilityCheck=0},tag=ss.ability.levitation] if items entity @s weapon.* *[minecraft:custom_data~{"floatmacaron":1b}] run function restat:items/abilityitems/floatmacaron/incompatability

#Instant poopcorn stat incompatability check
execute as @e[type=player,scores={ss.incompatabilityCheck=0,ss.health=..10}] if items entity @s weapon.* *[minecraft:custom_data~{"instantpopcorn":1b}] run function restat:items/abilityitems/instantpopcorn/incompatability
execute as @e[type=player,scores={ss.incompatabilityCheck=0},tag=ss.ability.teleport] if items entity @s weapon.* *[minecraft:custom_data~{"instantpopcorn":1b}] run function restat:items/abilityitems/instantpopcorn/incompatability


#Major ability item replacement warning
execute as @e[type=player,scores={ss.replaceCheck=0},tag=ss.majorAbility] if items entity @s weapon.* *[minecraft:custom_data~{"ss.majorabilityitem":1b}] run function restat:items/abilityitems/replacewarning



#part of the system that makes the incompatability/replacement warning only show up once when the item is in the hand
execute as @e[type=player,scores={ss.incompatabilityCheck=1..}] unless items entity @s weapon.* *[minecraft:custom_data~{"ss.statitem":1b}] run scoreboard players set @s ss.incompatabilityCheck 0 
execute as @e[type=player,scores={ss.replaceCheck=1..}] unless items entity @s weapon.* *[minecraft:custom_data~{"ss.statitem":1b}] run scoreboard players set @s ss.replaceCheck 0 


#if your damage is 0 or lower, this makes you deal a negligible amount of damage if you have no weapon equipped (for knockback's sake)

execute as @e[type=player,scores={ss.damage=..0,ss.lowDamageCheck=0}] unless predicate restat:holdingweapon run function restat:lowdamage/balance

execute as @e[type=player,scores={ss.damage=..0,ss.lowDamageCheck=1}] if predicate restat:holdingweapon run function restat:lowdamage/reset

execute as @e[type=player,scores={ss.damage=1..,ss.lowDamageCheck=1}] run function restat:lowdamage/reset




#trigger detection for showing stats
execute as @e[type=player,scores={showstats=1..}] run function restat:statdisplay/tellstats
execute as @e[type=player,scores={showstats=..-1}] run function restat:statdisplay/tellstats
execute as @e[type=player,tag=ss.displayStats] at @s run function restat:statdisplay/tp
#trigger detection for showing stat bounses
execute as @e[type=player,scores={showbonuses=1..}] run function restat:statbonusdisplay/tellbonuses
execute as @e[type=player,scores={showbonuses=..-1}] run function restat:statbonusdisplay/tellbonuses
execute as @e[type=player,tag=ss.displayBonuses] at @s run function restat:statbonusdisplay/tp
#trigger detection for showing both
execute as @e[type=player,scores={showboth=1..}] run function restat:statdisplay/tellboth
execute as @e[type=player,scores={showboth=..-1}] run function restat:statdisplay/tellboth




#execute as @e[type=player,tag=ss.displayStats] at @s anchored eyes positioned ^ ^1 ^ rotated ~ ~ run tp @e[tag=ss.statdisplay] ^2 ^ ^3



#crouching/double crouching detection

execute as @e[type=player,predicate=restat:iscrouching,scores={ss.isCrouched=0}] run function restat:crouchdetect/crouchcount

execute as @e[type=player,predicate=!restat:iscrouching,scores={ss.isCrouched=1}] run function restat:crouchdetect/uncrouch

execute as @e[type=player,scores={ss.crouchCount=1..,ss.crouchTimer=0}] run function restat:crouchdetect/crouchtimer

execute as @e[type=player,scores={ss.crouchTimer=1..}] run function restat:crouchdetect/crouchtimer




##levitation from crouching

#ascent conditions
execute as @e[type=player,scores={ss.isDoubleCrouched=1..,ss.isLevitating=0},tag=ss.ability.levitation] unless items entity @s weapon.* minecraft:mace run function restat:abilities/levitation/ascendlevitation

#idle conditions
execute as @e[type=player,scores={ss.isDoubleCrouched=0,ss.isCrouched=0,ss.isIdleLevitating=0},tag=ss.levitator] unless items entity @s weapon.* minecraft:mace run function restat:abilities/levitation/idlelevitation

#descent conditions
execute as @e[type=player,scores={ss.isDoubleCrouched=0,ss.isCrouched=1,ss.isDescendLevitating=0},nbt={OnGround:0b},tag=ss.levitator] run function restat:abilities/levitation/descendlevitation
execute as @e[type=player,nbt={OnGround:0b},scores={ss.isDescendLevitating=0},tag=ss.levitator] if items entity @s weapon.* minecraft:mace run function restat:abilities/levitation/descendlevitation
execute as @e[type=player,nbt={OnGround:0b},scores={ss.isDescendLevitating=1},tag=ss.levitator,tag=!ss.maceDescending] if items entity @s weapon.* minecraft:mace run function restat:abilities/levitation/descendlevitation
execute as @e[type=player,nbt={OnGround:0b},scores={ss.isDescendLevitating=1},tag=ss.levitator,tag=ss.maceDescending] unless items entity @s weapon.* minecraft:mace run function restat:abilities/levitation/descendlevitation

#unstuck conditions
execute as @e[type=player,scores={ss.isLevitating=1},tag=!ss.levitationUnstuck] at @s anchored eyes positioned ^ ^ ^ unless block ~ ~0.5 ~ #restat:partialblocks unless block ~ ~0.5 ~ air unless block ~ ~0.5 ~ cave_air unless block ~ ~0.5 ~ void_air as @s run tag @s add ss.levitationUnstuck
execute as @e[type=player,tag=ss.levitationUnstuck] run function restat:abilities/levitation/unstuck

#grounding conditions
execute as @e[type=player,scores={ss.isDescendLevitating=1},nbt={OnGround:1b},tag=ss.levitator] run function restat:abilities/levitation/grounded
execute as @e[type=player,scores={ss.isIdleLevitating=1},nbt={OnGround:1b}] run function restat:abilities/levitation/grounded
#if USED mace, revoke levitation (because of wind burst cheese, especially)
execute as @e[type=player,scores={ss.usedMace=1},tag=ss.levitator] run function restat:abilities/levitation/grounded

#delay to reapplying fall damage because bugs :(
execute as @e[type=player,tag=ss.reapplyFD] run function restat:abilities/levitation/falldamage

#no slow falling effect for levitators, weakness for levitators
execute as @e[type=player,tag=ss.ability.levitation,tag=!ss.leviatateNegateMotion,nbt={active_effects:[{id:"minecraft:slow_falling"}]}] run effect clear @s slow_falling 
execute as @e[tag=ss.levitator] unless entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run effect give @s weakness 5 0 true
execute as @e[tag=ss.levitator] if entity @s[nbt={active_effects:[{id:"minecraft:weakness",duration:1}]}] run effect give @s weakness 5 0 true

#1 tick ish delay on motion negation because it was acting odd
execute as @e[type=player,tag=ss.levitateNegateMotion] run function restat:abilities/levitation/negatemotion



#Teleportation from crouching

execute as @e[type=player,scores={ss.isDoubleCrouched=1},tag=!ss.tpPrimed,tag=ss.ability.teleport] run function restat:abilities/teleport/charge
execute as @e[type=player,scores={ss.isDoubleCrouched=0,ss.teleportCharge=1..19}] at @s run playsound minecraft:block.copper_bulb.turn_on master @s ~ ~ ~ 1 0.3
execute as @e[type=player,scores={ss.isDoubleCrouched=0,ss.teleportCharge=1..},tag=ss.ability.teleport] run scoreboard players set @s ss.teleportCharge 0
execute as @e[type=player,scores={ss.isDoubleCrouched=0},tag=ss.tpPrimed,tag=ss.ability.teleport] run function restat:abilities/teleport/start
execute as @e[type=player,scores={ss.isDoubleCrouched=1},tag=ss.ability.teleport] run function restat:abilities/teleport/previewstart
#execute as @e[type=player,scores={ss.isDoubleCrouched=0}] if items entity @s weapon.* minecraft:ender_pearl run function restat:abilities/teleport/previewstart
#teleport cooldown
execute as @e[type=player,scores={ss.teleportCooldown=1..}] run function restat:abilities/teleport/cooldown

#funny weightless macaron
execute as @e[type=item,tag=!ss.weightlessItem,nbt={Item: {components: {"minecraft:custom_data":{floatmacaron: 1b, ss.statitem: 1b}}}}] run data merge entity @s {NoGravity:1b}
execute as @e[type=item,tag=!ss.weightlessItem,nbt={Item: {components: {"minecraft:custom_data":{floatmacaron: 1b, ss.statitem: 1b}}}}] run tag @s add ss.weightlessItem
#funny weightless item #2
execute as @e[type=item,tag=!ss.weightlessItem,nbt={Item: {components: {"minecraft:custom_data":{chaostruffle: 1b, ss.statitem: 1b}}}}] run data merge entity @s {NoGravity:1b}
execute as @e[type=item,tag=!ss.weightlessItem,nbt={Item: {components: {"minecraft:custom_data":{chaostruffle: 1b, ss.statitem: 1b}}}}] run tag @s add ss.weightlessItem

#reaffirms stats upon rejoin in case something bugs out?
execute as @e[type=player,scores={ss.leave=1..}] run function restat:setstats
execute as @e[type=player,scores={ss.leave=1..}] run function restat:load

#Ender pearl use flash, must be on bottom!
execute as @e[type=player,scores={ss.usedEnderPearl=1..}] run scoreboard players set @s ss.usedEnderPearl 0
#Jump detection flash, must be on bottom!
execute as @e[type=player,scores={ss.jumpCount=1..}] run scoreboard players set @s ss.jumpCount 0
#Leave detection flash, must be on bottom!
execute as @e[type=player,scores={ss.leave=1..}] run scoreboard players set @s ss.leave 0
#Mace use detection flash, must be on bottom!
execute as @e[type=player,scores={ss.usedMace=1}] run scoreboard players set @s ss.usedMace 0