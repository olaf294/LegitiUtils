#> lu:z/ld/find_missing_player
execute store result score .tempid lu.temp run data get storage lu:online prev[0].id
execute as @a if score @s lu.id = .tempid lu.temp run return run function lu:z/ld/recurse

return run function lu:z/on_leave