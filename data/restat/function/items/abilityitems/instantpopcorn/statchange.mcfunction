

execute as @s run tag @s add ss.ability.teleport
execute as @s run tag @s add ss.majorAbility
scoreboard players remove @s ss.health 8 

advancement grant @s only restat:packdesc/abilityitems/instantpopcorn-on


function restat:setstats