;メイン画面
*BGM_start
;BMG再生（別の画面から戻った時に再生し直すのを防ぐためここに記述）
[playbgm storage="New-Life.mp3"]

*start
[cm  ]
[clearfix]
[start_keyconfig]
[free_layermode time=0]
[chara_hide_all time="10"]

;タブ・立ち絵用に表示
[freeimage layer = 0]
@layopt layer=0 visible=true

[bg storage="gb_main.png" time="100"]

;露出狂ランク表示
[if exp="f.expose_rank == 1"]
	[image layer="0" storage="rank_1.png"]
[elsif exp="f.expose_rank == 2"]
	[image layer="0" storage="rank_2.png"]
[elsif exp="f.expose_rank == 3"]
	[image layer="0" storage="rank_3.png"]
[endif]

;キャラ登場（露出狂レベルによって表情変更）
[chara_show name="arina_m" time="100"]
[if exp="f.expose_rank == 1"]
	[chara_part name="arina_m" face=normal]
	[chara_part name="arina_m" eye=normal]
[elsif exp="f.expose_rank == 2"]
	[chara_part name="arina_m" face=3]
	[chara_part name="arina_m" eye=normal]
[elsif exp="f.expose_rank == 3"]
	[chara_part name="arina_m" face=3]
	[chara_part name="arina_m" eye=3]
[endif]

;落書き確認
[if exp="f.graffiti_hentai == true"]
	[chara_part name="arina_m" graffiti_1=on]
[endif]
[if exp="f.graffiti_expose == true"]
	[chara_part name="arina_m" graffiti_2=on]
[endif]
[if exp="f.graffiti_attention == true"]
	[chara_part name="arina_m" graffiti_3=on]
[endif]
[if exp="f.graffiti_virgin == true"]
	[chara_part name="arina_m" graffiti_4=on]
[endif]
[if exp="f.graffiti_name == true"]
	[chara_part name="arina_m" graffiti_5=on]
[endif]
[if exp="f.graffiti_photo == true"]
	[chara_part name="arina_m" graffiti_6=on]
[endif]
[if exp="f.graffiti_school == true"]
	[chara_part name="arina_m" graffiti_7=on]
[endif]
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_m" graffiti_8=on]
[endif]
[if exp="f.graffiti_pussy == true"]
	[chara_part name="arina_m" graffiti_9=on]
[endif]
;下着確認
[下着確認_メイン画面]
;陰毛確認
[if exp="f.public_hair == 'normal'"]
	[chara_part name="arina_m" public_hair=normal]
[elsif exp="f.public_hair == 'thick'"]
	[chara_part name="arina_m" public_hair=thick]
[endif]
;服装確認
[if exp="f.costume == 'uniform'"]
	[chara_part name="arina_m" body=underwear]
	[chara_part name="arina_m" costume=uniform]
	;乳首マークはみ出防止処理
	[if eval exp="f.graffiti_boobs == true"]
		[chara_part name="arina_m" graffiti_8=off]
	[endif]
[elsif exp="f.costume == 'coat'"]
	[chara_part name="arina_m" costume=coat]
	[elsif exp="f.costume == 'none'"]
	[chara_part name="arina_m" costume=none]
[endif]
[if exp="f.socks == true"]
	[chara_part name="arina_m" socks=on]
[elsif exp="f.socks == false"]
	[chara_part name="arina_m" socks=off]
[endif]
[if exp="f.shoes == true"]
	[chara_part name="arina_m" shoes=on]
[elsif exp="f.shoes == false"]
	[chara_part name="arina_m" shoes=off]
[endif]

;ボタン
;トロフィーはコメントアウトしておく（実装したら復活）
;[locate x=316 y=4]
;[button graphic="button/main/button_trophy.png"]
[locate x=578 y=78]
[button graphic="button/main/button_start.png" storage="stage_select.ks" target="game_mode"]
[locate x=578 y=264]
[button graphic="button/main/button_endless.png" storage="stage_select.ks" target="endless_mode"]
[locate x=578 y=450]
[button graphic="button/main/button_dress.png" storage="dress.ks"]
[locate x=7 y=555]
;[button graphic="button/main/button_option.png" role="sleepgame" storage="config.ks" ]
;本来は上記のようにsleepgameで呼び出すが、露出狂ランクの影響でConfigでawakegameを使わないため以下の通り記述
[button graphic="button/main/button_option.png" storage="config.ks"]

;セーブ・ロード
[locate x=685 y=590]
[button graphic="button/main/save2.png" role="save"]
[locate x=805 y=590]
[button graphic="button/main/load2.png" role="load"]

;全解放スイッチ
[if exp="f.complete == false"]
[locate x=930 y=400]
[clickable width="25" height="150" target="zenkaihou_check" clickse="Tips・ヒント表示音.mp3"]
[endif]
[s]

*zenkaihou_check
[image layer="0" storage="zenkaihou_check.png"]
[playse buf=1 storage="Tips・ヒント表示音.mp3"]

[locate x=335 y=385]
[clickable width="120" height="50" target="zenkaihou_yes"]
[locate x=505 y=385]
[clickable width="120" height="50" target="start"]
[s]

*zenkaihou_yes
[playse storage="STAR_1（OK音、アイテム発見など）.mp3"]

[locate x=0 y=0]
[button graphic="button/zenkaihou_on.png" target="start" exp="f.complete = true"]

[s]
