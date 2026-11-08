#> lu:z/ld/tick
scoreboard players operation .players_prev lu.temp = .players lu.temp 
execute store result score .players lu.temp if entity @a
execute if score .players lu.temp < .players_prev lu.temp run function lu:z/ld/find_missing_player

data modify storage lu:online prev set from storage lu:online now
data remove storage lu:online now

execute as @a run function lu:z/ld/_append