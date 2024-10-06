scoreboard players add @s ss.levitationReapplyFD 1
execute as @s[scores={ss.levitationReapplyFD=3..}] run attribute @s fall_damage_multiplier modifier remove ss.tempnofd
execute as @s[scores={ss.levitationReapplyFD=3..}] run tag @s remove ss.reapplyFD
execute as @s[scores={ss.levitationReapplyFD=3..}] run scoreboard players set @s ss.levitationReapplyFD 0