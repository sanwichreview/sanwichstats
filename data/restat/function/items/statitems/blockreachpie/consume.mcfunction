
advancement revoke @s only restat:statitems/blockreachpie
execute as @s[tag=ss.nohead] run function restat:items/nohead/remove
execute as @s run function restat:items/statitems/blockreachpie/statchange
advancement grant @s only restat:packdesc/noarmor/blockreachpie-on
function restat:setstats