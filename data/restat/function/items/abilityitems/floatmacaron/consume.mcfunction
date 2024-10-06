function restat:setstats
execute as @s[tag=!ss.ability.levitation,tag=ss.majorAbility] run function restat:items/abilityitems/remove
execute as @s[tag=ss.ability.levitation] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
execute as @s[scores={ss.healthCompare=..10},tag=!ss.ability.levitation] run damage @s 100000000000 magic by @s from @s
execute as @s[scores={ss.healthCompare=11..},tag=!ss.ability.levitation] run function restat:items/abilityitems/floatmacaron/statchange
function restat:setstats
advancement revoke @s only restat:abilityitems/floatmacaron