advancement revoke @s only restat:statitems/megamush

execute as @s[tag=!ss.maxSize] run function restat:items/statitems/megamush/statchange

execute as @s[tag=ss.maxSize] run damage @s 100000000000 magic by @s from @s

execute as @s[tag=!ss.maxSize] run function restat:setstats