#> mpweapons:_/xtem/register
#--------------------
# @hook : xtem:register
#--------------------

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

data modify storage mpweapons:var register.item set from entity @s item
function mpweapons:_/xtem/register.do with storage mpweapons:var register.item
data modify entity @s item set from storage mpweapons:var register.item

data remove storage mpweapons:var register