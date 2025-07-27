
# いろいろリセット。
scoreboard players reset $KnokBackX
scoreboard players reset $KnokBackY
scoreboard players reset $KnokBackZ
# MotionPowerだけ1tick遅れでリセット
schedule function reizo_motion_lib:reset/motion_power 1t

# storage
data remove storage reizo_motion_lib:_ Macro
data remove storage reizo_motion_lib:_ Pos