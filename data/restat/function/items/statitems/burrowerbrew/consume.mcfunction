execute as @s[tag=!ss.maxMineSpeed] run function restat:items/statitems/burrowerbrew/statchange
execute as @s[tag=ss.maxMineSpeed] run tellraw @s {"color":"gray","italic":true,"text":"You get nothing! You LOSE!"}
advancement revoke @s only restat:statitems/burrowerbrew
function restat:setstats