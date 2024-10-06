
execute as @s[tag=!ss.minHealth] run function restat:items/statitems/attackpowder/statchange
execute as @s[tag=ss.minHealth] run damage @s 100000000000 magic by @s from @s
advancement revoke @s only restat:statitems/attackpowder
execute as @s[tag=!ss.minHealth] run function restat:setstats