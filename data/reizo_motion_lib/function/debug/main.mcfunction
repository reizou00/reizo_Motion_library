
# 0.0 0.0 0.0の位置が見える。
execute \
positioned 0.0 0.0 0.0 run \
particle wax_on ~ ~ ~ ~ ~ ~ 0 0 normal @s

# Pos_Get_AECの位置を可視化。
execute \
positioned as @e[tag=reizo_Motion_lib.Pos_Get_AEC] run \
particle wax_off ~ ~ ~ ~ ~ ~ 0 0 normal @s