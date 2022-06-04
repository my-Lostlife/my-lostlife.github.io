;着替え画面
*start
[cm  ]
[clearfix]
[start_keyconfig]
[chara_hide_all time="10"]

[playse buf=1 storage="システムSE_選択音1.mp3"]

;背景
[bg storage="bg_dress.png" time="100"]

;タブ・立ち絵用に表示
[freeimage layer = 0]
@layopt layer=0 visible=true

;---------------------------------------------------------------------
;服装変更
;---------------------------------------------------------------------
*costume_select
;キャラ登場
[chara_show name="arina_d" time="100"]

;表情
[if exp="f.expose_rank == 1"]
	[chara_part name="arina_d" face=1]
	[chara_part name="arina_d" eye=1]
[elsif exp="f.expose_rank == 2"]
	[chara_part name="arina_d" face=2]
	[chara_part name="arina_d" eye=1]
[elsif exp="f.expose_rank == 3"]
	[chara_part name="arina_d" face=2]
	[chara_part name="arina_d" eye=2]
[endif]

;服装タブ
[image layer="0" storage="costume_select_tab.png"]

;着用中の下着確認
[下着確認_着せ替え]

;落書き確認
[if exp="f.graffiti_hentai == true"]
	[chara_part name="arina_d" graffiti_1=on]
[endif]
[if exp="f.graffiti_expose == true"]
	[chara_part name="arina_d" graffiti_2=on]
[endif]
[if exp="f.graffiti_attention == true"]
	[chara_part name="arina_d" graffiti_3=on]
[endif]
[if exp="f.graffiti_virgin == true"]
	[chara_part name="arina_d" graffiti_4=on]
[endif]
[if exp="f.graffiti_name == true"]
	[chara_part name="arina_d" graffiti_5=on]
[endif]
[if exp="f.graffiti_photo == true"]
	[chara_part name="arina_d" graffiti_6=on]
[endif]
[if exp="f.graffiti_school == true"]
	[chara_part name="arina_d" graffiti_7=on]
[endif]
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_d" graffiti_8=on]
[endif]
[if exp="f.graffiti_pussy == true"]
	[chara_part name="arina_d" graffiti_9=on]
[endif]

;着用中衣装確認（他のタブで全裸にするため服装タブに戻ってきた時に服を着た状態にできるように）
[if exp="f.costume == 'uniform'"]
	[chara_part name="arina_d" body=underwear]
	[chara_part name="arina_d" costume=uniform]
	;乳首マークはみ出防止処理
	[if eval exp="f.graffiti_boobs == true"]
		[chara_part name="arina_d" graffiti_8=off]
		[endif]
	[elsif exp="f.costume == 'coat'"]
		[chara_part name="arina_d" costume=coat]
	[elsif exp="f.costume == 'none'"]
		[chara_part name="arina_d" costume=none]
	[endif]

[if exp="f.socks == true"]
	[chara_part name="arina_d" socks=on]
[elsif exp="f.socks == false"]
	[chara_part name="arina_d" socks=off]
[endif]
[if exp="f.shoes == true"]
	[chara_part name="arina_d" shoes=on]
[elsif exp="f.shoes == false"]
	[chara_part name="arina_d" shoes=off]
[endif]

;タブ（クリッカブル）
[locate x=184 y=86]
[clickable width=85 height=50 target=*underwear_select]
[locate x=275 y=86]
[clickable width=85 height=50 target=*graffiti_select]
[locate x=366 y=86]
[clickable width=85 height=50 target=*public_hair_select]

;ボタン
[if exp="f.costume == 'uniform'"]
	[locate x=153 y=200]
	[button graphic="button/dress/button_uniform_on.png" target="uniform"]
[else]
	[locate x=153 y=200]
	[button graphic="button/dress/button_uniform.png" target="uniform"]
[endif]

[if exp="f.costume == 'coat'"]
	[locate x=153 y=275]
	[button graphic="button/dress/button_coat_on.png" target="coat"]
[else]
	[locate x=153 y=275]
	[button graphic="button/dress/button_coat.png" target="coat"]
[endif]

[if exp="f.expose_rank == 3 || f.complete == true"]
	[if exp="f.costume == 'none'"]
		[locate x=153 y=345]
		[button graphic="button/dress/button_none_on.png" target="costume_none"]
	[else]
		[locate x=153 y=345]
		[button graphic="button/dress/button_none.png" target="costume_none"]
	[endif]
[else]
	[image name="hide_none" layer="0" storage="hide_none.png" time=0]
[endif]

[if exp="f.socks == true"]
	[locate x=324 y=437]
	[button graphic="button/dress/button_check_on.png" target="socks_off"]
[else]
	[locate x=324 y=435]
	[button graphic="button/dress/button_check_off.png" target="socks_on"]
[endif]

[if exp="f.shoes == true"]
	[locate x=324 y=501]
	[button graphic="button/dress/button_check_on.png" target="shoes_off"]
[else]
	[locate x=324 y=499]
	[button graphic="button/dress/button_check_off.png" target="shoes_on"]
[endif]

[locate x=15 y=85]
[button graphic="button/dress/button_reset.png" target="dress_reset"]

[locate x=863 y=555]
[button graphic="button/button_return.png" storage="main.ks" target="start"]

[s]

*uniform
[cm]
[eval exp="f.costume = 'uniform'"]

[chara_part name="arina_d" body=underwear]
[chara_part name="arina_d" costume=uniform]
@jump target="costume_select"

*coat
[cm]
[eval exp="f.costume = 'coat'"]

[chara_part name="arina_d" costume=coat]
@jump target="costume_select"

*costume_none
[cm]
[eval exp="f.costume = 'none'"]

[chara_part name="arina_d" costume=none]
@jump target="costume_select"

*socks_on
[cm]
[eval exp="f.socks = true"]
[chara_part name="arina_d" socks=on]
@jump target="costume_select"

*socks_off
[cm]
[eval exp="f.socks = false"]
[chara_part name="arina_d" socks=off]
@jump target="costume_select"

*shoes_on
[cm]
[eval exp="f.shoes = true"]
[chara_part name="arina_d" shoes=on]
@jump target="costume_select"

*shoes_off
[cm]
[eval exp="f.shoes = false"]
[chara_part name="arina_d" shoes=off]
@jump target="costume_select"

;---------------------------------------------------------------------
;下着変更
;---------------------------------------------------------------------
*underwear_select
[image layer="0" storage="underwear_select_tab.png"]
[chara_part name="arina_d" costume=none]
[chara_part name="arina_d" socks=off]
[chara_part name="arina_d" shoes=off]

;着用中の下着確認
[下着確認_着せ替え]

;タグ（クリッカブル）
[locate x=93 y=86]
[clickable width=85 height=50 target=*costume_select]
[locate x=275 y=86]
[clickable width=85 height=50 target=*graffiti_select]
[locate x=366 y=86]
[clickable width=85 height=50 target=*public_hair_select]

;ボタン
[if exp="f.underwear == 'normal1'"]
	[locate x=245 y=203]
	[button graphic="button/dress/button_pink_on.png" target="normal1"]
[else]
	[locate x=245 y=203]
	[button graphic="button/dress/button_pink.png" target="normal1"]
[endif]

[if exp="f.underwear == 'normal2'"]
	[locate x=281 y=203]
	[button graphic="button/dress/button_white_on.png" target="normal2"]
[else]
	[locate x=281 y=203]
	[button graphic="button/dress/button_white.png" target="normal2"]
[endif]

[if exp="f.underwear == 'normal3'"]
	[locate x=317 y=203]
	[button graphic="button/dress/button_lightblue_on.png" target="normal3"]
[else]
	[locate x=317 y=203]
	[button graphic="button/dress/button_lightblue.png" target="normal3"]
[endif]

[if exp="f.underwear == 'normal4'"]
	[locate x=353 y=203]
	[button graphic="button/dress/button_navy_on.png" target="normal4"]
[else]
	[locate x=353 y=203]
	[button graphic="button/dress/button_navy.png" target="normal4"]
[endif]

[if exp="f.underwear == 'normal5'"]
	[locate x=389 y=203]
	[button graphic="button/dress/button_black_on.png" target="normal5"]
[else]
	[locate x=389 y=203]
	[button graphic="button/dress/button_black.png" target="normal5"]
[endif]

[if exp="f.underwear == 'frill1'"]
	[locate x=245 y=296]
	[button graphic="button/dress/button_pink_on.png" target="frill1"]
[else]
	[locate x=245 y=296]
	[button graphic="button/dress/button_pink.png" target="frill1"]
[endif]

[if exp="f.underwear == 'frill2'"]
	[locate x=281 y=296]
	[button graphic="button/dress/button_white_on.png" target="frill2"]
[else]
	[locate x=281 y=296]
	[button graphic="button/dress/button_white.png" target="frill2"]
[endif]

[if exp="f.underwear == 'frill3'"]
	[locate x=317 y=296]
	[button graphic="button/dress/button_lightblue_on.png" target="frill3"]
[else]
	[locate x=317 y=296]
	[button graphic="button/dress/button_lightblue.png" target="frill3"]
[endif]

[if exp="f.underwear == 'frill4'"]
	[locate x=353 y=296]
	[button graphic="button/dress/button_navy_on.png" target="frill4"]
[else]
	[locate x=353 y=296]
	[button graphic="button/dress/button_navy.png" target="frill4"]
[endif]

[if exp="f.underwear == 'frill5'"]
	[locate x=389 y=296]
	[button graphic="button/dress/button_black_on.png" target="frill5"]
[else]
	[locate x=389 y=296]
	[button graphic="button/dress/button_black.png" target="frill5"]
[endif]

;ビキニ
[if exp="f.expose_rank >= 2 || f.complete == true"]
	[if exp="f.underwear == 'bikini1'"]
		[locate x=245 y=391]
		[button graphic="button/dress/button_pink_on.png" target="bikini1"]
	[else]
		[locate x=245 y=391]
		[button graphic="button/dress/button_pink.png" target="bikini1"]
	[endif]

	[if exp="f.underwear == 'bikini2'"]
		[locate x=281 y=391]
		[button graphic="button/dress/button_white_on.png" target="bikini2"]
	[else]
		[locate x=281 y=391]
		[button graphic="button/dress/button_white.png" target="bikini2"]
	[endif]

	[if exp="f.underwear == 'bikini3'"]
		[locate x=317 y=391]
		[button graphic="button/dress/button_red_on.png" target="bikini3"]
	[else]
		[locate x=317 y=391]
		[button graphic="button/dress/button_red.png" target="bikini3"]
	[endif]

	[if exp="f.underwear == 'bikini4'"]
		[locate x=353 y=391]
		[button graphic="button/dress/button_navy_on.png" target="bikini4"]
	[else]
		[locate x=353 y=391]
		[button graphic="button/dress/button_navy.png" target="bikini4"]
	[endif]

	[if exp="f.underwear == 'bikini5'"]
		[locate x=389 y=391]
		[button graphic="button/dress/button_black_on.png" target="bikini5"]
	[else]
		[locate x=389 y=391]
		[button graphic="button/dress/button_black.png" target="bikini5"]
	[endif]

[else]
	[image name="hide_bikini" layer="0" storage="hide_bikini.png" time=0]
[endif]

;ロープ
[if exp="f.expose_rank == 3 || f.complete == true"]
	[if exp="f.underwear == 'rope1'"]
		[locate x=245 y=482]
		[button graphic="button/dress/button_beige_on.png" target="rope1"]
	[else]
		[locate x=245 y=482]
		[button graphic="button/dress/button_beige.png" target="rope1"]
	[endif]

	[if exp="f.underwear == 'rope2'"]
		[locate x=281 y=482]
		[button graphic="button/dress/button_darkpink_on.png" target="rope2"]
	[else]
		[locate x=281 y=482]
		[button graphic="button/dress/button_darkpink.png" target="rope2"]
	[endif]

	[if exp="f.underwear == 'rope3'"]
		[locate x=317 y=482]
		[button graphic="button/dress/button_red_on.png" target="rope3"]
	[else]
		[locate x=317 y=482]
		[button graphic="button/dress/button_red.png" target="rope3"]
	[endif]

	[if exp="f.underwear == 'rope4'"]
		[locate x=353 y=482]
		[button graphic="button/dress/button_blue_on.png" target="rope4"]
	[else]
		[locate x=353 y=482]
		[button graphic="button/dress/button_blue.png" target="rope4"]
	[endif]

	[if exp="f.underwear == 'rope5'"]
		[locate x=389 y=482]
		[button graphic="button/dress/button_black_on.png" target="rope5"]
	[else]
		[locate x=389 y=482]
		[button graphic="button/dress/button_black.png" target="rope5"]
	[endif]
[else]
	[image name="hide_rope" layer="0" storage="hide_rope.png" time=0]
[endif]

[locate x=343 y=527]
[button graphic="button/dress/button_underwear_off.png" target="underwear_none"]

[locate x=15 y=85]
[button graphic="button/dress/button_reset.png" target="dress_reset"]

[locate x=863 y=555]
[button graphic="button/button_return.png" storage="main.ks"]
[s]

*normal1
[cm]
[eval exp="f.underwear = 'normal1'"]
@jump target="underwear_select"

*normal2
[cm]
[eval exp="f.underwear = 'normal2'"]
@jump target="underwear_select"

*normal3
[cm]
[eval exp="f.underwear = 'normal3'"]
@jump target="underwear_select"

*normal4
[cm]
[eval exp="f.underwear = 'normal4'"]
@jump target="underwear_select"

*normal5
[cm]
[eval exp="f.underwear = 'normal5'"]
@jump target="underwear_select"

*frill1
[cm]
[eval exp="f.underwear = 'frill1'"]
@jump target="underwear_select"

*frill2
[cm]
[eval exp="f.underwear = 'frill2'"]
@jump target="underwear_select"

*frill3
[cm]
[eval exp="f.underwear = 'frill3'"]
@jump target="underwear_select"

*frill4
[cm]
[eval exp="f.underwear = 'frill4'"]
@jump target="underwear_select"

*frill5
[cm]
[eval exp="f.underwear = 'frill5'"]
@jump target="underwear_select"

*bikini1
[cm]
[eval exp="f.underwear = 'bikini1'"]
@jump target="underwear_select"

*bikini2
[cm]
[eval exp="f.underwear = 'bikini2'"]
@jump target="underwear_select"

*bikini3
[cm]
[eval exp="f.underwear = 'bikini3'"]
@jump target="underwear_select"

*bikini4
[cm]
[eval exp="f.underwear = 'bikini4'"]
@jump target="underwear_select"

*bikini5
[cm]
[eval exp="f.underwear = 'bikini5'"]
@jump target="underwear_select"

*rope1
[cm]
[eval exp="f.underwear = 'rope1'"]
@jump target="underwear_select"

*rope2
[cm]
[eval exp="f.underwear = 'rope2'"]
@jump target="underwear_select"

*rope3
[cm]
[eval exp="f.underwear = 'rope3'"]
@jump target="underwear_select"

*rope4
[cm]
[eval exp="f.underwear = 'rope4'"]
@jump target="underwear_select"

*rope5
[cm]
[eval exp="f.underwear = 'rope5'"]
@jump target="underwear_select"

*underwear_none
[cm]
[eval exp="f.underwear = 'none'"]
@jump target="underwear_select"
[s]

;---------------------------------------------------------------------
;落書き変更
;---------------------------------------------------------------------
*graffiti_select
[image layer="0" storage="graffiti_select_tab.png"]
[chara_part name="arina_d" costume=none]
[chara_part name="arina_d" body=nude]
[chara_part name="arina_d" underwear=none]
[chara_part name="arina_d" socks=off]
[chara_part name="arina_d" shoes=off]

;乳首マーク確認（オンの時に制服着用時などにいったん隠すためここで再度きちんと表示させる）
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_d" graffiti_8=on]
[elsif exp="f.graffiti_boobs == false"]
	[chara_part name="arina_d" graffiti_8=off]
[endif]

;クリッカブル
[locate x=93 y=86]
[clickable width=85 height=50 target=*costume_select]
[locate x=184 y=86]
[clickable width=85 height=50 target=*underwear_select]
[locate x=366 y=86]
[clickable width=85 height=50 target=*public_hair_select]

;選択ボタン
[if exp="f.expose_rank >= 2 || f.complete == true"]
	[locate x=140 y=185]
	[button graphic="button/dress/graffiti_all_on.png" target="graffiti_all_on"]
	[locate x=250 y=185]
	[button graphic="button/dress/graffiti_all_off.png" target="graffiti_all_off"]

	[if exp="f.graffiti_hentai == true"]
		[locate x=364 y=232]
		[button graphic="button/dress/button_check_on.png" target="graffiti_hentai_off"]
	[else]
		[locate x=364 y=234]
		[button graphic="button/dress/button_check_off.png" target="graffiti_hentai_on"]
	[endif]

	[if exp="f.graffiti_expose == true"]
		[locate x=364 y=270]
		[button graphic="button/dress/button_check_on.png" target="graffiti_expose_off"]
	[else]
		[locate x=364 y=272]
		[button graphic="button/dress/button_check_off.png" target="graffiti_expose_on"]
	[endif]

	[if exp="f.graffiti_attention == true"]
		[locate x=364 y=308]
		[button graphic="button/dress/button_check_on.png" target="graffiti_attention_off"]
	[else]
		[locate x=364 y=310]
		[button graphic="button/dress/button_check_off.png" target="graffiti_attention_on"]
	[endif]

	[if exp="f.graffiti_virgin == true"]
		[locate x=364 y=346]
		[button graphic="button/dress/button_check_on.png" target="graffiti_virgin_off"]
	[else]
		[locate x=364 y=348]
		[button graphic="button/dress/button_check_off.png" target="graffiti_virgin_on"]
	[endif]

	[if exp="f.graffiti_name == true"]
		[locate x=364 y=384]
		[button graphic="button/dress/button_check_on.png" target="graffiti_name_off"]
	[else]
		[locate x=364 y=386]
		[button graphic="button/dress/button_check_off.png" target="graffiti_name_on"]
	[endif]

	[if exp="f.graffiti_photo == true"]
		[locate x=364 y=422]
		[button graphic="button/dress/button_check_on.png" target="graffiti_photo_off"]
	[else]
		[locate x=364 y=424]
		[button graphic="button/dress/button_check_off.png" target="graffiti_photo_on"]
	[endif]

	[if exp="f.graffiti_school == true"]
		[locate x=364 y=460]
		[button graphic="button/dress/button_check_on.png" target="graffiti_school_off"]
	[else]
		[locate x=364 y=462]
		[button graphic="button/dress/button_check_off.png" target="graffiti_school_on"]
	[endif]

	[if exp="f.graffiti_boobs == true"]
		[locate x=364 y=498]
		[button graphic="button/dress/button_check_on.png" target="graffiti_boobs_off"]
	[else]
		[locate x=364 y=500]
		[button graphic="button/dress/button_check_off.png" target="graffiti_boobs_on"]
	[endif]

	[if exp="f.graffiti_pussy == true"]
		[locate x=364 y=536]
		[button graphic="button/dress/button_check_on.png" target="graffiti_pussy_off"]
	[else]
		[locate x=364 y=538]
		[button graphic="button/dress/button_check_off.png" target="graffiti_pussy_on"]
	[endif]
[else]
	[image name="hide_graffiti" layer="0" storage="hide_graffiti.png" time=0]
[endif]

;リセットボタン
[locate x=15 y=85]
[button graphic="button/dress/button_reset.png" target="dress_reset"]

;もどるボタン
[locate x=863 y=555]
[button graphic="button/button_return.png" storage="main.ks"]

[s]

*graffiti_all_on
[cm]
[eval exp="f.graffiti_hentai = true"]
[eval exp="f.graffiti_expose = true"]
[eval exp="f.graffiti_attention = true"]
[eval exp="f.graffiti_virgin = true"]
[eval exp="f.graffiti_name = true"]
[eval exp="f.graffiti_photo = true"]
[eval exp="f.graffiti_school = true"]
[eval exp="f.graffiti_boobs = true"]
[eval exp="f.graffiti_pussy = true"]

[chara_part name="arina_d" graffiti_1=on]
[chara_part name="arina_d" graffiti_2=on]
[chara_part name="arina_d" graffiti_3=on]
[chara_part name="arina_d" graffiti_4=on]
[chara_part name="arina_d" graffiti_5=on]
[chara_part name="arina_d" graffiti_6=on]
[chara_part name="arina_d" graffiti_7=on]
[chara_part name="arina_d" graffiti_8=on]
[chara_part name="arina_d" graffiti_9=on]

@jump target="graffiti_select"

*graffiti_all_off
[cm]
[eval exp="f.graffiti_hentai = false"]
[eval exp="f.graffiti_expose = false"]
[eval exp="f.graffiti_attention = false"]
[eval exp="f.graffiti_virgin = false"]
[eval exp="f.graffiti_name = false"]
[eval exp="f.graffiti_photo = false"]
[eval exp="f.graffiti_school = false"]
[eval exp="f.graffiti_boobs = false"]
[eval exp="f.graffiti_pussy = false"]

[chara_part name="arina_d" graffiti_1=off]
[chara_part name="arina_d" graffiti_2=off]
[chara_part name="arina_d" graffiti_3=off]
[chara_part name="arina_d" graffiti_4=off]
[chara_part name="arina_d" graffiti_5=off]
[chara_part name="arina_d" graffiti_6=off]
[chara_part name="arina_d" graffiti_7=off]
[chara_part name="arina_d" graffiti_8=off]
[chara_part name="arina_d" graffiti_9=off]

@jump target="graffiti_select"

*graffiti_hentai_on
[cm]
[eval exp="f.graffiti_hentai = true"]
[chara_part name="arina_d" graffiti_1=on]
@jump target="graffiti_select"

*graffiti_hentai_off
[cm]
[eval exp="f.graffiti_hentai = false"]
[chara_part name="arina_d" graffiti_1=off]
@jump target="graffiti_select"

*graffiti_expose_on
[cm]
[eval exp="f.graffiti_expose = true"]
[chara_part name="arina_d" graffiti_2=on]
@jump target="graffiti_select"

*graffiti_expose_off
[cm]
[eval exp="f.graffiti_expose = false"]
[chara_part name="arina_d" graffiti_2=off]
@jump target="graffiti_select"

*graffiti_attention_on
[cm]
[eval exp="f.graffiti_attention = true"]
[chara_part name="arina_d" graffiti_3=on]
@jump target="graffiti_select"

*graffiti_attention_off
[cm]
[eval exp="f.graffiti_attention = false"]
[chara_part name="arina_d" graffiti_3=off]
@jump target="graffiti_select"

*graffiti_virgin_on
[cm]
[eval exp="f.graffiti_virgin = true"]
[chara_part name="arina_d" graffiti_4=on]
@jump target="graffiti_select"

*graffiti_virgin_off
[cm]
[eval exp="f.graffiti_virgin = false"]
[chara_part name="arina_d" graffiti_4=off]
@jump target="graffiti_select"

*graffiti_name_on
[cm]
[eval exp="f.graffiti_name = true"]
[chara_part name="arina_d" graffiti_5=on]
@jump target="graffiti_select"

*graffiti_name_off
[cm]
[eval exp="f.graffiti_name = false"]
[chara_part name="arina_d" graffiti_5=off]
@jump target="graffiti_select"

*graffiti_photo_on
[cm]
[eval exp="f.graffiti_photo = true"]
[chara_part name="arina_d" graffiti_6=on]
@jump target="graffiti_select"

*graffiti_photo_off
[cm]
[eval exp="f.graffiti_photo = false"]
[chara_part name="arina_d" graffiti_6=off]
@jump target="graffiti_select"

*graffiti_school_on
[cm]
[eval exp="f.graffiti_school = true"]
[chara_part name="arina_d" graffiti_7=on]
@jump target="graffiti_select"

*graffiti_school_off
[cm]
[eval exp="f.graffiti_school = false"]
[chara_part name="arina_d" graffiti_7=off]
@jump target="graffiti_select"

*graffiti_boobs_on
[cm]
[eval exp="f.graffiti_boobs = true"]
[chara_part name="arina_d" graffiti_8=on]
@jump target="graffiti_select"

*graffiti_boobs_off
[cm]
[eval exp="f.graffiti_boobs = false"]
[chara_part name="arina_d" graffiti_8=off]
@jump target="graffiti_select"

*graffiti_pussy_on
[cm]
[eval exp="f.graffiti_pussy = true"]
[chara_part name="arina_d" graffiti_9=on]
@jump target="graffiti_select"

*graffiti_pussy_off
[cm]
[eval exp="f.graffiti_pussy = false"]
[chara_part name="arina_d" graffiti_9=off]
@jump target="graffiti_select"

[s]

;---------------------------------------------------------------------
;陰毛変更
;---------------------------------------------------------------------
*public_hair_select
[image layer="0" storage="public_hair_select_tab.png"]
[chara_part name="arina_d" body=nude]
[chara_part name="arina_d" costume=none]
[chara_part name="arina_d" underwear=none]
[chara_part name="arina_d" socks=off]
[chara_part name="arina_d" shoes=off]

;クリッカブル
[locate x=93 y=86]
[clickable width=85 height=50 target=*costume_select]
[locate x=184 y=86]
[clickable width=85 height=50 target=*underwear_select]
[locate x=275 y=86]
[clickable width=85 height=50 target=*graffiti_select]


;ボタン
[if exp="f.public_hair == 'none'"]
[locate x=158 y=208]
[button graphic="button/dress/button_none_on.png" target="public_hair_none"]
[else]
[locate x=158 y=208]
[button graphic="button/dress/button_none.png" target="public_hair_none"]
[endif]

[if exp="f.public_hair == 'normal'"]
[locate x=158 y=338]
[button graphic="button/dress/button_normal_on.png" target="public_hair_normal"]
[else]
[locate x=158 y=338]
[button graphic="button/dress/button_normal.png" target="public_hair_normal"]
[endif]

[if exp="f.public_hair == 'thick'"]
[locate x=158 y=468]
[button graphic="button/dress/button_thick_on.png" target="public_hair_thick"]
[else]
[locate x=158 y=468]
[button graphic="button/dress/button_thick.png" target="public_hair_thick"]
[endif]

[locate x=15 y=85]
[button graphic="button/dress/button_reset.png" target="dress_reset"]

[locate x=863 y=555]
[button graphic="button/button_return.png" storage="main.ks"]

[s]

*public_hair_none
[cm]
[eval exp="f.public_hair = 'none'"]
[chara_part name="arina_d" public_hair=none]
@jump target="public_hair_select"

*public_hair_normal
[cm]
[eval exp="f.public_hair = 'normal'"]
[chara_part name="arina_d" public_hair=normal]
@jump target="public_hair_select"

*public_hair_thick
[cm]
[eval exp="f.public_hair = 'thick'"]
[chara_part name="arina_d" public_hair=thick]
@jump target="public_hair_select"

;---------------------------------------------------------------------
;服装リセット
;---------------------------------------------------------------------
*dress_reset
[cm]
[eval exp="f.costume = 'uniform'"]
[eval exp="f.underwear = 'normal1'"]
[eval exp="f.socks = true"]
[eval exp="f.shoes = true"]
[eval exp="f.graffiti_hentai = false"]
[eval exp="f.graffiti_expose = false"]
[eval exp="f.graffiti_attention = false"]
[eval exp="f.graffiti_virgin = false"]
[eval exp="f.graffiti_name = false"]
[eval exp="f.graffiti_photo = false"]
[eval exp="f.graffiti_school = false"]
[eval exp="f.graffiti_boobs = false"]
[eval exp="f.graffiti_pussy = false"]
[eval exp="f.public_hair = 'none'"]

[chara_part name="arina_d" costume=uniform]
[chara_part name="arina_d" body=underwear]
[chara_part name="arina_d" socks=on]
[chara_part name="arina_d" shoes=on]
[chara_part name="arina_d" graffiti_1=off]
[chara_part name="arina_d" graffiti_2=off]
[chara_part name="arina_d" graffiti_3=off]
[chara_part name="arina_d" graffiti_4=off]
[chara_part name="arina_d" graffiti_5=off]
[chara_part name="arina_d" graffiti_6=off]
[chara_part name="arina_d" graffiti_7=off]
[chara_part name="arina_d" graffiti_8=off]
[chara_part name="arina_d" graffiti_9=off]
[chara_part name="arina_d" public_hair=none]

@jump target="costume_select"

[s]
