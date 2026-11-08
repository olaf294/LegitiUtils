execute unless score @s lu.gm_new matches -2147483648..2147483647 run function lu:z/gm/get_gm
scoreboard players operation @s lu.gm_old = @s lu.gm_new

function lu:z/gm/get_gm

execute unless score @s lu.gm_old = @s lu.gm_new run function #lu:on_gamemode_switch