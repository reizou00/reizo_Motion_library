
# 最初にDebug用の値をreset
scoreboard players reset $Debug_KnokBackX reizo_Motion_lib.Temp
scoreboard players reset $Debug_KnokBackY reizo_Motion_lib.Temp
scoreboard players reset $Debug_KnokBackZ reizo_Motion_lib.Temp
scoreboard players reset $Debug_MotionPower reizo_Motion_lib.Temp
data remove storage reizo_motion_lib:_ Debug.Pos

# 値をDebugの方に反映
scoreboard players operation $Debug_KnokBackX reizo_Motion_lib.Temp = $KnokBackX reizo_Motion_lib.Temp
scoreboard players operation $Debug_KnokBackY reizo_Motion_lib.Temp = $KnokBackY reizo_Motion_lib.Temp
scoreboard players operation $Debug_KnokBackZ reizo_Motion_lib.Temp = $KnokBackZ reizo_Motion_lib.Temp
scoreboard players operation $Debug_MotionPower reizo_Motion_lib.Temp = $MotionPower reizo_Motion_lib.Temp

# ストレージもDebugのほうに反映
data modify storage reizo_motion_lib:_ Debug.Pos set from storage reizo_motion_lib:_ Pos