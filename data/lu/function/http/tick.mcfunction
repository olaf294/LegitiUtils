#> lu:http/tick
execute unless data storage lu:http queue[] run return fail

scoreboard players remove .http_timer lu.temp 1
execute if score .http_timer lu.temp matches ..0 run function lu:http/run_next with storage lu:http queue[0]