#> lu:tests/uid/test
$data modify storage lu:test tested_uuid set value uuid("$(UUID)")
data modify storage lu:test entity_uuid set from entity @s UUID

function lu:z/uid/convert

execute store result score .t1 lu.tests run data get storage lu:test tested_uuid[0]
execute store result score .t2 lu.tests run data get storage lu:test tested_uuid[1]
execute store result score .t3 lu.tests run data get storage lu:test tested_uuid[2]
execute store result score .t4 lu.tests run data get storage lu:test tested_uuid[3]

execute store result score .e1 lu.tests run data get storage lu:test entity_uuid[0]
execute store result score .e2 lu.tests run data get storage lu:test entity_uuid[1]
execute store result score .e3 lu.tests run data get storage lu:test entity_uuid[2]
execute store result score .e4 lu.tests run data get storage lu:test entity_uuid[3]

execute if score .t1 lu.tests = .e1 lu.tests if score .t2 lu.tests = .e2 lu.tests if score .t3 lu.tests = .e3 lu.tests if score .t4 lu.tests = .e4 lu.tests run return run tellraw @a {text:"Test completed successfully!",color:green}
tellraw @a [{text:"Test failed!\nExpected: ",color:red,bold:1b},{storage:"lu:test",nbt:entity_uuid},"\nGot: ",{storage:"lu:test",nbt:tested_uuid}]
return fail