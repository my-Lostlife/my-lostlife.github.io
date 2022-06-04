
[cm]

@clearstack
@bg storage ="title.png" time=100
@wait time = 200

*start 

[button x=115 y=330 graphic="button/hajimekara.png" enterimg="button/hajimekara2.png"  target="gamestart" clickse="「ピロリ」決定のボタン音・アクセント音.mp3"]
[button x=115 y=470 graphic="button/tudukikara.png" enterimg="button/tudukikara2.png" role="load" clickse="「ピロリ」決定のボタン音・アクセント音.mp3"]

[s]

*gamestart
@jump storage="main.ks"

