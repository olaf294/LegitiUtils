#> lu:z/uninstall
scoreboard objectives remove lu.id
scoreboard objectives remove lu.temp
scoreboard objectives remove lu.uid
scoreboard objectives remove lu.leave
scoreboard objectives remove lu.gm_old
scoreboard objectives remove lu.gm_new
scoreboard objectives remove lu.num

data remove storage lu:http queue
data remove storage lu:online left
data remove storage lu:online now
data remove storage lu:online prev

data remove storage lu:test entity_uuid
data remove storage lu:test tested_uuid

data remove storage lu:uuid temp
data remove storage lu:uuid uuid_a
data remove storage lu:uuid hex
data remove storage lu:uuid UUID

data remove storage lu:util playername