*start
[cm  ]
[playse buf=1 storage="システムSE_決定音1.mp3"]
[chara_hide_all time="10"]

;コマンドフレーム用
[freeimage layer = 0]
@layopt layer=0 visible=true

;背景
[if exp="f.stage == 'park_night'"]
	[bg storage="park_night.png" time="100"]
[elsif exp="f.stage == 'residential_night'"]
	[bg storage="residential_night.png" time="100"]
[elsif exp="f.stage == 'school_night'"]
	[bg storage="school_night.png" time="100"]
[elsif exp="f.stage == 'mall_night'"]
	[bg storage="mall_night.png" time="100"]

[elsif exp="f.stage == 'park_morning'"]
	[bg storage="park_morning.png" time="100"]
[elsif exp="f.stage == 'residential_morning'"]
	[bg storage="residential_morning.png" time="100"]
[elsif exp="f.stage == 'school_morning'"]
	[bg storage="school_morning.png" time="100"]
[elsif exp="f.stage == 'mall_morning'"]
	[bg storage="mall_morning.png" time="100"]
[endif]

[if eval exp="f.stage == 'park_night' || f.stage == 'residential_night' || f.stage == 'school_night' || f.stage == 'mall_night'"]
	[playbgm storage="VoiceBack.mp3"]
[elsif eval exp="f.stage == 'park_morning' || f.stage == 'residential_morning' || f.stage == 'school_morning' || f.stage == 'mall_morning'"]
	[playbgm storage="VoiceBack.mp3"]
[endif]

;キャラ登場
[chara_show name="arina_p" time=0]

;落書き確認
[if exp="f.graffiti_hentai == true"]
	[chara_part name="arina_p" graffiti_1=on]
[endif]
[if exp="f.graffiti_expose == true"]
	[chara_part name="arina_p" graffiti_2=on]
[endif]
[if exp="f.graffiti_attention == true"]
	[chara_part name="arina_p" graffiti_3=on]
[endif]
[if exp="f.graffiti_virgin == true"]
	[chara_part name="arina_p" graffiti_4=on]
[endif]
[if exp="f.graffiti_name == true"]
	[chara_part name="arina_p" graffiti_5=on]
[endif]
[if exp="f.graffiti_photo == true"]
	[chara_part name="arina_p" graffiti_6=on]
[endif]
[if exp="f.graffiti_school == true"]
	[chara_part name="arina_p" graffiti_7=on]
[endif]
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_p" graffiti_8=on]
[endif]
[if exp="f.graffiti_pussy == true"]
	[chara_part name="arina_p" graffiti_9=on]
[endif]

;表情
[if exp="f.expose_rank == 1"]
	[chara_part name="arina_p" blush=off]
	[chara_part name="arina_p" face=wait1]
	[chara_part name="arina_p" eye=1]
	[chara_part name="arina_p" breath=off]
[elsif exp="f.expose_rank == 2"]
	[chara_part name="arina_p" blush=off]
	[chara_part name="arina_p" face=wait2]
	[chara_part name="arina_p" eye=2]
	[chara_part name="arina_p" breath=off]
[elsif exp="f.expose_rank == 3"]
	[chara_part name="arina_p" blush=on]
	[chara_part name="arina_p" face=wait3]
	[chara_part name="arina_p" eye=2]
	[chara_part name="arina_p" breath=on]
[endif]

;陰毛確認
[if exp="f.public_hair == 'normal'"]
	[chara_part name="arina_p" public_hair=normal]
[elsif exp="f.public_hair == 'thick'"]
	[chara_part name="arina_p" public_hair=thick]
[endif]

;下着確認
[下着確認_プレイ画面]

;服装確認
[if exp="f.costume == 'uniform'"]
	[chara_part name="arina_p" body=underwear costume=uniform]
		;乳首マークはみ出防止処理
		[if eval exp="f.graffiti_boobs == true"]
			[chara_part name="arina_p" graffiti_8=off]
		[endif]

[elsif exp="f.costume == 'coat'"]
	[chara_part name="arina_p" costume=coat]
[elsif exp="f.costume == 'none'"]
	[chara_part name="arina_p" costume=none]
[endif]

[if exp="f.socks == true"]
	[chara_part name="arina_p" socks=on]
[elsif exp="f.socks == false"]
	[chara_part name="arina_p" socks=off]
[endif]

[if exp="f.shoes == true"]
	[chara_part name="arina_p" shoes=on]
[elsif exp="f.shoes == false"]
	[chara_part name="arina_p" shoes=off]
[endif]

;よーいスタート（作成中はコメントアウトしておく）
/*
[image name="black_screen" layer="0" storage="black.png"]
[wait time=200]
[image name="ready" layer="0" storage="ready_mark.png" time=900]
[wait time=600]
[free layer="0" name="ready"]
[image name="start" layer="0" storage="start_mark.png" time=100]
[wait time=700]
[free layer="0" name="start"]
[free layer="0" name="black_screen"]
*/

;システム回り表示
[image layer="0" name="score_bar" storage="score_gauge/score_bar.png"]
[chara_show name="score_gauge" time=0]
[chara_show name="life" time=0]
[chara_show name="score_gauge" time=0]
[chara_show name="orgasm_gauge" time=0]

;コマンドフレーム表示
[image name="command_frame" layer="0" storage="command_frame.png"]

;------------------------------------------------------------------------------------------------------
;かくす
;------------------------------------------------------------------------------------------------------
*hide
[wait_cancel]
[free_layermode time=0]
[chara_hide name="look_gauge" time=0]
[stopse buf=1]
[stopse buf=2]

;コマンド変数リセット
[eval exp="f.pussy_show = false"]
[eval exp="f.boobs_show = false"]
[eval exp="f.coat_expose = false"]
[eval exp="f.boobs_knead = false"]
[eval exp="f.masturbation = false"]
[eval exp="f.pee_only = false"]

[絶頂_E]

;モブ退場
[chara_hide name="man" time=300]
[chara_hide name="woman" time=300]
[chara_hide name="kid_b" time=300]
[chara_hide name="kid_g" time=300]
[chara_hide name="police" time=300]
[chara_hide name="jd1" time=300]
[chara_hide name="jd2" time=300]
[chara_hide name="jk1" time=300]
[chara_hide name="jk2" time=300]

;コマンドフレーム表示（startのみだとポーズから戻った時に消えてしまうためここにも記述）
[if exp="f.command_frame == false"]
	[image name="command_frame" layer="0" storage="command_frame.png"]
[endif]
[eval exp="f.command_frame = true"]

;立ち絵リセット
[chara_part name="arina_p" hand=none]
[chara_part name="arina_p" f_hand=none]
[chara_part name="arina_p" pee=off]
[chara_part name="arina_p" cloth=none]

;表情
[if exp="f.expose_rank == 1"]
	[chara_part name="arina_p" blush=off]
	[chara_part name="arina_p" face=wait1]
	[chara_part name="arina_p" eye=1]
	[chara_part name="arina_p" breath=off]
[elsif exp="f.expose_rank == 2"]
	[chara_part name="arina_p" blush=off]
	[chara_part name="arina_p" face=wait2]
	[chara_part name="arina_p" eye=2]
	[chara_part name="arina_p" breath=off]
[elsif exp="f.expose_rank == 3"]
	[chara_part name="arina_p" blush=on]
	[chara_part name="arina_p" face=wait3]
	[chara_part name="arina_p" eye=2]
	[chara_part name="arina_p" breath=on]
[endif]

;落書き確認
[if exp="f.graffiti_hentai == true"]
	[chara_part name="arina_p" graffiti_1=on]
[endif]
[if exp="f.graffiti_expose == true"]
	[chara_part name="arina_p" graffiti_2=on]
[endif]
[if exp="f.graffiti_attention == true"]
	[chara_part name="arina_p" graffiti_3=on]
[endif]
[if exp="f.graffiti_virgin == true"]
	[chara_part name="arina_p" graffiti_4=on]
[endif]
[if exp="f.graffiti_name == true"]
	[chara_part name="arina_p" graffiti_5=on]
[endif]
[if exp="f.graffiti_photo == true"]
	[chara_part name="arina_p" graffiti_6=on]
[endif]
[if exp="f.graffiti_school == true"]
	[chara_part name="arina_p" graffiti_7=on]
[endif]
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_p" graffiti_8=on]
[endif]
[if exp="f.graffiti_pussy == true"]
	[chara_part name="arina_p" graffiti_9=on]
[endif]

;陰毛確認
[if exp="f.public_hair == 'normal'"]
	[chara_part name="arina_p" public_hair=normal]
[elsif exp="f.public_hair == 'thick'"]
	[chara_part name="arina_p" public_hair=thick]
[endif]

;下着確認
[下着確認_プレイ画面]

;大股開き落書き戻す
	[if exp="f.graffiti_name == true"]
		[chara_part name="arina_p" graffiti_5=on]
	[endif]
	[if exp="f.graffiti_photo == true"]
		[chara_part name="arina_p" graffiti_6=on]
	[endif]
	[if exp="f.graffiti_school == true"]
		[chara_part name="arina_p" graffiti_7=on]
	[endif]


;服装確認
[if exp="f.costume == 'uniform'"]
	[chara_part name="arina_p" body=underwear costume=uniform]
		;乳首マークはみ出防止処理
		[if eval exp="f.graffiti_boobs == true"]
			[chara_part name="arina_p" graffiti_8=off]
		[endif]
[elsif exp="f.costume == 'coat'"]
	[chara_part name="arina_p" costume=coat]
[elsif exp="f.costume == 'none'"]
	[chara_part name="arina_p" costume=none]
[endif]

[if exp="f.socks == true"]
	[chara_part name="arina_p" socks=on]
[elsif exp="f.socks == false"]
	[chara_part name="arina_p" socks=off]
[endif]

[if exp="f.shoes == true"]
	[chara_part name="arina_p" shoes=on]
[elsif exp="f.shoes == false"]
	[chara_part name="arina_p" shoes=off]
[endif]

;ライフ
[if exp="f.life == 3"]
	[chara_part name="life" life=3  time=0]
[elsif exp="f.life == 2"]
	[chara_part name="life" life=2  time=0]
[elsif exp="f.life == 1"]
	[chara_part name="life" life=1  time=0]
[elsif exp="f.life == 0"]
	[chara_part name="life" life=0  time=0]
[endif]

[eval exp="f.satisfaction = 100"]
[満足_E]

[chara_show name="manzokudo" time=0]

;ボタン（服装、露出狂レベルによって使えるコマンドをグレーアウト）
[if exp="f.costume == 'uniform'"]
	[locate x=857 y=511]
	[button graphic="button/command/button_pussy_show.png" storage="endless.ks" target="pussy_show"]
[else]
	[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[endif]

[if exp="f.costume == 'uniform'"]
	[locate x=770 y=511]
	[button graphic="button/command/button_boobs_show.png" storage="endless.ks" target="boobs_show"]
[else]
	[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[endif]

;コート露出
[if exp="f.costume == 'coat'"]
	[locate x=770 y=377]
	[button graphic="button/command/button_coat.png" storage="endless.ks" target="coat_expose"]
[else]
	[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[endif]

;胸揉み
[if exp="f.expose_rank >= 2 || f.complete == true"]
	[locate x=857 y=444]
	[button graphic="button/command/button_knead.png" storage="endless.ks" target="boobs_knead"]
[elsif exp="f.expose_rank < 2"]
	[image name="bk_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[endif]

;オナニー
[if exp="f.expose_rank == 3 || f.complete == true"]
	[locate x=770 y=444]
	[button graphic="button/command/button_masturbation.png" storage="endless.ks" target="masturbation"]
[elsif exp="f.expose_rank < 3"]
	[image name="mb_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[endif]

;おしっこ
[if exp="f.expose_rank == 3 || f.complete == true"]
	[locate x=857 y=377]
	[button graphic="button/command/button_pee.png" storage="endless.ks" target="pee" exp="f.pee_only = true"]
[elsif exp="f.expose_rank < 3"]
	[image name="pe_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[endif]

[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]

[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

[s]

;------------------------------------------------------------------------------------------------------
;パンチラ
;------------------------------------------------------------------------------------------------------
*pussy_show
[wait_cancel]
;[free_layermode time=0]
[chara_part name="arina_p" hand=none]
[chara_part name="arina_p" pee=off]
[chara_part name="arina_p" breath=off]

;コマンド変数代入
[eval exp="f.pussy_show = true"]

;ボタン（全グレーアウト） ※アニメーション途中でおしっこしないようにするためここにも記述
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;フリルカット
[if exp="f.costume == 'uniform'"]
	[if exp="f.underwear == 'frill1'"]
		[chara_part name="arina_p" underwear=frill1_cut]
	[elsif exp="f.underwear == 'frill2'"]
		[chara_part name="arina_p" underwear=frill2_cut]
	[elsif exp="f.underwear == 'frill3'"]
		[chara_part name="arina_p" underwear=frill3_cut]
	[elsif exp="f.underwear == 'frill4'"]
		[chara_part name="arina_p" underwear=frill4_cut]
	[elsif exp="f.underwear == 'frill5'"]
		[chara_part name="arina_p" underwear=frill5_cut]
	[endif]
[endif]

;アニメーション
[chara_part name="arina_p" body=ps1]
[chara_part name="arina_p" costume=ps1]
[wait time=80]
[chara_part name="arina_p" cloth=ps2]
[chara_part name="arina_p" body=ps2 time=0]
[layermode folder="fgimage/animation/pussy_show" graphic="pussy_show_2_shadow.png" mode="multiply" time=0]
[chara_part name="arina_p" costume=ps2]
[wait time=80]
[chara_part name="arina_p" cloth=ps3]
[chara_part name="arina_p" body=ps3 time=0]
[free_layermode time=0]
[chara_part name="arina_p" costume=ps3]
[layermode folder="fgimage/animation/pussy_show" graphic="pussy_show_3_shadow.png" mode="multiply" time=0]

;表情
[chara_part name="arina_p" blush=on]
[chara_part name="arina_p" eye=0]

[if exp="f.expose_rank == 1"]
	[chara_part name="arina_p" face=ps1]
	[chara_part name="arina_p" breath=on]
[elsif exp="f.expose_rank == 2"]
	[chara_part name="arina_p" face=ps2]
	[chara_part name="arina_p" breath=on]
[elsif exp="f.expose_rank == 3"]
	[chara_part name="arina_p" face=ps3]
	[chara_part name="arina_p" breath=on]
[endif]

;ボイス
[if exp="f.expose_rank == 1"]
	[playse buf=2 storage="echioto_はぁはぁ.mp3" loop=true]
[elsif exp="f.expose_rank == 2"]
	[playse buf=2 storage="echioto_あはっ.mp3"]
[elsif exp="f.expose_rank == 3"]
	[playse buf=2 storage="echioto_んん〜04.mp3"]
[endif]

;ボタン
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]

[if exp="f.expose_rank == 3 || f.complete == true"]
	[locate x=857 y=377]
	[button graphic="button/command/button_pee.png" storage="endless.ks" target="pee"]
[elsif exp="f.expose_rank < 3"]
	[image name="pe_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[endif]

[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;Normalモード
;------------------------------------------------------------------------------------------------------
;待機N
*ps_loop
[if eval exp="f.stage == 'park_night' || f.stage == 'residential_night' || f.stage == 'school_night' || f.stage == 'mall_night'"]
	[iscript]
	tf.wait_n = getRandItem(["1000", "2000", "3000"])
	[endscript]
	
	[if exp="tf.wait_n == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_n == 2000"]
		[待機_2000_E]
	[elsif exp="tf.wait_n == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージN（ステージ難易度順）
[if eval exp="f.stage == 'mall_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["2000", "2500","3000"])
	[endscript]
	
	[if exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[elsif exp="tf.look_n == 3000"]
		[視線ゲージN_3000_E]
	[endif]

[elsif eval exp="f.stage == 'school_night'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_n = getRandItem(["1500", "2000", "2500"])
	[endscript]
	
	[if exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[endif]

[elsif eval exp="f.stage == 'park_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["1000", "1500", "2000"])
	[endscript]
	
	[if exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[endif]

[elsif eval exp="f.stage == 'residential_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_n == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[endif]
[endif]
[endif]

;Hardモード
;------------------------------------------------------------------------------------------------------
;待機H
[if eval exp="f.stage == 'park_morning' || f.stage == 'residential_morning' || f.stage == 'school_morning' || f.stage == 'mall_morning'"]
	[iscript]
	tf.wait_h = getRandItem(["300", "500", "1000","3000"])
	[endscript]

	[if exp="tf.wait_h == 300"]
		[待機_300_E]
	[elsif exp="tf.wait_h == 500"]
		[待機_500_E]
	[elsif exp="tf.wait_h == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_h == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージH（ステージ難易度順/Nも混ぜてる）
[if eval exp="f.stage == 'park_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]
	
[elsif eval exp="f.stage == 'residential_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]

[elsif eval exp="f.stage == 'school_morning'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージN_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]

[elsif eval exp="f.stage == 'mall_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージH_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]
[endif]
[endif]

;モブ退場
[chara_hide name="look_gauge" time=0]
[chara_hide name="man" time=300]
[chara_hide name="woman" time=300]
[chara_hide name="kid_b" time=300]
[chara_hide name="kid_g" time=300]
[chara_hide name="police" time=300]
[chara_hide name="jd1" time=300]
[chara_hide name="jd2" time=300]
[chara_hide name="jk1" time=300]
[chara_hide name="jk2" time=300]

@jump target="ps_loop"
[s]

;------------------------------------------------------------------------------------------------------
;胸見せ
;------------------------------------------------------------------------------------------------------
*boobs_show
[wait_cancel]
[chara_part name="arina_p" hand=none]
[chara_part name="arina_p" pee=off]

;コマンド変数代入
[eval exp="f.boobs_show = true"]

;ボタン（全グレーアウト） ※アニメーション途中でおしっこしないようにするためここにも記述
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;アニメーション
[chara_part name="arina_p" body=bs1]
[chara_part name="arina_p" costume=bs1]
[wait time=50]
[chara_part name="arina_p" body=bs2 time=0]
[chara_part name="arina_p" costume=bs2]
[wait time=50]

	;表情
	[chara_part name="arina_p" blush=on]
	[chara_part name="arina_p" eye=0]
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" face=bs1]
			[chara_part name="arina_p" breath=on]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" face=bs2]
			[chara_part name="arina_p" breath=on]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" face=bs3]
			[chara_part name="arina_p" breath=on]
		[endif]

[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
	[chara_part name="arina_p" body=bs3_u time=0]
	[chara_part name="arina_p" costume=bs3]
	[wait time=200]
	[chara_part name="arina_p" body=bs4_u time=0]
	[chara_part name="arina_p" costume=bs4_u]
	;下着を揺らす
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_undies_4.png" mode="multiply" time=0 zindex=0]
	[chara_part name="arina_p" underwear="& f.underwear + '_bs'"]
	[wait time=80]
	[chara_part name="arina_p" body=bs5_u time=0]
	[chara_part name="arina_p" costume=bs5_u]
	[free_layermode time=0]
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_undies_5.png" mode="multiply" time=0 zindex=0]
	;下着を戻す
	[chara_part name="arina_p" underwear="& f.underwear"]
[endif]

[if exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
	[chara_part name="arina_p" body=bs3_u time=0]
	[chara_part name="arina_p" costume=bs3]
	[wait time=200]
	[chara_part name="arina_p" body=bs4_u time=0]
	[chara_part name="arina_p" costume=bs4_u]
	;下着を揺らす
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_undies_4.png" mode="multiply" time=0 zindex=0]
	[chara_part name="arina_p" underwear="& f.underwear + '_bs'"]
	[wait time=80]
	[chara_part name="arina_p" body=bs5_u time=0]
	[chara_part name="arina_p" costume=bs5_u]
	[free_layermode time=0]
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_undies_5.png" mode="multiply" time=0 zindex=0]
	;下着を戻す
	[chara_part name="arina_p" underwear="& f.underwear"]
[endif]

[if exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
	[chara_part name="arina_p" body=bs3_n time=0]
	[chara_part name="arina_p" costume=bs3]
	[wait time=300]
	[chara_part name="arina_p" body=bs4_n time=0]
	[chara_part name="arina_p" costume=bs4_n]
	;下着を揺らす
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_nude_4.png" mode="multiply" time=0 zindex=0]
	[chara_part name="arina_p" underwear="& f.underwear + '_bs'"]
	[wait time=80]
	[chara_part name="arina_p" body=bs5_n time=0]
	[chara_part name="arina_p" costume=bs5_n]
	[free_layermode time=0]
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_nude_5.png" mode="multiply" time=0 zindex=0]
	;下着を戻す
	[chara_part name="arina_p" underwear="& f.underwear"]
[endif]

[if exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
	[chara_part name="arina_p" body=bs3_n time=0]
	[chara_part name="arina_p" costume=bs3]
	[wait time=300]
	[chara_part name="arina_p" body=bs4_n time=0]
	[chara_part name="arina_p" costume=bs4_n]
	;下着を揺らす
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_nude_4.png" mode="multiply" time=0 zindex=0]
	[chara_part name="arina_p" underwear="& f.underwear + '_bs'"]
	[wait time=80]
	[chara_part name="arina_p" body=bs5_n time=0]
	[chara_part name="arina_p" costume=bs5_n]
	[free_layermode time=0]
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_nude_5.png" mode="multiply" time=0 zindex=0]
	;下着を戻す
	[chara_part name="arina_p" underwear="& f.underwear"]
[endif]

[if exp="f.underwear == 'none'"]
	[chara_part name="arina_p" body=bs3_n time=0]
	[chara_part name="arina_p" costume=bs3]
	[wait time=300]
	[chara_part name="arina_p" body=bs4_n time=0]
	[chara_part name="arina_p" costume=bs4_n]
	;下着を揺らす
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_nude_4.png" mode="multiply" time=0 zindex=0]
	[chara_part name="arina_p" underwear="& f.underwear + '_bs'"]
	[wait time=80]
	[chara_part name="arina_p" body=bs5_n time=0]
	[chara_part name="arina_p" costume=bs5_n]
	[free_layermode time=0]
	[layermode folder="fgimage/animation/boobs_show" graphic="shadow_nude_5.png" mode="multiply" time=0 zindex=0]
	;下着を戻す
	[chara_part name="arina_p" underwear="& f.underwear"]
[endif]

;ボイス
[if exp="f.expose_rank == 1"]
	[playse buf=2 storage="echioto_んん〜04.mp3"]
[elsif exp="f.expose_rank == 2"]
	[playse buf=2 storage="echioto_はぁ〜02.mp3"]
[elsif exp="f.expose_rank == 3"]
	[playse buf=2 storage="echioto_んっ05.mp3"]
[endif]

;ボタン
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]

[if exp="f.expose_rank == 3 || f.complete == true"]
	[locate x=857 y=377]
	[button graphic="button/command/button_pee.png" storage="endless.ks" target="pee"]
[elsif exp="f.expose_rank < 3"]
	[image name="pe_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[endif]

[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;Normalモード
;------------------------------------------------------------------------------------------------------
;待機N
*bs_loop
[if eval exp="f.stage == 'park_night' || f.stage == 'residential_night' || f.stage == 'school_night' || f.stage == 'mall_night'"]
	[iscript]
	tf.wait_n = getRandItem(["1000", "2000", "3000"])
	[endscript]
	
	[if exp="tf.wait_n == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_n == 2000"]
		[待機_2000_E]
	[elsif exp="tf.wait_n == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージN（ステージ難易度順）
[if eval exp="f.stage == 'mall_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["2000", "2500","3000"])
	[endscript]
	
	[if exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[elsif exp="tf.look_n == 3000"]
		[視線ゲージN_3000_E]
	[endif]

[elsif eval exp="f.stage == 'school_night'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_n = getRandItem(["1500", "2000", "2500"])
	[endscript]
	
	[if exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[endif]

[elsif eval exp="f.stage == 'park_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["1000", "1500", "2000"])
	[endscript]
	
	[if exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[endif]

[elsif eval exp="f.stage == 'residential_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_n == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[endif]
[endif]
[endif]

;Hardモード
;------------------------------------------------------------------------------------------------------
;待機H
[if eval exp="f.stage == 'park_morning' || f.stage == 'residential_morning' || f.stage == 'school_morning' || f.stage == 'mall_morning'"]
	[iscript]
	tf.wait_h = getRandItem(["300", "500", "1000","3000"])
	[endscript]

	[if exp="tf.wait_h == 300"]
		[待機_300_E]
	[elsif exp="tf.wait_h == 500"]
		[待機_500_E]
	[elsif exp="tf.wait_h == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_h == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージH（ステージ難易度順/Nも混ぜてる）
[if eval exp="f.stage == 'park_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]
	
[elsif eval exp="f.stage == 'residential_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]

[elsif eval exp="f.stage == 'school_morning'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージN_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]

[elsif eval exp="f.stage == 'mall_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージH_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]
[endif]
[endif]

;モブ退場
[chara_hide name="look_gauge" time=0]
[chara_hide name="man" time=300]
[chara_hide name="woman" time=300]
[chara_hide name="kid_b" time=300]
[chara_hide name="kid_g" time=300]
[chara_hide name="police" time=300]
[chara_hide name="jd1" time=300]
[chara_hide name="jd2" time=300]
[chara_hide name="jk1" time=300]
[chara_hide name="jk2" time=300]

@jump target="bs_loop"
[s]

;------------------------------------------------------------------------------------------------------
;コート露出
;------------------------------------------------------------------------------------------------------
*coat_expose
[wait_cancel]
;[chara_part name="arina_p" hand=none]
;[chara_part name="arina_p" pee=off]

;コマンド変数代入
[eval exp="f.coat_expose = true"]

;ボタン（全グレーアウト） ※アニメーション途中でおしっこしないようにするためここにも記述
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;アニメーション
[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
	[chara_part name="arina_p" body=ce_u]
	[chara_part name="arina_p" costume=ce1]
	[wait time=100]
	[chara_part name="arina_p" cloth=ce]
	[chara_part name="arina_p" costume=ce2]
	[wait time=100]
	[chara_part name="arina_p" costume=ce3_u]
	[wait time=100]
	;ランク３大股開き
	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=ce_u_open]
		[if exp="f.socks == true"]
			[chara_part name="arina_p" socks=open]
		[endif]
		[if exp="f.shoes == true"]
			[chara_part name="arina_p" shoes=open]
		[endif]
		[if exp="f.graffiti_name == true"]
			[chara_part name="arina_p" graffiti_5=open]
		[endif]
		[if exp="f.graffiti_photo == true"]
			[chara_part name="arina_p" graffiti_6=open]
		[endif]
		[if exp="f.graffiti_school == true"]
			[chara_part name="arina_p" graffiti_7=open]
		[endif]
	[endif]
	[chara_part name="arina_p" cloth=ce_u4]
	[chara_part name="arina_p" costume=ce4_u]
[endif]

[if exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
	[chara_part name="arina_p" body=ce_u]
	[chara_part name="arina_p" costume=ce1]
	[wait time=100]
	[chara_part name="arina_p" cloth=ce]
	[chara_part name="arina_p" costume=ce2]
	[wait time=100]
	[chara_part name="arina_p" costume=ce3_u]
	[wait time=100]
	;ランク３大股開き
	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=ce_u_open]
		[if exp="f.socks == true"]
			[chara_part name="arina_p" socks=open]
		[endif]
		[if exp="f.shoes == true"]
			[chara_part name="arina_p" shoes=open]
		[endif]
		[if exp="f.graffiti_name == true"]
			[chara_part name="arina_p" graffiti_5=open]
		[endif]
		[if exp="f.graffiti_photo == true"]
			[chara_part name="arina_p" graffiti_6=open]
		[endif]
		[if exp="f.graffiti_school == true"]
			[chara_part name="arina_p" graffiti_7=open]
		[endif]
	[endif]
	[chara_part name="arina_p" cloth=ce_u4]
	[chara_part name="arina_p" costume=ce4_u]
[endif]

[if exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
	[chara_part name="arina_p" body=ce1_bikini]
	[chara_part name="arina_p" costume=ce1]
	[wait time=100]
	[chara_part name="arina_p" cloth=ce]
	[chara_part name="arina_p" body=ce2_bikini]
	[chara_part name="arina_p" costume=ce2]
	[wait time=100]
	[chara_part name="arina_p" body=ce3_bikini]
	[chara_part name="arina_p" costume=ce3_n]
	[wait time=100]
	;ランク３大股開き
	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=ce_n_open]
		[if exp="f.socks == true"]
			[chara_part name="arina_p" socks=open]
		[endif]
		[if exp="f.shoes == true"]
			[chara_part name="arina_p" shoes=open]
		[endif]
		[if exp="f.graffiti_name == true"]
			[chara_part name="arina_p" graffiti_5=open]
		[endif]
		[if exp="f.graffiti_photo == true"]
			[chara_part name="arina_p" graffiti_6=open]
		[endif]
		[if exp="f.graffiti_school == true"]
			[chara_part name="arina_p" graffiti_7=open]
		[endif]
	[endif]
	[chara_part name="arina_p" cloth=ce_n4]
	[chara_part name="arina_p" body=ce4_bikini]
	[chara_part name="arina_p" costume=ce4_n]
[endif]

[if exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
	[chara_part name="arina_p" body=ce_n]
	[chara_part name="arina_p" costume=ce1]
	[wait time=100]
	[chara_part name="arina_p" cloth=ce]
	[chara_part name="arina_p" costume=ce2]
	[wait time=100]
	[chara_part name="arina_p" costume=ce3_n]
	[wait time=100]
	;ランク３大股開き
	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=ce_n_open]
		[if exp="f.socks == true"]
			[chara_part name="arina_p" socks=open]
		[endif]
		[if exp="f.shoes == true"]
			[chara_part name="arina_p" shoes=open]
		[endif]
		[if exp="f.graffiti_name == true"]
			[chara_part name="arina_p" graffiti_5=open]
		[endif]
		[if exp="f.graffiti_photo == true"]
			[chara_part name="arina_p" graffiti_6=open]
		[endif]
		[if exp="f.graffiti_school == true"]
			[chara_part name="arina_p" graffiti_7=open]
		[endif]
	[endif]
	[chara_part name="arina_p" cloth=ce_n4]
	[chara_part name="arina_p" costume=ce4_n]
[endif]

[if exp="f.underwear == 'none'"]
	[chara_part name="arina_p" body=ce_n]
	[chara_part name="arina_p" costume=ce1]
	[wait time=200]
	[chara_part name="arina_p" cloth=ce]
	[chara_part name="arina_p" costume=ce2]
	[wait time=100]
	[chara_part name="arina_p" costume=ce3_n]
	[wait time=100]
	;ランク３大股開き
	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=ce_n_open]
		[if exp="f.socks == true"]
			[chara_part name="arina_p" socks=open]
		[endif]
		[if exp="f.shoes == true"]
			[chara_part name="arina_p" shoes=open]
		[endif]
		[if exp="f.graffiti_name == true"]
			[chara_part name="arina_p" graffiti_5=open]
		[endif]
		[if exp="f.graffiti_photo == true"]
			[chara_part name="arina_p" graffiti_6=open]
		[endif]
		[if exp="f.graffiti_school == true"]
			[chara_part name="arina_p" graffiti_7=open]
		[endif]
	[endif]
	[chara_part name="arina_p" cloth=ce_n4]
	[chara_part name="arina_p" costume=ce4_n]
[endif]

;表情
[chara_part name="arina_p" blush=on]
[chara_part name="arina_p" eye=0]

	[if exp="f.expose_rank == 1"]
		[chara_part name="arina_p" face=ce1]
		[chara_part name="arina_p" breath=on]
	[elsif exp="f.expose_rank == 2"]
		[chara_part name="arina_p" face=ce2]
		[chara_part name="arina_p" breath=on]
	[elsif exp="f.expose_rank == 3"]
		[chara_part name="arina_p" face=ce3]
		[chara_part name="arina_p" breath=on]
	[endif]

;ボイス
[if exp="f.expose_rank == 1"]
	[playse buf=2 storage="echioto_んっ.mp3"]
[elsif exp="f.expose_rank == 2"]
	[playse buf=2 storage="echioto_あはっ.mp3"]
[elsif exp="f.expose_rank == 3"]
	[playse buf=2 storage="echioto_あはっ.mp3"]
[endif]

;ボタン
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]

[if exp="f.expose_rank == 3 || f.complete == true"]
	[locate x=857 y=377]
	[button graphic="button/command/button_pee.png" storage="endless.ks" target="pee"]
[elsif exp="f.expose_rank < 3"]
	[image name="pe_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[endif]

[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;Normalモード
;------------------------------------------------------------------------------------------------------
;待機N
*ce_loop
[if eval exp="f.stage == 'park_night' || f.stage == 'residential_night' || f.stage == 'school_night' || f.stage == 'mall_night'"]
	[iscript]
	tf.wait_n = getRandItem(["1000", "2000", "3000"])
	[endscript]
	
	[if exp="tf.wait_n == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_n == 2000"]
		[待機_2000_E]
	[elsif exp="tf.wait_n == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージN（ステージ難易度順）
[if eval exp="f.stage == 'mall_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["2000", "2500","3000"])
	[endscript]
	
	[if exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[elsif exp="tf.look_n == 3000"]
		[視線ゲージN_3000_E]
	[endif]

[elsif eval exp="f.stage == 'school_night'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_n = getRandItem(["1500", "2000", "2500"])
	[endscript]
	
	[if exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[endif]

[elsif eval exp="f.stage == 'park_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["1000", "1500", "2000"])
	[endscript]
	
	[if exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[endif]

[elsif eval exp="f.stage == 'residential_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_n == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[endif]
[endif]
[endif]

;Hardモード
;------------------------------------------------------------------------------------------------------
;待機H
[if eval exp="f.stage == 'park_morning' || f.stage == 'residential_morning' || f.stage == 'school_morning' || f.stage == 'mall_morning'"]
	[iscript]
	tf.wait_h = getRandItem(["300", "500", "1000","3000"])
	[endscript]

	[if exp="tf.wait_h == 300"]
		[待機_300_E]
	[elsif exp="tf.wait_h == 500"]
		[待機_500_E]
	[elsif exp="tf.wait_h == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_h == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージH（ステージ難易度順/Nも混ぜてる）
[if eval exp="f.stage == 'park_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]
	
[elsif eval exp="f.stage == 'residential_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]

[elsif eval exp="f.stage == 'school_morning'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージN_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]

[elsif eval exp="f.stage == 'mall_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージH_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]
[endif]
[endif]

;モブ退場
[chara_hide name="look_gauge" time=0]
[chara_hide name="man" time=300]
[chara_hide name="woman" time=300]
[chara_hide name="kid_b" time=300]
[chara_hide name="kid_g" time=300]
[chara_hide name="police" time=300]
[chara_hide name="jd1" time=300]
[chara_hide name="jd2" time=300]
[chara_hide name="jk1" time=300]
[chara_hide name="jk2" time=300]

@jump target="ce_loop"
[s]

;------------------------------------------------------------------------------------------------------
;胸揉み
;------------------------------------------------------------------------------------------------------
*boobs_knead
[wait_cancel]
[chara_part name="arina_p" hand=none]
[chara_part name="arina_p" pee=off]
[chara_part name="arina_p" breath=off]

;コマンド変数代入
[eval exp="f.boobs_knead = true"]

;フリルカット
[if exp="f.costume == 'uniform'"]
	[if exp="f.underwear == 'frill1'"]
		[chara_part name="arina_p" underwear=frill1_cut]
	[elsif exp="f.underwear == 'frill2'"]
		[chara_part name="arina_p" underwear=frill2_cut]
	[elsif exp="f.underwear == 'frill3'"]
		[chara_part name="arina_p" underwear=frill3_cut]
	[elsif exp="f.underwear == 'frill4'"]
		[chara_part name="arina_p" underwear=frill4_cut]
	[elsif exp="f.underwear == 'frill5'"]
		[chara_part name="arina_p" underwear=frill5_cut]
	[endif]
[endif]

;アニメーション
[if exp="f.costume == 'uniform'"]
	[chara_part name="arina_p" body=bk_u]
	[chara_part name="arina_p" costume=bk_uni]
[endif]

[if exp="f.costume == 'coat'"]
[chara_part name="arina_p" cloth=ce]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
	[chara_part name="arina_p" body=bk_u]
	[chara_part name="arina_p" costume=bk_coat_u]
	[endif]
	[if exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
	[chara_part name="arina_p" body=bk_u]
	[chara_part name="arina_p" costume=bk_coat_u]
	[endif]
	[if exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
	[chara_part name="arina_p" body=bk_n]
	[chara_part name="arina_p" costume=bk_coat_n]
	[endif]
	[if exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
	[chara_part name="arina_p" body=bk_n]
	[chara_part name="arina_p" costume=bk_coat_n]
	[endif]
	[if exp="f.underwear == 'none'"]
	[chara_part name="arina_p" body=bk_n]
	[chara_part name="arina_p" costume=bk_coat_n]
	[endif]
[endif]

[if exp="f.costume == 'none'"]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
	[chara_part name="arina_p" body=bk_u]
	[chara_part name="arina_p" costume=bk_u]
	[endif]
	[if exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
	[chara_part name="arina_p" body=bk_u]
	[chara_part name="arina_p" costume=bk_u]
	[endif]
	[if exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
	[chara_part name="arina_p" body=bk_n]
	[chara_part name="arina_p" costume=bk_n]
	[endif]
	[if exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
	[chara_part name="arina_p" body=bk_n]
	[chara_part name="arina_p" costume=bk_n]
	[endif]
	[if exp="f.underwear == 'none'"]
	[chara_part name="arina_p" body=bk_n]
	[chara_part name="arina_p" costume=bk_n]
	[endif]
[endif]


;表情
[chara_part name="arina_p" blush=on]
[chara_part name="arina_p" eye=0]

	[if exp="f.expose_rank == 1"]
	[chara_part name="arina_p" face=bk1]
	[chara_part name="arina_p" breath=on]
	[elsif exp="f.expose_rank == 2"]
	[chara_part name="arina_p" face=bk2]
	[chara_part name="arina_p" breath=on]
	[elsif exp="f.expose_rank == 3"]
	[chara_part name="arina_p" face=bk3]
	[chara_part name="arina_p" breath=on]
	[endif]

;ボイス
[if exp="f.expose_rank == 1"]
	[playse buf=2 storage="echioto_ああ〜・・・02.mp3"]
[elsif exp="f.expose_rank == 2"]
	[playse buf=2 storage="echioto_おほっ.mp3"]
[elsif exp="f.expose_rank == 3"]
	[playse buf=2 storage="echioto_おほっ.mp3"]
[endif]

;ボタン
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]

[if exp="f.expose_rank == 3 || f.complete == true"]
	[locate x=857 y=377]
	[button graphic="button/command/button_pee.png" storage="endless.ks" target="pee"]
[elsif exp="f.expose_rank < 3"]
	[image name="pe_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[endif]

[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;Normalモード
;------------------------------------------------------------------------------------------------------
;待機N
*bk_loop
[if eval exp="f.stage == 'park_night' || f.stage == 'residential_night' || f.stage == 'school_night' || f.stage == 'mall_night'"]
	[iscript]
	tf.wait_n = getRandItem(["1000", "2000", "3000"])
	[endscript]
	
	[if exp="tf.wait_n == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_n == 2000"]
		[待機_2000_E]
	[elsif exp="tf.wait_n == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージN（ステージ難易度順）
[if eval exp="f.stage == 'mall_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["2000", "2500","3000"])
	[endscript]
	
	[if exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[elsif exp="tf.look_n == 3000"]
		[視線ゲージN_3000_E]
	[endif]

[elsif eval exp="f.stage == 'school_night'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_n = getRandItem(["1500", "2000", "2500"])
	[endscript]
	
	[if exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[endif]

[elsif eval exp="f.stage == 'park_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["1000", "1500", "2000"])
	[endscript]
	
	[if exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[endif]

[elsif eval exp="f.stage == 'residential_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_n == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[endif]
[endif]
[endif]

;Hardモード
;------------------------------------------------------------------------------------------------------
;待機H
[if eval exp="f.stage == 'park_morning' || f.stage == 'residential_morning' || f.stage == 'school_morning' || f.stage == 'mall_morning'"]
	[iscript]
	tf.wait_h = getRandItem(["300", "500", "1000","3000"])
	[endscript]

	[if exp="tf.wait_h == 300"]
		[待機_300_E]
	[elsif exp="tf.wait_h == 500"]
		[待機_500_E]
	[elsif exp="tf.wait_h == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_h == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージH（ステージ難易度順/Nも混ぜてる）
[if eval exp="f.stage == 'park_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]
	
[elsif eval exp="f.stage == 'residential_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]

[elsif eval exp="f.stage == 'school_morning'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージN_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]

[elsif eval exp="f.stage == 'mall_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージH_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]
[endif]
[endif]

;モブ退場
[chara_hide name="look_gauge" time=0]
[chara_hide name="man" time=300]
[chara_hide name="woman" time=300]
[chara_hide name="kid_b" time=300]
[chara_hide name="kid_g" time=300]
[chara_hide name="police" time=300]
[chara_hide name="jd1" time=300]
[chara_hide name="jd2" time=300]
[chara_hide name="jk1" time=300]
[chara_hide name="jk2" time=300]

@jump target="bk_loop"
[s]

;------------------------------------------------------------------------------------------------------
;オナニー
;------------------------------------------------------------------------------------------------------
*masturbation
[wait_cancel]
[chara_part name="arina_p" pee=off]

;コマンド変数代入
[eval exp="f.masturbation = true"]

;フリルカット
[if exp="f.costume == 'uniform'"]
	[if exp="f.underwear == 'frill1'"]
	[chara_part name="arina_p" underwear=frill1_cut]
	[elsif exp="f.underwear == 'frill2'"]
	[chara_part name="arina_p" underwear=frill2_cut]
	[elsif exp="f.underwear == 'frill3'"]
	[chara_part name="arina_p" underwear=frill3_cut]
	[elsif exp="f.underwear == 'frill4'"]
	[chara_part name="arina_p" underwear=frill4_cut]
	[elsif exp="f.underwear == 'frill5'"]
	[chara_part name="arina_p" underwear=frill5_cut]
	[endif]
[endif]

[playse buf=1 storage="手マン５.mp3" loop=true]

;アニメーション
;制服
[if exp="f.costume == 'uniform'"]
[chara_part name="arina_p" cloth=mb_uni]
[chara_part name="arina_p" body=mb_u]
[chara_part name="arina_p" costume=mb_uni]
[chara_part name="arina_p" hand=uni]
	;フリーハンド
	[if exp="f.expose_rank == 1"]
		[chara_part name="arina_p" f_hand=fh_up_uni]
	[elsif exp="f.expose_rank == 2"]
		[chara_part name="arina_p" f_hand=fh_down_uni]
	[elsif exp="f.expose_rank == 3"]
		[chara_part name="arina_p" f_hand=fh_bk_uni]
	[endif]
[layermode folder="fgimage/animation/masturbation" graphic="mb_uni_shadow.png" mode="multiply" time=0 zindex=0]
[endif]

;コート
[if exp="f.costume == 'coat'"]
	[chara_part name="arina_p" cloth=mb_coat]

	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
	[chara_part name="arina_p" body=mb_u]
	[chara_part name="arina_p" costume=mb_coat_u]
	[chara_part name="arina_p" hand=coat_u]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_coat_u]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down_coat]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_coat_u]
		[endif]
	[endif]
	
	[if exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
	[chara_part name="arina_p" body=mb_u]
	[chara_part name="arina_p" costume=mb_coat_u]
	[chara_part name="arina_p" hand=coat_u]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_coat_u]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down_coat]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_coat_u]
		[endif]
	[endif]
	
	[if exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
	[chara_part name="arina_p" body=mb_n]
	[chara_part name="arina_p" costume=mb_coat_n]
	[chara_part name="arina_p" hand=coat_n]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_coat_n]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down_coat]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_coat_n]
		[endif]
	[endif]
	
	[if exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
	[chara_part name="arina_p" body=mb_n]
	[chara_part name="arina_p" costume=mb_coat_n]
	[chara_part name="arina_p" hand=coat_n]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_coat_n]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down_coat]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_coat_n]
		[endif]
	[endif]
	
	[if exp="f.underwear == 'none'"]
	[chara_part name="arina_p" body=mb_n]
	[chara_part name="arina_p" costume=mb_coat_n]
	[chara_part name="arina_p" hand=coat_n]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_coat_n]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down_coat]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_coat_n]
		[endif]
	[endif]
[endif]

;裸
[if exp="f.costume == 'none'"]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
	[chara_part name="arina_p" body=mb_u]
	[chara_part name="arina_p" hand=undies]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_u]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_u]
		[endif]
	[endif]
	
	[if exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
	[chara_part name="arina_p" body=mb_u]
	[chara_part name="arina_p" hand=undies]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_u]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_u]
		[endif]
	[endif]
	
	[if exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
	[chara_part name="arina_p" body=mb_n]
	[chara_part name="arina_p" hand=nude]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_n]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_n]
		[endif]
	[endif]
	
	[if exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
	[chara_part name="arina_p" body=mb_n]
	[chara_part name="arina_p" hand=nude]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_n]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_n]
		[endif]
	[endif]
	
	[if exp="f.underwear == 'none'"]
	[chara_part name="arina_p" body=mb_n]
	[chara_part name="arina_p" hand=nude]
		;フリーハンド
		[if exp="f.expose_rank == 1"]
			[chara_part name="arina_p" f_hand=fh_up_n]
		[elsif exp="f.expose_rank == 2"]
			[chara_part name="arina_p" f_hand=fh_down]
		[elsif exp="f.expose_rank == 3"]
			[chara_part name="arina_p" f_hand=fh_bk_n]
		[endif]
	[endif]
[endif]

;表情
[chara_part name="arina_p" blush=on]
[chara_part name="arina_p" eye=0]

	[if exp="f.expose_rank == 1"]
		[chara_part name="arina_p" face=mb1]
		[chara_part name="arina_p" breath=on]
	[elsif exp="f.expose_rank == 2"]
		[chara_part name="arina_p" face=mb2]
		[chara_part name="arina_p" breath=on]
	[elsif exp="f.expose_rank == 3"]
		[chara_part name="arina_p" face=mb3]
		[chara_part name="arina_p" breath=tongue]
	[endif]

;ボイス
[if exp="f.expose_rank == 1"]
	[playse buf=2 storage="echioto_はぁ〜.mp3"]
[elsif exp="f.expose_rank == 2"]
	[playse buf=2 storage="echioto_はぁはぁ.mp3"]
[elsif exp="f.expose_rank == 3"]
	[playse buf=2 storage="echioto_舌を出す02.mp3"]
[endif]

;ボタン
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[locate x=857 y=377]
[button graphic="button/command/button_pee.png" storage="endless.ks" target="pee"]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;Normalモード
;------------------------------------------------------------------------------------------------------
;待機N
*mb_loop
[if eval exp="f.stage == 'park_night' || f.stage == 'residential_night' || f.stage == 'school_night' || f.stage == 'mall_night'"]
	[iscript]
	tf.wait_n = getRandItem(["1000", "2000", "3000"])
	[endscript]
	
	[if exp="tf.wait_n == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_n == 2000"]
		[待機_2000_E]
	[elsif exp="tf.wait_n == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージN（ステージ難易度順）
[if eval exp="f.stage == 'mall_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["2000", "2500","3000"])
	[endscript]
	
	[if exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[elsif exp="tf.look_n == 3000"]
		[視線ゲージN_3000_E]
	[endif]

[elsif eval exp="f.stage == 'school_night'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_n = getRandItem(["1500", "2000", "2500"])
	[endscript]
	
	[if exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[endif]

[elsif eval exp="f.stage == 'park_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["1000", "1500", "2000"])
	[endscript]
	
	[if exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[endif]

[elsif eval exp="f.stage == 'residential_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_n == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[endif]
[endif]
[endif]

;Hardモード
;------------------------------------------------------------------------------------------------------
;待機H
[if eval exp="f.stage == 'park_morning' || f.stage == 'residential_morning' || f.stage == 'school_morning' || f.stage == 'mall_morning'"]
	[iscript]
	tf.wait_h = getRandItem(["300", "500", "1000","3000"])
	[endscript]

	[if exp="tf.wait_h == 300"]
		[待機_300_E]
	[elsif exp="tf.wait_h == 500"]
		[待機_500_E]
	[elsif exp="tf.wait_h == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_h == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージH（ステージ難易度順/Nも混ぜてる）
[if eval exp="f.stage == 'park_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]
	
[elsif eval exp="f.stage == 'residential_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]

[elsif eval exp="f.stage == 'school_morning'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージN_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]

[elsif eval exp="f.stage == 'mall_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージH_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]
[endif]
[endif]

;モブ退場
[chara_hide name="look_gauge" time=0]
[chara_hide name="man" time=300]
[chara_hide name="woman" time=300]
[chara_hide name="kid_b" time=300]
[chara_hide name="kid_g" time=300]
[chara_hide name="police" time=300]
[chara_hide name="jd1" time=300]
[chara_hide name="jd2" time=300]
[chara_hide name="jk1" time=300]
[chara_hide name="jk2" time=300]

@jump target="mb_loop"
[s]

;------------------------------------------------------------------------------------------------------
;おしっこ
;------------------------------------------------------------------------------------------------------
*pee
[wait_cancel]

;フリルカット
[if exp="f.costume == 'uniform' || f.costume == 'coat'"]
	[if exp="f.underwear == 'frill1'"]
		[chara_part name="arina_p" underwear=frill1_cut]
	[elsif exp="f.underwear == 'frill2'"]
		[chara_part name="arina_p" underwear=frill2_cut]
	[elsif exp="f.underwear == 'frill3'"]
		[chara_part name="arina_p" underwear=frill3_cut]
	[elsif exp="f.underwear == 'frill4'"]
		[chara_part name="arina_p" underwear=frill4_cut]
	[elsif exp="f.underwear == 'frill5'"]
		[chara_part name="arina_p" underwear=frill5_cut]
	[endif]
[endif]

[playse buf=1 storage="おしっこ.mp3" loop=true]

;peeのみアニメーション
[if exp="f.pee_only == true"]

;露出狂ランク１
	[if exp="f.expose_rank == 1"]
		[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
			[chara_part name="arina_p" body=pe_u1 hand=pee]
		[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
			[chara_part name="arina_p" body=pe_u1 hand=pee]
		[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
			[chara_part name="arina_p" body=pe_n1 hand=pee]
		[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
			[chara_part name="arina_p" body=pe_n1 hand=pee]
		[elsif exp="f.underwear == 'none'"]
			[chara_part name="arina_p" body=pe_n1 hand=pee]
		[endif]
		
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=pe_uni]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" costume=pe_coat]
		[endif]

	;おしっこgif
	[chara_part name="arina_p" pee=on]
	[layermode folder=fgimage/animation/pee graphic=pee_shadow_foot.png mode=multiply time=0]

	[endif]

;露出狂ランク２
	[if exp="f.expose_rank == 2"]
		[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
			[chara_part name="arina_p" body=pe_u1 hand=pee]
		[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
			[chara_part name="arina_p" body=pe_u1 hand=pee]
		[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
			[chara_part name="arina_p" body=pe_n1 hand=pee]
		[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
			[chara_part name="arina_p" body=pe_n1 hand=pee]
		[elsif exp="f.underwear == 'none'"]
			[chara_part name="arina_p" body=pe_n1 hand=pee]
		[endif]
		
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=pe_uni]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" costume=pe_coat]
		[endif]

	;おしっこgif
	[chara_part name="arina_p" pee=on]
	[layermode folder=fgimage/animation/pee graphic=pee_shadow_foot.png mode=multiply time=0]

	[endif]

;露出狂ランク３
	[if exp="f.expose_rank == 3"]
		[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
			[chara_part name="arina_p" body=pe_u_open hand=pee]
		[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
			[chara_part name="arina_p" body=pe_u_open hand=pee]
		[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
			[chara_part name="arina_p" body=pe_n_open hand=pee]
		[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
			[chara_part name="arina_p" body=pe_n_open hand=pee]
		[elsif exp="f.underwear == 'none'"]
			[chara_part name="arina_p" body=pe_n_open hand=pee]
		[endif]
		
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=pe_uni_open]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" costume=pe_coat_open]
		[endif]

		[if exp="f.socks == true"]
			[chara_part name="arina_p" socks=open]
		[endif]
		
		[if exp="f.shoes == true"]
			[chara_part name="arina_p" shoes=open]
		[endif]

		[if exp="f.graffiti_name == true"]
			[chara_part name="arina_p" graffiti_5=open]
		[endif]
		[if exp="f.graffiti_photo == true"]
			[chara_part name="arina_p" graffiti_6=open]
		[endif]
		[if exp="f.graffiti_school == true"]
			[chara_part name="arina_p" graffiti_7=open]
		[endif]

		;おしっこgif
		[chara_part name="arina_p" pee=on]
		[layermode folder=fgimage/animation/pee graphic=pee_shadow.png mode=multiply time=0]
	[endif]

[else]

	;おしっこgif
	[chara_part name="arina_p" pee=on]
	[layermode folder=fgimage/animation/pee graphic=pee_shadow_foot.png mode=multiply time=0]
[endif]

;表情
[chara_part name="arina_p" blush=on]
[chara_part name="arina_p" breath=tongue]
[chara_part name="arina_p" eye=0]

	[if exp="f.expose_rank == 1"]
		[chara_part name="arina_p" face=pe1]
		[chara_part name="arina_p" breath=on]
	[elsif exp="f.expose_rank == 2"]
		[chara_part name="arina_p" face=pe2]
		[chara_part name="arina_p" breath=on]
	[elsif exp="f.expose_rank == 3"]
		[chara_part name="arina_p" face=pe3]
		[chara_part name="arina_p" breath=tongue]
	[endif]

;ボイス
[if exp="f.expose_rank == 1"]
	[playse buf=2 storage="echioto_んあぁ〜03.mp3"]
[elsif exp="f.expose_rank == 2"]
	[playse buf=2 storage="echioto_はぁ〜02.mp3"]
[elsif exp="f.expose_rank == 3"]
	[playse buf=2 storage="echioto_舌を出す.mp3"]
[endif]

;ボタン
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="pe_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;Normalモード
;------------------------------------------------------------------------------------------------------
;待機N
*pe_loop
[if eval exp="f.stage == 'park_night' || f.stage == 'residential_night' || f.stage == 'school_night' || f.stage == 'mall_night'"]
	[iscript]
	tf.wait_n = getRandItem(["1000", "2000", "3000"])
	[endscript]
	
	[if exp="tf.wait_n == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_n == 2000"]
		[待機_2000_E]
	[elsif exp="tf.wait_n == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージN（ステージ難易度順）
[if eval exp="f.stage == 'mall_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["2000", "2500","3000"])
	[endscript]
	
	[if exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[elsif exp="tf.look_n == 3000"]
		[視線ゲージN_3000_E]
	[endif]

[elsif eval exp="f.stage == 'school_night'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_n = getRandItem(["1500", "2000", "2500"])
	[endscript]
	
	[if exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[elsif exp="tf.look_n == 2500"]
		[視線ゲージN_2500_E]
	[endif]

[elsif eval exp="f.stage == 'park_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["1000", "1500", "2000"])
	[endscript]
	
	[if exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[elsif exp="tf.look_n == 2000"]
		[視線ゲージN_2000_E]
	[endif]

[elsif eval exp="f.stage == 'residential_night'"]
	;モブ
	[モブ夜]

	[iscript]
	tf.look_n = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_n == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_n == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_n == 1500"]
		[視線ゲージN_1500_E]
	[endif]
[endif]
[endif]

;Hardモード
;------------------------------------------------------------------------------------------------------
;待機H
[if eval exp="f.stage == 'park_morning' || f.stage == 'residential_morning' || f.stage == 'school_morning' || f.stage == 'mall_morning'"]
	[iscript]
	tf.wait_h = getRandItem(["300", "500", "1000","3000"])
	[endscript]

	[if exp="tf.wait_h == 300"]
		[待機_300_E]
	[elsif exp="tf.wait_h == 500"]
		[待機_500_E]
	[elsif exp="tf.wait_h == 1000"]
		[待機_1000_E]
	[elsif exp="tf.wait_h == 3000"]
		[待機_3000_E]
	[endif]

;ボタン（全グレーアウト）
[cm]
[image name="ps_gray" layer=0 storage="button_pussy_show_gray.png" x=857 y=511]
[image name="bs_gray" layer=0 storage="button_boobs_show_gray.png" x=770 y=511]
[image name="ce_gray" layer=0 storage="button_coat_gray.png" x=770 y=377]
[image name="ce_gray" layer=0 storage="button_knead_gray.png" x=857 y=444]
[image name="ce_gray" layer=0 storage="button_masturbation_gray.png" x=770 y=444]
[image name="ce_gray" layer=0 storage="button_pee_gray.png" x=857 y=377]
[locate x=762 y=589]
[button graphic="button/command/button_hide.png" storage="endless.ks" target="hide"]
[locate x=15 y=567]
[button graphic="button/command/button_stop.png"  storage="endless.ks" target="game_stop"]

;視線ゲージH（ステージ難易度順/Nも混ぜてる）
[if eval exp="f.stage == 'park_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージN_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]
	
[elsif eval exp="f.stage == 'residential_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["700", "1000", "1500"])
	[endscript]
	
	[if exp="tf.look_h == 700"]
		[視線ゲージN_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[elsif exp="tf.look_h == 1500"]
		[視線ゲージH_1500_E]
	[endif]

[elsif eval exp="f.stage == 'school_morning'"]
	;モブ
	[学校モブ]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージN_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]

[elsif eval exp="f.stage == 'mall_morning'"]
	;モブ
	[モブ昼]

	[iscript]
	tf.look_h = getRandItem(["500", "700", "1000"])
	[endscript]
	
	[if exp="tf.look_h == 500"]
		[視線ゲージH_500_E]
	[elsif exp="tf.look_h == 700"]
		[視線ゲージH_700_E]
	[elsif exp="tf.look_h == 1000"]
		[視線ゲージH_1000_E]
	[endif]
[endif]
[endif]

;モブ退場
[chara_hide name="look_gauge" time=0]
[chara_hide name="man" time=300]
[chara_hide name="woman" time=300]
[chara_hide name="kid_b" time=300]
[chara_hide name="kid_g" time=300]
[chara_hide name="police" time=300]
[chara_hide name="jd1" time=300]
[chara_hide name="jd2" time=300]
[chara_hide name="jk1" time=300]
[chara_hide name="jk2" time=300]

@jump target="pe_loop"
[s]

;------------------------------------------------------------------------------------------------------
;絶頂
;------------------------------------------------------------------------------------------------------
*orgasm
[wait_cancel]
[chara_part name="arina_p" blush=off]
[chara_part name="arina_p" face=none]
[chara_part name="arina_p" breath=off]

[if exp="f.pussy_show == true"]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
		[絶頂ボイス]
		[パンチラ絶頂_u_E]
	[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
		[絶頂ボイス]
		[パンチラ絶頂_u_E]
	[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
		[絶頂ボイス]
		[パンチラ絶頂_n_E]
	[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
		[絶頂ボイス]
		[パンチラ絶頂_n_E]
	[elsif exp="f.underwear == 'none'"]
		[絶頂ボイス]
		[パンチラ絶頂_n_E]
	[endif]

[elsif exp="f.boobs_show == true"]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
		[絶頂ボイス]
		[胸見せ絶頂_u_E]
	[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
		[絶頂ボイス]
		[胸見せ絶頂_u_E]
	[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
		[絶頂ボイス]
		[胸見せ絶頂_n_E]
	[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
		[絶頂ボイス]
		[胸見せ絶頂_n_E]
	[elsif exp="f.underwear == 'none'"]
		[絶頂ボイス]
		[胸見せ絶頂_n_E]
	[endif]

[elsif exp="f.coat_expose == true"]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
		[絶頂ボイス]
		[コート露出絶頂_u_E]
	[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
		[絶頂ボイス]
		[コート露出絶頂_u_E]
	[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
		[絶頂ボイス]
		[コート露出絶頂_n_E]
	[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
		[絶頂ボイス]
		[コート露出絶頂_n_E]
	[elsif exp="f.underwear == 'none'"]
		[絶頂ボイス]
		[コート露出絶頂_n_E]
	[endif]

[elsif exp="f.boobs_knead == true"]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
		[絶頂ボイス]
		[胸揉み絶頂_u_E]
	[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
		[絶頂ボイス]
		[胸揉み絶頂_u_E]
	[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
		[絶頂ボイス]
		[胸揉み絶頂_n_E]
	[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
		[絶頂ボイス]
		[胸揉み絶頂_n_E]
	[elsif exp="f.underwear == 'none'"]
		[絶頂ボイス]
		[胸揉み絶頂_n_E]
	[endif]
	
[elsif exp="f.masturbation == true"]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
		[絶頂ボイス]
		[オナニー絶頂_u_E]
	[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
		[絶頂ボイス]
		[オナニー絶頂_u_E]
	[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
		[絶頂ボイス]
		[オナニー絶頂_n_E]
	[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
		[絶頂ボイス]
		[オナニー絶頂_n_E]
	[elsif exp="f.underwear == 'none'"]
		[絶頂ボイス]
		[オナニー絶頂_n_E]
	[endif]
	
[elsif exp="f.pee_only == true"]
	[if exp="f.underwear == 'normal1' || f.underwear == 'normal2' || f.underwear == 'normal3' || f.underwear == 'normal4' || f.underwear == 'normal5'"]
		[絶頂ボイス]
		[おしっこ絶頂_u_E]
	[elsif exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
		[絶頂ボイス]
		[おしっこ絶頂_u_E]
	[elsif exp="f.underwear == 'bikini1' || f.underwear == 'bikini2' || f.underwear == 'bikini3' || f.underwear == 'bikini4' || f.underwear == 'bikini5'"]
		[絶頂ボイス]
		[おしっこ絶頂_n_E]
	[elsif exp="f.underwear == 'rope1' || f.underwear == 'rope2' || f.underwear == 'rope3' || f.underwear == 'rope4' || f.underwear == 'rope5'"]
		[絶頂ボイス]
		[おしっこ絶頂_n_E]
	[elsif exp="f.underwear == 'none'"]
		[絶頂ボイス]
		[おしっこ絶頂_n_E]
	[endif]
[endif]

[eval exp="f.orgasm = 0"]
@jump target="hide"
[s]

;------------------------------------------------------------------------------------------------------
;ポーズ画面
;------------------------------------------------------------------------------------------------------
*game_stop
[wait_cancel]
[cm]
[stopse buf=1]
[stopse buf=2]
[playse buf=1 storage="Tips・ヒント表示音.mp3"]

[free name="command_frame" layer = 0]
[eval exp="f.command_frame = false"]
[free name="ps_gray" layer = 0]
[free name="bs_gray" layer = 0]
[free name="ce_gray" layer = 0]
[free name="bk_gray" layer = 0]
[free name="mb_gray" layer = 0]
[free name="pe_gray" layer = 0]

[image name="black_screen" layer="0" storage="black.png"]

[locate x=279 y=167]
[button graphic="button/pose/button_continue.png" target="continue"]
[locate x=279 y=310]
[button graphic="button/pose/button_restart.png" target="restart"]
[locate x=279 y=453]
[button graphic="button/pose/button_home.png" target="home_return"]
[s]

*continue
[cm]
[free name="black_screen" layer = 0]

[eval exp="f.bonus_orange = false"]
[eval exp="f.bonus_red = false"]

@jump target="hide"

*restart
[cm]
[free name="black_screen" layer = 0]

[eval exp="f.bonus_orange = false"]
[eval exp="f.bonus_red = false"]
[eval exp="f.satisfaction = 0"]
[eval exp="f.orgasm = 0"]
[eval exp="f.life = 3"]

@jump target="start"

*home_return
[cm]

[eval exp="f.bonus_orange = false"]
[eval exp="f.bonus_red = false"]
[eval exp="f.satisfaction = 0"]
[eval exp="f.orgasm = 0"]
[eval exp="f.life = 3"]

@jump storage="main.ks"
