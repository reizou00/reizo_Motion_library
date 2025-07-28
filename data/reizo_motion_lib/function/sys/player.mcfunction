
#> 計算用にPosをスコアに格納。
    # X座標
    execute store result score $VectorX reizo_Motion_lib.Temp run \
    data get storage reizo_motion_lib:_ Pos[0] 100
    # Y座標
    execute store result score $VectorY reizo_Motion_lib.Temp run \
    data get storage reizo_motion_lib:_ Pos[1] 100
    # Z座用
    execute store result score $VectorZ reizo_Motion_lib.Temp run \
    data get storage reizo_motion_lib:_ Pos[2] 100
#> ベクトルの補正計算をする。
    # X座標
    scoreboard players operation $VectorX reizo_Motion_lib.Temp *= $MotionPower reizo_Motion_lib.Temp
    # Y座標
    scoreboard players operation $VectorY reizo_Motion_lib.Temp *= $MotionPower reizo_Motion_lib.Temp
    # Z座標
    scoreboard players operation $VectorZ reizo_Motion_lib.Temp *= $MotionPower reizo_Motion_lib.Temp
#> 補正計算は終了したので、値をmacroを使うためにstorageに移行、PlayerにP_Motionを実行。
    # X座標
    execute store result storage reizo_motion_lib:_ Macro.x int 1 run \
    scoreboard players get $VectorX reizo_Motion_lib.Temp
    # Y座標
    execute store result storage reizo_motion_lib:_ Macro.y int 1 run \
    scoreboard players get $VectorY reizo_Motion_lib.Temp
    # Z座標
    execute store result storage reizo_motion_lib:_ Macro.z int 1 run \
    scoreboard players get $VectorZ reizo_Motion_lib.Temp
    # 値を代入
    function reizo_motion_lib:bin/macros/set_p_motion with storage reizo_motion_lib:_ Macro