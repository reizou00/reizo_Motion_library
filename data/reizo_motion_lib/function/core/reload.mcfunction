
# ライブラリ呼び出し
function p_motion:system/load

# スコア作成
scoreboard objectives add reizo_Motion_lib.Temp dummy

#> フォースリロード！！！
    # 読み込む位置にAECを召喚
    execute \
    in minecraft:overworld run \
    summon area_effect_cloud 0.0 0.0 0.0 {Tags:["reizo_Motion_lib.OriginAEC"]}
    # AECを中心にフォースリロード
    execute \
    positioned as @e[tag=reizo_Motion_lib.OriginAEC] at @s run \
    forceload add ~ ~