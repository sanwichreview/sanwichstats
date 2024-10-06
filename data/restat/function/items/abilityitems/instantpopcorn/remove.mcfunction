scoreboard players add @s[tag=ss.ability.teleport] ss.health 8

advancement revoke @s only restat:packdesc/abilityitems/instantpopcorn-on

execute as @s run tag @s remove ss.ability.teleport
execute as @s run tag @s remove ss.majorAbility
