data modify storage lu:online left set from storage lu:online prev[0]
data remove storage lu:online prev

#tellraw @a ["it is ",{storage:"lu:online",nbt:left.name}," who left."]
#tellraw @a [{storage:"lu:online",nbt:"left.name"}," just left. Their ID is ",{storage:"lu:online",nbt:"left.id"},"."]