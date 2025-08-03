#> reizo_Motion_lib:pounce_on/_
#
# 君には飛び掛かりをしてもらおう。

#> $MotionPowerの値がNullなら125にset!
execute \
unless score $MotionPower reizo_Motion_lib.Temp matches -2147483648..2147483647 run \
scoreboard players set $MotionPower reizo_Motion_lib.Temp 125

#> Posゲット用のAECを召喚&Pos取得。
    # AttackerのRotation対象に、座標0.0 0.0 0.0からローカル座標zから0.4離れた場所にAECを召喚。
    execute \
    positioned 0.0 0.0 0.0 \
    rotated as @s run \
    summon area_effect_cloud ^ ^ ^0.4 {Tags:["reizo_Motion_lib.Pos_Get_AEC"],Particle:{type:"block",block_state:"air"},Duration:1}
    # Pos_Get_AECのPosを取得。
    data modify storage reizo_motion_lib:_ Pos set from entity @e[type=area_effect_cloud,tag=reizo_Motion_lib.Pos_Get_AEC,sort=nearest,limit=1] Pos
#> AECのPosを補正計算させるために、スコアに反映しなければならない。ここでMobとPlayerで分岐
    # y軸への移動量は同じなのでset
    data modify storage reizo_motion_lib:_ Pos[1] set value 0.32
    # Mob
    execute \
    at @s[type=!player] run \
    function reizo_motion_lib:sys/mob
    # Player
    execute \
    at @s[type=player] run \
    function reizo_motion_lib:sys/player
#> 処理が終了したのでreset
    function reizo_motion_lib:reset/_