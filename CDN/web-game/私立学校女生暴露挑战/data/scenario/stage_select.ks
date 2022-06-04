;ステージ選択
;------------------------------------------------------------------------------------------------------
;ゲームモード
;------------------------------------------------------------------------------------------------------
*game_mode
[cm  ]
[clearfix]
[start_keyconfig]
[chara_hide_all time="10"]

[playse buf=1 storage="システムSE_選択音1.mp3"]

[bg storage="bg_stage_select.png" time="100"]

;背景変数リセット
[eval exp="f.stage = false"]

;朝夜マーク用
[freeimage layer = 0]
@layopt layer=0 visible=true

;------------------------------------------------------------------------------------------------------
;夜モード（Normal）
;------------------------------------------------------------------------------------------------------
*night_mode
;hide削除
[free name="hide_morning" layer="0"]

;ボタン
[if exp="f.park_night_clear == false"]
	[locate x=137 y=99]
	[button graphic="button/stage_select/button_park_night.png" target="park_night"]
[elsif exp="f.park_night_clear == true"]
	[locate x=137 y=99]
	[button graphic="button/stage_select/button_park_night_clear.png" target="park_night"]
[endif]

[if exp="f.residential_night_clear == false"]
	[locate x=520 y=99]
	[button graphic="button/stage_select/button_residential_night.png" target="residential_night"]
[elsif exp="f.residential_night_clear == true"]
	[locate x=520 y=99]
	[button graphic="button/stage_select/button_residential_night_clear.png" target="residential_night"]
[endif]

[if exp="f.school_night_clear == false"]
	[locate x=137 y=362]
	[button graphic="button/stage_select/button_school_night.png" target="school_night"]
[elsif exp="f.school_night_clear == true"]
	[locate x=137 y=362]
	[button graphic="button/stage_select/button_school_night_clear.png" target="school_night"]
[endif]

[if exp="f.mall_night_clear== false"]
	[locate x=520 y=362]
	[button graphic="button/stage_select/button_mall_night.png" target="mall_night"]
[elsif exp="f.mall_night_clear == true"]
	[locate x=520 y=362]
	[button graphic="button/stage_select/button_mall_night_clear.png" target="mall_night"]
[endif]

[image layer="0" storage="night_mark.png"]
[locate x=893 y=33]
[button graphic="button/button_switch.png" target="morning_mode"]

[locate x=863 y=555]
[button graphic="button/button_return.png" storage="main.ks" target="start"]
[s]

*park_night
;裸用ポップアップ
[if exp="f.costume == 'none'"]
	[locate x=0 y=0]
	[button graphic="button/nude_play_popup.png" target="game_mode"]
	[s]
[endif]

[eval exp="f.stage = 'park_night'"]
@jump storage="game_play.ks"

*residential_night
;裸用ポップアップ
[if exp="f.costume == 'none'"]
	[locate x=0 y=0]
	[button graphic="button/nude_play_popup.png" target="game_mode"]
	[s]
[endif]

[eval exp="f.stage = 'residential_night'"]
@jump storage="game_play.ks"

*school_night
;裸用ポップアップ
[if exp="f.costume == 'none'"]
	[locate x=0 y=0]
	[button graphic="button/nude_play_popup.png" target="game_mode"]
	[s]
[endif]

[eval exp="f.stage = 'school_night'"]
@jump storage="game_play.ks"

*mall_night
;裸用ポップアップ
[if exp="f.costume == 'none'"]
	[locate x=0 y=0]
	[button graphic="button/nude_play_popup.png" target="game_mode"]
	[s]
[endif]

[eval exp="f.stage = 'mall_night'"]
@jump storage="game_play.ks"

;------------------------------------------------------------------------------------------------------
;朝モード（Hard）
;------------------------------------------------------------------------------------------------------
*morning_mode
;ボタン
[if exp="f.expose_rank >= 2 || f.complete == true"]
	[if exp="f.park_morning_clear == false"]
		[locate x=137 y=99]
		[button graphic="button/stage_select/button_park_morning.png" target="park_morning"]
	[elsif exp="f.park_morning_clear == true"]
		[locate x=137 y=99]
		[button graphic="button/stage_select/button_park_morning_clear.png" target="park_morning"]
	[endif]

	[if exp="f.residential_morning_clear == false"]
		[locate x=520 y=99]
		[button graphic="button/stage_select/button_residential_morning.png" target="residential_morning"]
	[elsif exp="f.residential_morning_clear == true"]
		[locate x=520 y=99]
		[button graphic="button/stage_select/button_residential_morning_clear.png" target="residential_morning"]
	[endif]

	[if exp="f.school_morning_clear == false"]
		[locate x=137 y=362]
		[button graphic="button/stage_select/button_school_morning.png" target="school_morning"]
	[elsif exp="f.school_morning_clear == true"]
		[locate x=137 y=362]
		[button graphic="button/stage_select/button_school_morning_clear.png" target="school_morning"]
	[endif]

	[if exp="f.mall_morning_clear == false"]
		[locate x=520 y=362]
		[button graphic="button/stage_select/button_mall_morning.png" target="mall_morning"]
	[elsif exp="f.mall_morning_clear == true"]
		[locate x=520 y=362]
		[button graphic="button/stage_select/button_mall_morning_clear.png" target="mall_morning"]
	[endif]
[else]
	[cm]
	[image name="hide_morning" layer="0" storage="hide_morning.png"]
[endif]

[image layer="0" storage="morning_mark.png"]
[locate x=893 y=33]
[button graphic="button/button_switch.png" target="night_mode"]

[locate x=863 y=555]
[button graphic="button/button_return.png" storage="main.ks" target="start"]
[s]

*park_morning
;裸用ポップアップ
[if exp="f.costume == 'none'"]
	[locate x=0 y=0]
	[button graphic="button/nude_play_popup.png" target="game_mode"]
	[s]
[endif]

[eval exp="f.stage = 'park_morning'"]
@jump storage="game_play.ks"

*residential_morning
;裸用ポップアップ
[if exp="f.costume == 'none'"]
	[locate x=0 y=0]
	[button graphic="button/nude_play_popup.png" target="game_mode"]
	[s]
[endif]

[eval exp="f.stage = 'residential_morning'"]
@jump storage="game_play.ks"

*school_morning
;裸用ポップアップ
[if exp="f.costume == 'none'"]
	[locate x=0 y=0]
	[button graphic="button/nude_play_popup.png" target="game_mode"]
	[s]
[endif]

[eval exp="f.stage = 'school_morning'"]
@jump storage="game_play.ks"

*mall_morning
;裸用ポップアップ
[if exp="f.costume == 'none'"]
	[locate x=0 y=0]
	[button graphic="button/nude_play_popup.png" target="game_mode"]
	[s]
[endif]

[eval exp="f.stage = 'mall_morning'"]
@jump storage="game_play.ks"
[s]

;--------------------------------------------------------------------------------------------------------------------
;エンドレスモード
;------------------------------------------------------------------------------------------------------
*endless_mode
[cm  ]
[clearfix]
[start_keyconfig]
[chara_hide_all time="10"]

[playse buf=1 storage="システムSE_選択音1.mp3"]
[bg storage="bg_stage_select.png" time="100"]

;背景変数リセット
[eval exp="f.stage = false"]

;朝夜マーク用
[freeimage layer = 0]
@layopt layer=0 visible=true

*night_mode_e
[image layer="0" storage="night_mark.png"]

;ボタン
[if exp="f.expose_rank == 3 || f.complete == true"]
	[locate x=137 y=99]
	[button graphic="button/endless/park_n_endless.png" target="park_night_e"]
	[locate x=520 y=99]
	[button graphic="button/endless/residential_n_endless.png" target="residential_night_e"]
	[locate x=137 y=362]
	[button graphic="button/endless/school_n_endless.png" target="school_night_e"]
	[locate x=520 y=362]
	[button graphic="button/endless/mall_n_endless.png" target="mall_night_e"]
[else]
	[cm]
	[image name="hide_morning" layer="0" storage="hide_endless.png"]
[endif]

[locate x=893 y=33]
[button graphic="button/button_switch.png" target="morning_mode_e"]
[locate x=863 y=555]
[button graphic="button/button_return.png" storage="main.ks" target="start"]
[s]

*park_night_e
[eval exp="f.stage = 'park_night'"]
@jump storage="endless.ks"

*residential_night_e
[eval exp="f.stage = 'residential_night'"]
@jump storage="endless.ks"

*school_night_e
[eval exp="f.stage = 'school_night'"]
@jump storage="endless.ks"

*mall_night_e
[eval exp="f.stage = 'mall_night'"]
@jump storage="endless.ks"
[s]

*morning_mode_e
[image layer="0" storage="morning_mark.png"]

;ボタン
[if exp="f.expose_rank == 3 || f.complete == true"]
	[locate x=137 y=99]
	[button graphic="button/endless/park_m_endless.png" target="park_morning_e"]
	[locate x=520 y=99]
	[button graphic="button/endless/residential_m_endless.png" target="residential_morning_e"]
	[locate x=137 y=362]
	[button graphic="button/endless/school_m_endless.png" target="school_morning_e"]
	[locate x=520 y=362]
	[button graphic="button/endless/mall_m_endless.png" target="mall_morning_e"]
[else]
	[cm]
	[image name="hide_morning" layer="0" storage="hide_endless.png"]
[endif]

[locate x=893 y=33]
[button graphic="button/button_switch.png" target="night_mode_e"]
[locate x=863 y=555]
[button graphic="button/button_return.png" storage="main.ks" target="start"]
[s]

*park_morning_e
[eval exp="f.stage = 'park_morning'"]
@jump storage="endless.ks"

*residential_morning_e
[eval exp="f.stage = 'residential_morning'"]
@jump storage="endless.ks"

*school_morning_e
[eval exp="f.stage = 'school_morning'"]
@jump storage="endless.ks"

*mall_morning_e
[eval exp="f.stage = 'mall_morning'"]
@jump storage="endless.ks"
[s]
