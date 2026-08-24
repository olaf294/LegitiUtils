#> lu:tick
execute as @a unless score @s lu.id matches -2147483648..2147483647 store result score @s lu.id run scoreboard players add .global lu.id 1
execute as @a[scores={lu.leave=1..}] run function lu:z/on_join