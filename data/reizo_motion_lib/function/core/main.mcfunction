
# デバックモードのやつの処理
execute \
if entity @a[tag=reizo_Motion_lib.DebugMode] \
as @a[tag=reizo_Motion_lib.DebugMode] at @s run \
function reizo_motion_lib:debug/main