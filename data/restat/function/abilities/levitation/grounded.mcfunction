scoreboard players set @s ss.isDescendLevitating 0
scoreboard players set @s ss.isIdleLevitating 0
attribute @s generic.gravity base set 0.08
effect give @s slow_falling 1 0 true
tag @s add ss.reapplyFD

function restat:setstats
tag @s remove ss.levitator