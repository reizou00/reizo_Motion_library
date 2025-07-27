## マインクラフトのデータパックで作られた、
# ノックバックと、飛び掛かりを再現、作成したものです。
### 製作者:reizou_00

## 対応バージョンは以下の通りです。
1.21.4(以外でも動くかもしれないが確認していない。)

## 使い方
### ノックバック
#### 実行者を吹っ飛ばす方法です。
#### PlayerでもMobでも、どちらも行けます！

#### ※実行者(ノックバックを食らうエンティティ)は必ずreizo_KnockBack_lib.Attackerタグをつけないようにしてください！おかしくなります！
### ※攻撃者は必ずreizo_KnockBack_lib.Attackerタグをつけるようにしてください。

```mcfunction
/execute as <対象> at @s run function #reizo_motion_lib:knock_back
```

### 飛び掛かり
#### 実行者を前に飛ばす方法です。
### PlayerでもMobでも、どちらもでも行けます！

```mcfunction
/execute as <対象> at @s run function #reizo_motion_lib:pounce_on
```

## License

This project is released under the CC0 1.0 Universal license.

[![CC0](https://licensebuttons.net/p/zero/1.0/88x31.png)](https://creativecommons.org/publicdomain/zero/1.0/)

要するにこれは「著作権なしだよ～」ってこと