advancement revoke @s only restat:statitems/minimush
execute as @s[tag=!ss.minSize,tag=!minHealth] run function restat:items/statitems/minimush/statchange
execute as @s[tag=ss.minHealth] run damage @s 100000000000 magic by @s from @s
execute as @s[tag=ss.minSize] run damage @s 100000000000 magic by @s from @s
execute as @s[tag=!ss.minSize] run function restat:setstats