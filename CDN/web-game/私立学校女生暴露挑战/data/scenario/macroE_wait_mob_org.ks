;待機
*wait_300
[macro name=待機_300_E]
[wait time=300]
[endmacro]

*wait_500
[macro name=待機_500_E]
[wait time=500]
[endmacro]

*wait_1000
[macro name=待機_1000_E]
[wait time=1000]
[快感_E]
[endmacro]

*wait_2000
[macro name=待機_2000_E]
[wait time=1000]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[endmacro]

*wait_2500
[macro name=待機_2500_E]
[wait time=1000]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[endmacro]

*wait_3000
[macro name=待機_3000_E]
[wait time=1000]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[wait time=100]
[快感_E]
[endmacro]

*pleasure
[macro name=快感_E]
[if exp="f.expose_rank == 1"]
	[eval exp="f.satisfaction += 1"]
	[if exp="f.masturbation == true"]
		[eval exp="f.orgasm += 2"]
		[絶頂_E]
	[endif]
[elsif exp="f.expose_rank == 2"]
	[eval exp="f.satisfaction += 1"]
	[if exp="f.masturbation == true || f.boobs_knead == true"]
		[eval exp="f.orgasm += 2"]
		[絶頂_E]
	[endif]
[elsif exp="f.expose_rank == 3"]
		[eval exp="f.orgasm += 3"]
		[eval exp="f.satisfaction += 1"]
		[絶頂_E]
[endif]
[endmacro]

*satisfaction
[macro name=満足_E]
[chara_part name="score_gauge" score_gauge="& f.satisfaction" time=0]

[if exp="f.satisfaction >= 100"]
	[chara_part name="score_gauge" score_gauge=100  time=0]
[endif]
[endmacro]

*orgasm
[macro name=絶頂_E]

[if exp="f.orgasm >= 100"]
	[chara_part name="orgasm_gauge" orgasm_gauge=100 time=0]
[else]
	[chara_part name="orgasm_gauge" orgasm_gauge="& f.orgasm" time=0]
[endif]

[if exp="f.orgasm >= 100"]
	[chara_part name="orgasm_gauge" orgasm_gauge=100  time=0]
@jump storage="endless.ks" target="orgasm"
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;パンチラ絶頂
;------------------------------------------------------------------------------------------------------
;裸
;------------------------------------------------------------------------------------------------------
*orgasm_ps_n
[macro name=パンチラ絶頂_n_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_ps_n_loop
;1
;------------------------------------------------------------------------------------------------------
	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_n1]
		[chara_part name="arina_p" costume=ps3]
		[chara_part name="arina_p" cloth=ps3]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_n2]
		[chara_part name="arina_p" costume=org_ps]
		[chara_part name="arina_p" cloth=org_uni]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_ps_n_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_ps_n_loop"
[endif]

[endmacro]

;下着
;------------------------------------------------------------------------------------------------------
*orgasm_ps_u
[macro name=パンチラ絶頂_u_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_ps_u_loop
;1
;------------------------------------------------------------------------------------------------------
	[if exp="f.expose_rank == 3"]
		[フリルカット]
		[chara_part name="arina_p" underwear="& f.underwear"]
		[chara_part name="arina_p" body=org_r3_u1]
		[chara_part name="arina_p" costume=ps3]
		[chara_part name="arina_p" cloth=ps3]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]

	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_u2]
		[chara_part name="arina_p" costume=org_ps]
		[chara_part name="arina_p" cloth=org_uni]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_ps_u_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_ps_u_loop"
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;胸見せ絶頂
;------------------------------------------------------------------------------------------------------
;裸
;------------------------------------------------------------------------------------------------------
*orgasm_bs_n
[macro name=胸見せ絶頂_n_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_bs_n_loop
;1
;------------------------------------------------------------------------------------------------------
	[chara_part name="arina_p" underwear="& f.underwear"]

	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_n1]
		[chara_part name="arina_p" costume=bs5_n]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]

	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_n2]
		[chara_part name="arina_p" costume=org_bs_n]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_bs_n_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_bs_n_loop"
[endif]

[endmacro]

;下着
;------------------------------------------------------------------------------------------------------
*orgasm_bs_u
[macro name=胸見せ絶頂_u_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_bs_u_loop
;1
;------------------------------------------------------------------------------------------------------
	[chara_part name="arina_p" underwear="& f.underwear"]

	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_u1]
		[chara_part name="arina_p" costume=bs5_u]
		[free_layermode time=0]
		[layermode folder="fgimage/animation/boobs_show" graphic="shadow_undies_5.png" mode="multiply" time=0 zindex=0]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]
	
	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_u2]
		[chara_part name="arina_p" costume=org_bs_u]
		[free_layermode time=0]
		[layermode folder="fgimage/animation/orgasm" graphic="org_shadow_bs.png" mode="multiply" time=0 zindex=0]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_bs_u_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_bs_u_loop"
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;コート露出絶頂
;------------------------------------------------------------------------------------------------------
;裸
;------------------------------------------------------------------------------------------------------
*orgasm_ce_n
[macro name=コート露出絶頂_n_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_ce_n_loop
;1
;------------------------------------------------------------------------------------------------------
	[chara_part name="arina_p" underwear="& f.underwear"]

	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_ce_n1]
		[chara_part name="arina_p" costume=ce4_n]
		[絶頂用落書き_open]
		[絶頂用陰毛_1]
		[chara_part name="arina_p" cloth=ce_n4]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=open]
			[endif]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]

	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_ce_n2]
		[chara_part name="arina_p" costume=org_ce_n]
		[絶頂用落書き_2_open]
		[絶頂用陰毛_2]
		[chara_part name="arina_p" cloth=ce_n4]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org_open]
			[endif]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_ce_n_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_ce_n_loop"
[endif]

[endmacro]

;下着
;------------------------------------------------------------------------------------------------------
*orgasm_ce_u
[macro name=コート露出絶頂_u_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_ce_u_loop
;1
;------------------------------------------------------------------------------------------------------
	[chara_part name="arina_p" underwear="& f.underwear"]

	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_ce_u1]
		[chara_part name="arina_p" costume=ce4_u]
		[chara_part name="arina_p" cloth=ce_u4]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=open]
			[endif]
		[絶頂用落書き_open]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]

	[if exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_ce_u2]
		[chara_part name="arina_p" costume=org_ce_u]
		[chara_part name="arina_p" cloth=ce_u4]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org_open]
			[endif]
		[絶頂用落書き_2_open]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_ce_u_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_ce_u_loop"
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;胸揉み絶頂
;------------------------------------------------------------------------------------------------------
;裸
;------------------------------------------------------------------------------------------------------
*orgasm_bk_n
[macro name=胸揉み絶頂_n_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_bk_n_loop
;1
;------------------------------------------------------------------------------------------------------
	[chara_part name="arina_p" underwear="& f.underwear"]

	[if exp="f.expose_rank == 2"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=org_bk_uni1]
			[chara_part name="arina_p" body=org_r2_np1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r2_n1]
			[chara_part name="arina_p" costume=org_bk_coat_n1]
		[else]
			[chara_part name="arina_p" body=org_r2_n1]
			[chara_part name="arina_p" costume=org_bk_n1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]

	[elsif exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=org_bk_uni1]
			[chara_part name="arina_p" body=org_r3_np1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_n1]
			[chara_part name="arina_p" costume=org_bk_coat_n1]
		[else]
			[chara_part name="arina_p" body=org_r3_n1]
			[chara_part name="arina_p" costume=org_bk_n1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]

	[if exp="f.expose_rank == 2"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=org_bk_uni2]
			[chara_part name="arina_p" body=org_r2_np2]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r2_n2]
			[chara_part name="arina_p" costume=org_bk_coat_n2]
		[else]
			[chara_part name="arina_p" body=org_r2_n2]
			[chara_part name="arina_p" costume=org_bk_n2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]

	[elsif exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=org_bk_uni2]
			[chara_part name="arina_p" body=org_r3_np2]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_n2]
			[chara_part name="arina_p" costume=org_bk_coat_n2]
		[else]
			[chara_part name="arina_p" body=org_r3_n2]
			[chara_part name="arina_p" costume=org_bk_n2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_bk_n_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_bk_n_loop"
[endif]

[endmacro]

;下着
;------------------------------------------------------------------------------------------------------
*orgasm_bk_u
[macro name=胸揉み絶頂_u_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_bk_u_loop
;1
;------------------------------------------------------------------------------------------------------
	[if exp="f.expose_rank == 2"]
		[chara_part name="arina_p" body=org_r2_u1]
		[if exp="f.costume == 'uniform'"]
			[フリルカット]
			[chara_part name="arina_p" costume=org_bk_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" body=org_r2_u1]
			[chara_part name="arina_p" costume=org_bk_coat_u1]
		[else]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" body=org_r2_u1]
			[chara_part name="arina_p" costume=org_bk_u1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]

	[elsif exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[フリルカット]
			[chara_part name="arina_p" body=org_r3_u1]
			[chara_part name="arina_p" costume=org_bk_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" body=org_r3_u1]
			[chara_part name="arina_p" costume=org_bk_coat_u1]
		[else]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" body=org_r3_u1]
			[chara_part name="arina_p" costume=org_bk_u1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]

	[if exp="f.expose_rank == 2"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r2_u2]
			[chara_part name="arina_p" costume=org_bk_uni2]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r2_u2]
			[chara_part name="arina_p" costume=org_bk_coat_u2]
		[else]
			[chara_part name="arina_p" body=org_r2_u2]
			[chara_part name="arina_p" costume=org_bk_u2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]

	[elsif exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r3_u2]
			[chara_part name="arina_p" costume=org_bk_uni2]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_u2]
			[chara_part name="arina_p" costume=org_bk_coat_u2]
		[else]
			[chara_part name="arina_p" body=org_r3_u2]
			[chara_part name="arina_p" costume=org_bk_u2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
				[eval exp="f.check = true"]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_bk_u_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_bk_u_loop"
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;オナニー絶頂
;------------------------------------------------------------------------------------------------------
;裸
;------------------------------------------------------------------------------------------------------
*orgasm_mb_n
[macro name=オナニー絶頂_n_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_mb_n_loop
;1
;------------------------------------------------------------------------------------------------------
	[chara_part name="arina_p" underwear="& f.underwear"]

	[if exp="f.expose_rank == 1"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r1_np1]
			[chara_part name="arina_p" costume=mb_uni]
			[chara_part name="arina_p" cloth=mb_uni]
			[chara_part name="arina_p" hand=org_mb_uni1]
			[chara_part name="arina_p" f_hand=org_up_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r1_n1]
			[chara_part name="arina_p" costume=mb_coat_n]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_n1]
			[chara_part name="arina_p" f_hand=org_up_coat_n1]
		[else]
			[chara_part name="arina_p" body=org_r1_n1]
			[chara_part name="arina_p" hand=org_mb_n1]
			[chara_part name="arina_p" f_hand=org_up_n1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]

	[elsif exp="f.expose_rank == 2"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r2_np1]
			[chara_part name="arina_p" costume=mb_uni]
			[chara_part name="arina_p" cloth=mb_uni]
			[chara_part name="arina_p" hand=org_mb_uni1]
			[chara_part name="arina_p" f_hand=org_down_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r2_n1]
			[chara_part name="arina_p" costume=mb_coat_n]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_n1]
			[chara_part name="arina_p" f_hand=org_down_coat1]
		[else]
			[chara_part name="arina_p" body=org_r2_n1]
			[chara_part name="arina_p" hand=org_mb_n1]
			[chara_part name="arina_p" f_hand=org_down_1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]

	[elsif exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r3_np1]
			[chara_part name="arina_p" costume=mb_uni]
			[chara_part name="arina_p" cloth=mb_uni]
			[chara_part name="arina_p" hand=org_mb_uni1]
			[chara_part name="arina_p" f_hand=org_fh_bk_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_n1]
			[chara_part name="arina_p" costume=mb_coat_n]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_n1]
			[chara_part name="arina_p" f_hand=org_fh_mb_coat_n1]
		[else]
			[chara_part name="arina_p" body=org_r3_n1]
			[chara_part name="arina_p" hand=org_mb_n1]
			[chara_part name="arina_p" f_hand=org_fh_bk_n1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]

	[if exp="f.expose_rank == 1"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r1_np2]
			[chara_part name="arina_p" costume=org_mb_uni]
			[chara_part name="arina_p" cloth=org_uni]
			[chara_part name="arina_p" hand=org_mb_uni2]
			[chara_part name="arina_p" f_hand=org_up_uni2]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r1_n2]
			[chara_part name="arina_p" costume=org_mb_n]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_n2]
			[chara_part name="arina_p" f_hand=org_up_coat_n2]
		[else]
			[chara_part name="arina_p" body=org_r1_n2]
			[chara_part name="arina_p" hand=org_mb_n2]
			[chara_part name="arina_p" f_hand=org_up_n2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]

	[elsif exp="f.expose_rank == 2"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r2_np2]
			[chara_part name="arina_p" costume=org_mb_uni]
			[chara_part name="arina_p" cloth=org_uni]
			[chara_part name="arina_p" hand=org_mb_uni2]
			[chara_part name="arina_p" f_hand=org_down_uni2]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r2_n2]
			[chara_part name="arina_p" costume=org_mb_n]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_n2]
			[chara_part name="arina_p" f_hand=org_down_coat2]
		[else]
			[chara_part name="arina_p" body=org_r2_n2]
			[chara_part name="arina_p" hand=org_mb_n2]
			[chara_part name="arina_p" f_hand=org_down_2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]

	[elsif exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r3_np2]
			[chara_part name="arina_p" costume=org_mb_uni]
			[chara_part name="arina_p" cloth=org_uni]
			[chara_part name="arina_p" hand=org_mb_uni2]
			[chara_part name="arina_p" f_hand=org_fh_bk_uni2]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_n2]
			[chara_part name="arina_p" costume=org_mb_n]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_n2]
			[chara_part name="arina_p" f_hand=org_fh_mb_coat_n2]
		[else]
			[chara_part name="arina_p" body=org_r3_n2]
			[chara_part name="arina_p" hand=org_mb_n2]
			[chara_part name="arina_p" f_hand=org_fh_bk_n2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_mb_n_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_mb_n_loop"
[endif]

[endmacro]

;下着
;------------------------------------------------------------------------------------------------------
*orgasm_mb_u
[macro name=オナニー絶頂_u_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
*orgasm_mb_u_loop
;1
;------------------------------------------------------------------------------------------------------
	[if exp="f.expose_rank == 1"]
		[chara_part name="arina_p" body=org_r1_u1]
		[if exp="f.costume == 'uniform'"]
			[フリルカット]
			[chara_part name="arina_p" costume=mb_uni]
			[chara_part name="arina_p" cloth=mb_uni]
			[chara_part name="arina_p" hand=org_mb_uni1]
			[chara_part name="arina_p" f_hand=org_up_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" costume=mb_coat_u]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_u1]
			[chara_part name="arina_p" f_hand=org_up_coat_u1]
		[else]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" hand=org_mb_u1]
			[chara_part name="arina_p" f_hand=org_up_u1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]

	[elsif exp="f.expose_rank == 2"]
		[chara_part name="arina_p" body=org_r2_u1]
		[if exp="f.costume == 'uniform'"]
			[フリルカット]
			[chara_part name="arina_p" costume=mb_uni]
			[chara_part name="arina_p" cloth=mb_uni]
			[chara_part name="arina_p" hand=org_mb_uni1]
			[chara_part name="arina_p" f_hand=org_down_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" costume=mb_coat_u]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_u1]
			[chara_part name="arina_p" f_hand=org_down_coat1]
		[else]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" hand=org_mb_u1]
			[chara_part name="arina_p" f_hand=org_down_1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]

	[elsif exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_u1]
		[if exp="f.costume == 'uniform'"]
			[フリルカット]
			[chara_part name="arina_p" costume=mb_uni]
			[chara_part name="arina_p" cloth=mb_uni]
			[chara_part name="arina_p" hand=org_mb_uni1]
			[chara_part name="arina_p" f_hand=org_fh_bk_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" costume=mb_coat_u]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_u1]
			[chara_part name="arina_p" f_hand=org_fh_mb_coat_u1]
		[else]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" hand=org_mb_u1]
			[chara_part name="arina_p" f_hand=org_fh_bk_u1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[if exp="f.expose_rank == 1"]
		[chara_part name="arina_p" body=org_r1_u2]
		[if exp="f.costume == 'uniform'"]
			[eval exp="f.org_underwear = 'org_' + f.underwear_cut"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" costume=org_mb_uni]
			[chara_part name="arina_p" cloth=org_uni]
			[chara_part name="arina_p" hand=org_mb_uni2]
			[chara_part name="arina_p" f_hand=org_up_uni2]
		[elsif exp="f.costume == 'coat'"]
			[eval exp="f.org_underwear = 'org_' + f.underwear"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" costume=org_mb_u]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_u2]
			[chara_part name="arina_p" f_hand=org_up_coat_u2]
		[else]
			[eval exp="f.org_underwear = 'org_' + f.underwear"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" hand=org_mb_u2]
			[chara_part name="arina_p" f_hand=org_up_u2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]

	[elsif exp="f.expose_rank == 2"]
		[chara_part name="arina_p" body=org_r2_u2]
		[if exp="f.costume == 'uniform'"]
			[eval exp="f.org_underwear = 'org_' + f.underwear_cut"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" costume=org_mb_uni]
			[chara_part name="arina_p" cloth=org_uni]
			[chara_part name="arina_p" hand=org_mb_uni2]
			[chara_part name="arina_p" f_hand=org_down_uni2]
		[elsif exp="f.costume == 'coat'"]
			[eval exp="f.org_underwear = 'org_' + f.underwear"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" costume=org_mb_u]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_u2]
			[chara_part name="arina_p" f_hand=org_down_coat2]
		[else]
			[eval exp="f.org_underwear = 'org_' + f.underwear"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" hand=org_mb_u2]
			[chara_part name="arina_p" f_hand=org_down_2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]

	[elsif exp="f.expose_rank == 3"]
		[chara_part name="arina_p" body=org_r3_u2]
		[if exp="f.costume == 'uniform'"]
			[eval exp="f.org_underwear = 'org_' + f.underwear_cut"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" costume=org_mb_uni]
			[chara_part name="arina_p" cloth=org_uni]
			[chara_part name="arina_p" f_hand=org_fh_bk_uni2]
		[elsif exp="f.costume == 'coat'"]
			[eval exp="f.org_underwear = 'org_' + f.underwear"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" costume=org_mb_u]
			[chara_part name="arina_p" cloth=mb_coat]
			[chara_part name="arina_p" hand=org_mb_coat_u2]
			[chara_part name="arina_p" f_hand=org_fh_mb_coat_u2]
		[else]
			[eval exp="f.org_underwear = 'org_' + f.underwear"]
			[chara_part name="arina_p" underwear="& f.org_underwear"]
			[chara_part name="arina_p" hand=org_mb_u2]
			[chara_part name="arina_p" f_hand=org_fh_bk_u2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_mb_u_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_mb_u_loop"
[endif]

[endmacro]

;------------------------------------------------------------------------------------------------------
;おしっこ絶頂
;------------------------------------------------------------------------------------------------------
;裸
;------------------------------------------------------------------------------------------------------
*orgasm_pe_n
[macro name=おしっこ絶頂_n_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
[chara_part name="arina_p" hand=none]
*orgasm_pe_n_loop
;1
;------------------------------------------------------------------------------------------------------
	[chara_part name="arina_p" underwear="& f.underwear"]

	[if exp="f.expose_rank == 1"]
		[chara_part name="arina_p" body=org_r1_n1]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=pe_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" costume=pe_coat1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]

	[elsif exp="f.expose_rank == 2"]
		[chara_part name="arina_p" body=org_r2_n1]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=pe_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" costume=pe_coat1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=on]
			[endif]
		[絶頂用落書き]
		[絶頂用陰毛_1]

	[elsif exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r3_pe_u1]
			[chara_part name="arina_p" costume=pe_uni_open]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_pe_n1]
			[chara_part name="arina_p" costume=pe_coat_open]
		[else]
			[chara_part name="arina_p" body=org_r3_pe_n1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=open]
			[endif]
		[絶頂用落書き_open]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[eval exp="f.org_underwear = 'org_' + f.underwear"]
	[chara_part name="arina_p" underwear="& f.org_underwear"]

	[if exp="f.expose_rank == 1"]
		[chara_part name="arina_p" body=org_r1_n2]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=org_pe_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" costume=org_pe_coat1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]

	[elsif exp="f.expose_rank == 2"]
		[chara_part name="arina_p" body=org_r2_n2]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" costume=org_pe_uni1]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" costume=org_pe_coat1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org]
			[endif]
		[絶頂用落書き_2]
		[絶頂用陰毛_2]

	[elsif exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[フリルカット]
			[chara_part name="arina_p" body=org_r3_pe_u2]
			[chara_part name="arina_p" costume=org_pe_uni_open]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_pe_n2]
			[chara_part name="arina_p" costume=org_pe_coat_open]
		[else]
			[chara_part name="arina_p" body=org_r3_pe_n2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org_open]
			[endif]
		[絶頂用落書き_2_open]
		[絶頂用陰毛_2]
	[endif]
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_pe_n_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_pe_n_loop"
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;おしっこ絶頂
;------------------------------------------------------------------------------------------------------
;下着
;------------------------------------------------------------------------------------------------------
*orgasm_pe_u
[macro name=おしっこ絶頂_u_E]
[eval exp="f.biku_count = 0"]
[eval exp="f.orgasm_count = 0"]
[chara_part name="arina_p" hand=none]

*orgasm_pe_u_loop
;1
;------------------------------------------------------------------------------------------------------
	[if exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[chara_part name="arina_p" body=org_r3_pe_u1]
			[chara_part name="arina_p" costume=pe_uni_open]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_pe_n1]
			[chara_part name="arina_p" costume=pe_coat_open]
		[else]
			[chara_part name="arina_p" underwear="& f.underwear"]
			[chara_part name="arina_p" body=org_r3_pe_u1]
			[chara_part name="arina_p" hand=org_pe_1]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=open]
			[endif]
		[絶頂用落書き_open]
		[絶頂用陰毛_1]
	[endif]
[wait time=100]

;2
;------------------------------------------------------------------------------------------------------
	[if exp="f.expose_rank == 3"]
		[if exp="f.costume == 'uniform'"]
			[フリルカット]
			[chara_part name="arina_p" body=org_r3_pe_u2]
			[chara_part name="arina_p" costume=org_pe_uni_open]
		[elsif exp="f.costume == 'coat'"]
			[chara_part name="arina_p" body=org_r3_pe_u2]
			[chara_part name="arina_p" costume=org_pe_coat_open]
		[else]
			[chara_part name="arina_p" body=org_r3_pe_u2]
			[chara_part name="arina_p" hand=org_pe_2]
		[endif]
			[if exp="f.socks == true"]
				[chara_part name="arina_p" socks=org_open]
			[endif]
		[絶頂用落書き_2_open]
		[絶頂用陰毛_2]
	[endif]
	
[wait time=100]

;絶頂セット（2回びくびく+wait700）
[eval exp="f.biku_count += 1"]
[if exp="f.biku_count < 2"]
	@jump target="orgasm_pe_u_loop"
[endif]

[eval exp="f.biku_count = 0"]
[wait time=700]
[eval exp="f.orgasm_count += 1"]

;３回繰り返す
[if exp="f.orgasm_count < 3"]
	@jump target="orgasm_pe_u_loop"
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;フリルカット
;------------------------------------------------------------------------------------------------------
*frill_cut
[macro name=フリルカット_E]
[if exp="f.underwear == 'frill1' || f.underwear == 'frill2' || f.underwear == 'frill3' || f.underwear == 'frill4' || f.underwear == 'frill5'"]
	[eval exp="f.underwear_cut = f.underwear + '_cut'"]
	[chara_part name="arina_p" underwear="& f.underwear_cut"]
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;絶頂用落書き
;------------------------------------------------------------------------------------------------------
*graffiti_org
[macro name=絶頂用落書き_E]
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_p" graffiti_8=on]
[endif]
[if exp="f.graffiti_pussy == true"]
	[chara_part name="arina_p" graffiti_9=on]
[endif]
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
[endmacro]

;------------------------------------------------------------------------------------------------------
;絶頂用落書き_open
;------------------------------------------------------------------------------------------------------
*graffiti_org_open
[macro name=絶頂用落書き_open_E]
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_p" graffiti_8=on]
[endif]
[if exp="f.graffiti_pussy == true"]
	[chara_part name="arina_p" graffiti_9=on]
[endif]
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
	[chara_part name="arina_p" graffiti_5=open]
[endif]
[if exp="f.graffiti_photo == true"]
	[chara_part name="arina_p" graffiti_6=open]
[endif]
[if exp="f.graffiti_school == true"]
	[chara_part name="arina_p" graffiti_7=open]
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;絶頂用落書き_2
;------------------------------------------------------------------------------------------------------
*graffiti_org_2
[macro name=絶頂用落書き_2_E]
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_p" graffiti_8=org]
[endif]
[if exp="f.graffiti_pussy == true"]
	[chara_part name="arina_p" graffiti_9=org]
[endif]
[if exp="f.graffiti_hentai == true"]
	[chara_part name="arina_p" graffiti_1=org]
[endif]
[if exp="f.graffiti_expose == true"]
	[chara_part name="arina_p" graffiti_2=org]
[endif]
[if exp="f.graffiti_attention == true"]
	[chara_part name="arina_p" graffiti_3=org]
[endif]
[if exp="f.graffiti_virgin == true"]
	[chara_part name="arina_p" graffiti_4=org]
[endif]
[if exp="f.graffiti_name == true"]
	[chara_part name="arina_p" graffiti_5=org]
[endif]
[if exp="f.graffiti_photo == true"]
	[chara_part name="arina_p" graffiti_6=org]
[endif]
[if exp="f.graffiti_school == true"]
	[chara_part name="arina_p" graffiti_7=org]
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;絶頂用落書き_2_open
;------------------------------------------------------------------------------------------------------
*graffiti_org_2_open
[macro name=絶頂用落書き_2_open_E]
[if exp="f.graffiti_boobs == true"]
	[chara_part name="arina_p" graffiti_8=org]
[endif]
[if exp="f.graffiti_pussy == true"]
	[chara_part name="arina_p" graffiti_9=org]
[endif]
[if exp="f.graffiti_hentai == true"]
	[chara_part name="arina_p" graffiti_1=org]
[endif]
[if exp="f.graffiti_expose == true"]
	[chara_part name="arina_p" graffiti_2=org]
[endif]
[if exp="f.graffiti_attention == true"]
	[chara_part name="arina_p" graffiti_3=org]
[endif]
[if exp="f.graffiti_virgin == true"]
	[chara_part name="arina_p" graffiti_4=org]
[endif]
[if exp="f.graffiti_name == true"]
	[chara_part name="arina_p" graffiti_5=open_org]
[endif]
[if exp="f.graffiti_photo == true"]
	[chara_part name="arina_p" graffiti_6=open_org]
[endif]
[if exp="f.graffiti_school == true"]
	[chara_part name="arina_p" graffiti_7=open_org]
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;絶頂用陰毛_1
;------------------------------------------------------------------------------------------------------
[macro name=絶頂用陰毛_1]
[if exp="f.public_hair == 'normal'"]
	[chara_part name="arina_p" public_hair=normal]
[elsif exp="f.public_hair == 'thick'"]
	[chara_part name="arina_p" public_hair=thick]
[endif]
[endmacro]

;------------------------------------------------------------------------------------------------------
;絶頂用陰毛_2
;------------------------------------------------------------------------------------------------------
[macro name=絶頂用陰毛_2]
[if exp="f.public_hair == 'normal'"]
	[chara_part name="arina_p" public_hair=normal_org]
[elsif exp="f.public_hair == 'thick'"]
	[chara_part name="arina_p" public_hair=thick_org]
[endif]
[endmacro]

