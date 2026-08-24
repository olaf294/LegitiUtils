function lu:util/get_name
execute store result storage lu:online now_temp.id int 1 run scoreboard players get @s lu.id
data modify storage lu:online now_temp.name set from storage lu:util playername
data modify storage lu:online now append from storage lu:online now_temp
data remove storage lu:online now_temp