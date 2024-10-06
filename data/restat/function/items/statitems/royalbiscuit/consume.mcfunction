advancement revoke @s only restat:statitems/royalbiscuit
execute as @s[tag=!ss.minHealth,tag=!ss.maxArmor] run function restat:items/statitems/royalbiscuit/statchange
execute as @s[tag=ss.minHealth] run damage @s 100000000000 magic by @s from @s
execute as @s[tag=!ss.minHealth] run function restat:setstats