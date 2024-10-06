scoreboard players add @s ss.oneSecTimer 1

execute as @s[scores={ss.oneSecTimer=1},tag=ss.particle.smoke] at @s run particle dust{color:[0.110,0.000,0.000],scale:1} ~ ~ ~ .5 1 .5 1.5 15 force @s







execute as @s[scores={ss.oneSecTimer=20..}] run scoreboard players set @s ss.oneSecTimer 0