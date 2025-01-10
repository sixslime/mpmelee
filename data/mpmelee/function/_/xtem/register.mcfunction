#> mpmelee:_/xtem/register
#--------------------
# @hook : xtem:register
#--------------------

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

data modify storage mpmelee:var register.item set from entity @s item
function mpmelee:_/xtem/register.do with storage mpmelee:var register.item
data modify entity @s item set from storage mpmelee:var register.item

data remove storage mpmelee:var register