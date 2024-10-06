say compare
execute store result score @s ss.lowDamageCompare run attribute @s generic.attack_damage get
execute as @s[scores={ss.lowDamageCompare=..0},predicate=restat:holdingweapon] run scoreboard players set @s ss.lowDamageCheck 0

execute as @s[scores={ss.lowDamageCompare=..0}] run return 1

execute as @s[scores={ss.lowDamageCompare=1..}] run return fail