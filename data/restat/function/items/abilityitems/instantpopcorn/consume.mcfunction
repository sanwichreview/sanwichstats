function restat:setstats
execute as @s[tag=!ss.ability.teleport,tag=ss.majorAbility] run function restat:items/abilityitems/remove
execute as @s[tag=ss.ability.teleport] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
execute as @s[scores={ss.healthCompare=..8},tag=!ss.ability.teleport] run damage @s 100000000000 magic by @s from @s
execute as @s[scores={ss.healthCompare=9..},tag=!ss.ability.teleport] run function restat:items/abilityitems/instantpopcorn/statchange
function restat:setstats
advancement revoke @s only restat:abilityitems/instantpopcorn