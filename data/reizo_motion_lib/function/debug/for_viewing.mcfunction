
# 最初にDebug用の値をreset
scoreboard players reset $Debug_VectorX reizo_Motion_lib.Temp
scoreboard players reset $Debug_VectorY reizo_Motion_lib.Temp
scoreboard players reset $Debug_VectorZ reizo_Motion_lib.Temp
scoreboard players reset $Debug_MotionPower reizo_Motion_lib.Temp
data remove storage reizo_motion_lib:_ Debug.Pos

# 値をDebugの方に反映
scoreboard players operation $Debug_VectorX reizo_Motion_lib.Temp = $VectorX reizo_Motion_lib.Temp
scoreboard players operation $Debug_VectorY reizo_Motion_lib.Temp = $VectorY reizo_Motion_lib.Temp
scoreboard players operation $Debug_VectorZ reizo_Motion_lib.Temp = $VectorZ reizo_Motion_lib.Temp
scoreboard players operation $Debug_MotionPower reizo_Motion_lib.Temp = $MotionPower reizo_Motion_lib.Temp

# ストレージもDebugのほうに反映
data modify storage reizo_motion_lib:_ Debug.Pos set from storage reizo_motion_lib:_ Pos