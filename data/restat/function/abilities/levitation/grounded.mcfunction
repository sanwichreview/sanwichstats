scoreboard players set @s ss.isDescendLevitating 0
scoreboard players set @s ss.isIdleLevitating 0
scoreboard players set @s ss.isLevitating 0

function restat:abilities/levitation/ground
tag @s add ss.levitateSlowFall
effect give @s slow_falling 1 0 true

tag @s add ss.reapplyFD

function restat:setstats
tag @s remove ss.levitator

#say grounded