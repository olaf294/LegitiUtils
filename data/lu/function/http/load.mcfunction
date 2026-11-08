#> lu:http/load
# Set the default HTTP timer (in ticks)
execute unless score .http_timer lu.num matches -2147483648..2147483647 run scoreboard players set .http_timer lu.num 10