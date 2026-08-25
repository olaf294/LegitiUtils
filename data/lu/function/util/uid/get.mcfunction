#> lu:util/uid/get
data remove storage lu:uid UUID

execute store result score 0 lu.uid store result score 1 lu.uid store result score 2 lu.uid store result score 3 lu.uid run data get entity @s UUID[0]
execute store result score 4 lu.uid store result score 5 lu.uid store result score 6 lu.uid store result score 7 lu.uid run data get entity @s UUID[1]
execute store result score 8 lu.uid store result score 9 lu.uid store result score a lu.uid store result score b lu.uid run data get entity @s UUID[2]
execute store result score c lu.uid store result score d lu.uid store result score e lu.uid store result score f lu.uid run data get entity @s UUID[3]

scoreboard players operation 0 lu.uid /= 16777216 lu.num
scoreboard players operation 1 lu.uid %= 16777216 lu.num
scoreboard players operation 1 lu.uid /= 65536 lu.num
scoreboard players operation 2 lu.uid %= 65536 lu.num
scoreboard players operation 2 lu.uid /= 256 lu.num
scoreboard players operation 3 lu.uid %= 256 lu.num
scoreboard players operation 4 lu.uid /= 16777216 lu.num
scoreboard players operation 5 lu.uid %= 16777216 lu.num
scoreboard players operation 5 lu.uid /= 65536 lu.num
scoreboard players operation 6 lu.uid %= 65536 lu.num
scoreboard players operation 6 lu.uid /= 256 lu.num
scoreboard players operation 7 lu.uid %= 256 lu.num
scoreboard players operation 8 lu.uid /= 16777216 lu.num
scoreboard players operation 9 lu.uid %= 16777216 lu.num
scoreboard players operation 9 lu.uid /= 65536 lu.num
scoreboard players operation a lu.uid %= 65536 lu.num
scoreboard players operation a lu.uid /= 256 lu.num
scoreboard players operation b lu.uid %= 256 lu.num
scoreboard players operation c lu.uid /= 16777216 lu.num
scoreboard players operation d lu.uid %= 16777216 lu.num
scoreboard players operation d lu.uid /= 65536 lu.num
scoreboard players operation e lu.uid %= 65536 lu.num
scoreboard players operation e lu.uid /= 256 lu.num
scoreboard players operation f lu.uid %= 256 lu.num

execute store result storage lu:uid temp.0 int 1 run scoreboard players get 0 lu.uid
execute store result storage lu:uid temp.1 int 1 run scoreboard players get 1 lu.uid
execute store result storage lu:uid temp.2 int 1 run scoreboard players get 2 lu.uid
execute store result storage lu:uid temp.3 int 1 run scoreboard players get 3 lu.uid
execute store result storage lu:uid temp.4 int 1 run scoreboard players get 4 lu.uid
execute store result storage lu:uid temp.5 int 1 run scoreboard players get 5 lu.uid
execute store result storage lu:uid temp.6 int 1 run scoreboard players get 6 lu.uid
execute store result storage lu:uid temp.7 int 1 run scoreboard players get 7 lu.uid
execute store result storage lu:uid temp.8 int 1 run scoreboard players get 8 lu.uid
execute store result storage lu:uid temp.9 int 1 run scoreboard players get 9 lu.uid
execute store result storage lu:uid temp.a int 1 run scoreboard players get a lu.uid
execute store result storage lu:uid temp.b int 1 run scoreboard players get b lu.uid
execute store result storage lu:uid temp.c int 1 run scoreboard players get c lu.uid
execute store result storage lu:uid temp.d int 1 run scoreboard players get d lu.uid
execute store result storage lu:uid temp.e int 1 run scoreboard players get e lu.uid
execute store result storage lu:uid temp.f int 1 run scoreboard players get f lu.uid

function lu:z/uid/convert with storage lu:uid temp
function lu:z/uid/set with storage lu:uid temp

#tellraw @a ["Output UUID: ",{storage:"lu:uid",nbt:"UUID"}]