
#> 計算用にPosをスコアに格納。
    # X座標
    execute store result score $VectorX reizo_Motion_lib.Temp run \
    data get storage reizo_motion_lib:_ Pos[0] 1000
    # Y座標
    execute store result score $VectorY reizo_Motion_lib.Temp run \
    data get storage reizo_motion_lib:_ Pos[1] 1000
    # Z座用
    execute store result score $VectorZ reizo_Motion_lib.Temp run \
    data get storage reizo_motion_lib:_ Pos[2] 1000
#> ベクトルの補正計算をする。
    # X座標
    scoreboard players operation $VectorX reizo_Motion_lib.Temp *= $MotionPower reizo_Motion_lib.Temp
    # Y座標
    scoreboard players operation $VectorY reizo_Motion_lib.Temp *= $MotionPower reizo_Motion_lib.Temp
    # Z座標
    scoreboard players operation $VectorZ reizo_Motion_lib.Temp *= $MotionPower reizo_Motion_lib.Temp
#> 補正計算は終了したので、値をstorageに移行、EntityにMotionを実行。
#> 計算のために1000倍したのでそれを0.00001倍して元の値に戻す。
    # X座標
    execute store result storage reizo_motion_lib:_ Pos[0] double 0.00001 run \
    scoreboard players get $VectorX reizo_Motion_lib.Temp
    # Y座標
    execute store result storage reizo_motion_lib:_ Pos[1] double 0.00001 run \
    scoreboard players get $VectorY reizo_Motion_lib.Temp
    # Z座標
    execute store result storage reizo_motion_lib:_ Pos[2] double 0.00001 run \
    scoreboard players get $VectorZ reizo_Motion_lib.Temp
    # 値をstorageに移行したので、MobにMotionを適用
    data modify entity @s Motion set from storage reizo_motion_lib:_ Pos