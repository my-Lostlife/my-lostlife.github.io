;一番最初に呼び出されるファイル

[title name="私立女高中生露出挑战~桃子精翻汉化，更多游戏669acg.com"]

[stop_keyconfig]

;デバッグ用
;[plugin name=tsex]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
;初期露出狂ランク
[eval exp="f.expose_rank = 1"]

;ランク３まで解放済み、または全解放スイッチの使用を確認する変数
[eval exp="f.complete = false"]

;初期衣装
[eval exp="f.costume = 'uniform'"]
[eval exp="f.socks = true"]
[eval exp="f.shoes = true"]
[eval exp="f.underwear = 'normal1'"]
[eval exp="f.public_hair = 'none'"]

;満足度
[eval exp="f.satisfaction = 0"]
;絶頂
[eval exp="f.orgasm = 0"]
;ライフ
[eval exp="f.life = 3"]

;ステージクリア状態
[eval exp="f.park_night_clear = false"]
[eval exp="f.residential_night_clear = false"]
[eval exp="f.school_night_clear = false"]
[eval exp="f.mall_night_clear = false"]
[eval exp="f.park_morning_clear = false"]
[eval exp="f.residential_morning_clear = false"]
[eval exp="f.school_morning_clear = false"]
[eval exp="f.mall_morning_clear = false"]

;ランダム処理用
[iscript]
window.getRandItem = function (array) {
return array[Math.floor(Math.random()*array.length)]
}
[endscript]

;マクロ読み込み
@call storage="macro_parts.ks"
@call storage="macro_wait_mob_org.ks"
@call storage="macroE_wait_mob_org.ks"
@call storage="macro_look_gauge.ks"
@call storage="macroE_look_gauge.ks"

;このゲームで登場するキャラクターを宣言
[chara_config pos_mode=false]

[chara_new  name="black" storage="black.png" jname="黒"]

;綾城愛梨奈
[chara_new  name="arina_m" storage="0.png" jname="愛梨奈"]
[chara_new  name="arina_p" storage="0.png" jname="愛梨奈"]
[chara_new  name="arina_d" storage="0.png" jname="愛梨奈"]

;体_メイン
[chara_layer name="arina_m" part=body id=underwear storage="body/main_body/poseA_underwear_m.png" ]
[chara_layer name="arina_m" part=body id=nude storage="body/main_body/poseA_nude_m.png" ]

;表情_メイン
[chara_layer name="arina_m" part=face id=normal storage="face/main_face/face_normal_m.png" ]
[chara_layer name="arina_m" part=face id=3 storage="face/main_face/face_3_m.png" ]

[chara_layer name="arina_m" part=eye id=normal storage="face/main_face/blink_1.gif" ]
[chara_layer name="arina_m" part=eye id=3 storage="face/main_face/blink_2.gif" ]

;落書き_メイン
[chara_layer name="arina_m" part=graffiti_1 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_1 id=on storage="graffiti/main_graffiti/graffiti_hentai_m.png" ]

[chara_layer name="arina_m" part=graffiti_2 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_2 id=on storage="graffiti/main_graffiti/graffiti_expose_m.png" ]

[chara_layer name="arina_m" part=graffiti_3 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_3 id=on storage="graffiti/main_graffiti/graffiti_attention_m.png" ]

[chara_layer name="arina_m" part=graffiti_4 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_4 id=on storage="graffiti/main_graffiti/graffiti_virgin_m.png" ]

[chara_layer name="arina_m" part=graffiti_5 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_5 id=on storage="graffiti/main_graffiti/graffiti_name_m.png" ]

[chara_layer name="arina_m" part=graffiti_6 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_6 id=on storage="graffiti/main_graffiti/graffiti_photo_m.png" ]

[chara_layer name="arina_m" part=graffiti_7 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_7 id=on storage="graffiti/main_graffiti/graffiti_school_m.png" ]

[chara_layer name="arina_m" part=graffiti_8 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_8 id=on storage="graffiti/main_graffiti/graffiti_boobs_m.png" ]

[chara_layer name="arina_m" part=graffiti_9 id=off storage="0.png" ]
[chara_layer name="arina_m" part=graffiti_9 id=on storage="graffiti/main_graffiti/graffiti_pussy_m.png" ]

;陰毛_メイン
[chara_layer name="arina_m" part=public_hair id=none storage="0.png" ]
[chara_layer name="arina_m" part=public_hair id=normal storage="public_hair/main_public_hair/public_hair_normal_m.png" ]
[chara_layer name="arina_m" part=public_hair id=thick storage="public_hair/main_public_hair/public_hair_thick_m.png" ]

;下着_メイン
[chara_layer name="arina_m" part=underwear id=normal1 storage="underwear/main_underwear/normal_pink_m.png" ]
[chara_layer name="arina_m" part=underwear id=normal2 storage="underwear/main_underwear/normal_white_m.png" ]
[chara_layer name="arina_m" part=underwear id=normal3 storage="underwear/main_underwear/normal_blue_m.png" ]
[chara_layer name="arina_m" part=underwear id=normal4 storage="underwear/main_underwear/normal_navy_m.png" ]
[chara_layer name="arina_m" part=underwear id=normal5 storage="underwear/main_underwear/normal_black_m.png" ]
[chara_layer name="arina_m" part=underwear id=frill1 storage="underwear/main_underwear/frill_pink_m.png" ]
[chara_layer name="arina_m" part=underwear id=frill2 storage="underwear/main_underwear/frill_white_m.png" ]
[chara_layer name="arina_m" part=underwear id=frill3 storage="underwear/main_underwear/frill_blue_m.png" ]
[chara_layer name="arina_m" part=underwear id=frill4 storage="underwear/main_underwear/frill_navy_m.png" ]
[chara_layer name="arina_m" part=underwear id=frill5 storage="underwear/main_underwear/frill_black_m.png" ]
[chara_layer name="arina_m" part=underwear id=bikini1 storage="underwear/main_underwear/bikini_pink_m.png" ]
[chara_layer name="arina_m" part=underwear id=bikini2 storage="underwear/main_underwear/bikini_white_m.png" ]
[chara_layer name="arina_m" part=underwear id=bikini3 storage="underwear/main_underwear/bikini_red_m.png" ]
[chara_layer name="arina_m" part=underwear id=bikini4 storage="underwear/main_underwear/bikini_navy_m.png" ]
[chara_layer name="arina_m" part=underwear id=bikini5 storage="underwear/main_underwear/bikini_black_m.png" ]
[chara_layer name="arina_m" part=underwear id=rope1 storage="underwear/main_underwear/rope_beige_m.png" ]
[chara_layer name="arina_m" part=underwear id=rope2 storage="underwear/main_underwear/rope_pink_m.png" ]
[chara_layer name="arina_m" part=underwear id=rope3 storage="underwear/main_underwear/rope_red_m.png" ]
[chara_layer name="arina_m" part=underwear id=rope4 storage="underwear/main_underwear/rope_blue_m.png" ]
[chara_layer name="arina_m" part=underwear id=rope5 storage="underwear/main_underwear/rope_black_m.png" ]

[chara_layer name="arina_m" part=underwear id=none storage="0.png" ]

;衣装_メイン
[chara_layer name="arina_m" part=socks id=on storage="costume/main_costume/socks_m.png" ]
[chara_layer name="arina_m" part=socks id=off storage="0.png" ]

[chara_layer name="arina_m" part=shoes id=on storage="costume/main_costume/shoes_m.png" ]
[chara_layer name="arina_m" part=shoes id=off storage="0.png" ]

[chara_layer name="arina_m" part=costume id=uniform storage="costume/main_costume/uniform_poseA_m.png" ]
[chara_layer name="arina_m" part=costume id=coat storage="costume/main_costume/coat_poseA_m.png" ]
[chara_layer name="arina_m" part=costume id=none storage="0.png" ]

;体_着せ替え
[chara_layer name="arina_d" part=body id=underwear storage="body/dress_body/poseA_underwear_d.png" ]
[chara_layer name="arina_d" part=body id=nude storage="body/dress_body/poseA_nude_d.png" ]

;表情_着せ替え
[chara_layer name="arina_d" part=face id=1 storage="face/dress_face/face_1_d.png" ]
[chara_layer name="arina_d" part=face id=2 storage="face/dress_face/face_2_d.png" ]

[chara_layer name="arina_d" part=eye id=1 storage="face/dress_face/blink_1_d.gif" ]
[chara_layer name="arina_d" part=eye id=2 storage="face/dress_face/blink_2_d.gif" ]

;落書き_着せ替え
[chara_layer name="arina_d" part=graffiti_1 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_1 id=on storage="graffiti/dress_graffiti/graffiti_hentai_d.png" ]

[chara_layer name="arina_d" part=graffiti_2 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_2 id=on storage="graffiti/dress_graffiti/graffiti_expose_d.png" ]

[chara_layer name="arina_d" part=graffiti_3 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_3 id=on storage="graffiti/dress_graffiti/graffiti_attention_d.png" ]

[chara_layer name="arina_d" part=graffiti_4 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_4 id=on storage="graffiti/dress_graffiti/graffiti_virgin_d.png" ]

[chara_layer name="arina_d" part=graffiti_5 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_5 id=on storage="graffiti/dress_graffiti/graffiti_name_d.png" ]

[chara_layer name="arina_d" part=graffiti_6 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_6 id=on storage="graffiti/dress_graffiti/graffiti_photo_d.png" ]

[chara_layer name="arina_d" part=graffiti_7 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_7 id=on storage="graffiti/dress_graffiti/graffiti_school_d.png" ]

[chara_layer name="arina_d" part=graffiti_8 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_8 id=on storage="graffiti/dress_graffiti/graffiti_boobs_d.png" ]

[chara_layer name="arina_d" part=graffiti_9 id=off storage="0.png" ]
[chara_layer name="arina_d" part=graffiti_9 id=on storage="graffiti/dress_graffiti/graffiti_pussy_d.png" ]

;陰毛_着せ替え
[chara_layer name="arina_d" part=public_hair id=none storage="0.png" ]
[chara_layer name="arina_d" part=public_hair id=normal storage="public_hair/dress_public_hair/public_hair_normal_d.png" ]
[chara_layer name="arina_d" part=public_hair id=thick storage="public_hair/dress_public_hair/public_hair_thick_d.png" ]

;下着_着せ替え
[chara_layer name="arina_d" part=underwear id=normal1 storage="underwear/dress_underwear/normal_pink_d.png" ]
[chara_layer name="arina_d" part=underwear id=normal2 storage="underwear/dress_underwear/normal_white_d.png" ]
[chara_layer name="arina_d" part=underwear id=normal3 storage="underwear/dress_underwear/normal_blue_d.png" ]
[chara_layer name="arina_d" part=underwear id=normal4 storage="underwear/dress_underwear/normal_navy_d.png" ]
[chara_layer name="arina_d" part=underwear id=normal5 storage="underwear/dress_underwear/normal_black_d.png" ]
[chara_layer name="arina_d" part=underwear id=frill1 storage="underwear/dress_underwear/frill_pink_d.png" ]
[chara_layer name="arina_d" part=underwear id=frill2 storage="underwear/dress_underwear/frill_white_d.png" ]
[chara_layer name="arina_d" part=underwear id=frill3 storage="underwear/dress_underwear/frill_blue_d.png" ]
[chara_layer name="arina_d" part=underwear id=frill4 storage="underwear/dress_underwear/frill_navy_d.png" ]
[chara_layer name="arina_d" part=underwear id=frill5 storage="underwear/dress_underwear/frill_black_d.png" ]
[chara_layer name="arina_d" part=underwear id=bikini1 storage="underwear/dress_underwear/bikini_pink_d.png" ]
[chara_layer name="arina_d" part=underwear id=bikini2 storage="underwear/dress_underwear/bikini_white_d.png" ]
[chara_layer name="arina_d" part=underwear id=bikini3 storage="underwear/dress_underwear/bikini_red_d.png" ]
[chara_layer name="arina_d" part=underwear id=bikini4 storage="underwear/dress_underwear/bikini_navy_d.png" ]
[chara_layer name="arina_d" part=underwear id=bikini5 storage="underwear/dress_underwear/bikini_black_d.png" ]
[chara_layer name="arina_d" part=underwear id=rope1 storage="underwear/dress_underwear/rope_beige_d.png" ]
[chara_layer name="arina_d" part=underwear id=rope2 storage="underwear/dress_underwear/rope_pink_d.png" ]
[chara_layer name="arina_d" part=underwear id=rope3 storage="underwear/dress_underwear/rope_red_d.png" ]
[chara_layer name="arina_d" part=underwear id=rope4 storage="underwear/dress_underwear/rope_blue_d.png" ]
[chara_layer name="arina_d" part=underwear id=rope5 storage="underwear/dress_underwear/rope_black_d.png" ]

[chara_layer name="arina_d" part=underwear id=none storage="0.png" ]

;衣装_着せ替え
[chara_layer name="arina_d" part=socks id=on storage="costume/dress_costume/socks_d.png" ]
[chara_layer name="arina_d" part=socks id=off storage="0.png" ]

[chara_layer name="arina_d" part=shoes id=on storage="costume/dress_costume/shoes_d.png" ]
[chara_layer name="arina_d" part=shoes id=off storage="0.png" ]

[chara_layer name="arina_d" part=costume id=uniform storage="costume/dress_costume/uniform_poseA_d.png" ]
[chara_layer name="arina_d" part=costume id=coat storage="costume/dress_costume/coat_poseA_d.png" ]
[chara_layer name="arina_d" part=costume id=none storage="0.png" ]

;------------------------------------------------------------------------------------------------------
;プレイ中
;------------------------------------------------------------------------------------------------------
;裏地（スカート・コート）_プレイ中
[chara_layer name="arina_p" part=cloth id=none storage="0.png" ]
[chara_layer name="arina_p" part=cloth id=ps2 storage="animation/pussy_show/costume/pussy_show_2_cloth.png" ]
[chara_layer name="arina_p" part=cloth id=ps3 storage="animation/pussy_show/costume/pussy_show_3_cloth.png" ]

[chara_layer name="arina_p" part=cloth id=org_uni storage="animation/orgasm/costume/uniform/orgasm_cloth_uni_nude.png" ]

[chara_layer name="arina_p" part=cloth id=bk storage="animation/boobs_knead/costume/knead_coat_cloth.png" ]

[chara_layer name="arina_p" part=cloth id=ce storage="animation/coat_expose/costume/coat_expose_cloth.png" ]
[chara_layer name="arina_p" part=cloth id=ce_n4 storage="animation/coat_expose/costume/ce_4_n_cloth.png" ]
[chara_layer name="arina_p" part=cloth id=ce_u4 storage="animation/coat_expose/costume/ce_4_u_cloth.png" ]

[chara_layer name="arina_p" part=cloth id=mb_uni storage="animation/masturbation/costume/masturbation_uniform_cloth.png" ]
[chara_layer name="arina_p" part=cloth id=mb_coat storage="animation/masturbation/costume/masturbation_coat_cloth.png" ]

;体_プレイ中
[chara_layer name="arina_p" part=body id=underwear storage="body/play_body/poseA_underwear_p.png" ]
[chara_layer name="arina_p" part=body id=nude storage="body/play_body/poseA_nude_p.png" ]

;体_アニメーション
[chara_layer name="arina_p" part=body id=ps1 storage="animation/pussy_show/body/pussy_show_1_body.png" ]
[chara_layer name="arina_p" part=body id=ps2 storage="animation/pussy_show/body/pussy_show_2_body.png" ]
[chara_layer name="arina_p" part=body id=ps3 storage="animation/pussy_show/body/pussy_show_3_body.png" ]

[chara_layer name="arina_p" part=body id=ce_n storage="animation/coat_expose/body/body_ce_n.png" ]
[chara_layer name="arina_p" part=body id=ce_u storage="animation/coat_expose/body/body_ce_u.png" ]
[chara_layer name="arina_p" part=body id=ce_n_open storage="animation/coat_expose/body/body_ce_n_open.png" ]
[chara_layer name="arina_p" part=body id=ce_u_open storage="animation/coat_expose/body/body_ce_u_open.png" ]

[chara_layer name="arina_p" part=body id=ce1_bikini storage="animation/coat_expose/body/coat_expose_bikini_1_body.png" ]
[chara_layer name="arina_p" part=body id=ce2_bikini storage="animation/coat_expose/body/coat_expose_bikini_2_body.png" ]
[chara_layer name="arina_p" part=body id=ce3_bikini storage="animation/coat_expose/body/coat_expose_bikini_3_body.png" ]
[chara_layer name="arina_p" part=body id=ce4_bikini storage="animation/coat_expose/body/coat_expose_bikini_4_body.png" ]

[chara_layer name="arina_p" part=body id=bs1 storage="animation/boobs_show/body/boobs_show_1_body.png" ]
[chara_layer name="arina_p" part=body id=bs2 storage="animation/boobs_show/body/boobs_show_2_body.png" ]
[chara_layer name="arina_p" part=body id=bs3_n storage="animation/boobs_show/body/boobs_show_3_nude_body.png" ]
[chara_layer name="arina_p" part=body id=bs3_u storage="animation/boobs_show/body/boobs_show_3_undies_body.png" ]
[chara_layer name="arina_p" part=body id=bs4_n storage="animation/boobs_show/body/boobs_show_4_nude_body.png" ]
[chara_layer name="arina_p" part=body id=bs4_u storage="animation/boobs_show/body/boobs_show_4_undies_body.png" ]
[chara_layer name="arina_p" part=body id=bs5_n storage="animation/boobs_show/body/boobs_show_5_nude_body.png" ]
[chara_layer name="arina_p" part=body id=bs5_u storage="animation/boobs_show/body/boobs_show_5_undies_body.png" ]

[chara_layer name="arina_p" part=body id=bk_n storage="animation/boobs_knead/body/knead_nude_body.png" ]
[chara_layer name="arina_p" part=body id=bk_u storage="animation/boobs_knead/body/knead_undies_body.png" ]

[chara_layer name="arina_p" part=body id=mb_n storage="animation/masturbation/body/masturbation_nude_body.png" ]
[chara_layer name="arina_p" part=body id=mb_u storage="animation/masturbation/body/masturbation_undies_body.png" ]

[chara_layer name="arina_p" part=body id=pe_n1 storage="animation/pee/body/pee_nude_1.png" ]
[chara_layer name="arina_p" part=body id=pe_u1 storage="animation/pee/body/pee_undies_1.png" ]
[chara_layer name="arina_p" part=body id=pe_n_open storage="animation/pee/body/pee_nude_2.png" ]
[chara_layer name="arina_p" part=body id=pe_u_open storage="animation/pee/body/pee_undies_2.png" ]

;絶頂
[chara_layer name="arina_p" part=body id=org_r1_n1 storage="animation/orgasm/body/orgasm_rank1_nude_1.png" ]
[chara_layer name="arina_p" part=body id=org_r1_n2 storage="animation/orgasm/body/orgasm_rank1_nude_2.png" ]
[chara_layer name="arina_p" part=body id=org_r1_u1 storage="animation/orgasm/body/orgasm_rank1_undies_1.png" ]
[chara_layer name="arina_p" part=body id=org_r1_u2 storage="animation/orgasm/body/orgasm_rank1_undies_2.png" ]
[chara_layer name="arina_p" part=body id=org_r1_np1 storage="animation/orgasm/body/orgasm_rank1_nopan_1.png" ]
[chara_layer name="arina_p" part=body id=org_r1_np2 storage="animation/orgasm/body/orgasm_rank1_nopan_2.png" ]

[chara_layer name="arina_p" part=body id=org_r2_n1 storage="animation/orgasm/body/orgasm_rank2_nude_1.png" ]
[chara_layer name="arina_p" part=body id=org_r2_n2 storage="animation/orgasm/body/orgasm_rank2_nude_2.png" ]
[chara_layer name="arina_p" part=body id=org_r2_u1 storage="animation/orgasm/body/orgasm_rank2_undies_1.png" ]
[chara_layer name="arina_p" part=body id=org_r2_u2 storage="animation/orgasm/body/orgasm_rank2_undies_2.png" ]
[chara_layer name="arina_p" part=body id=org_r2_np1 storage="animation/orgasm/body/orgasm_rank2_nopan_1.png" ]
[chara_layer name="arina_p" part=body id=org_r2_np2 storage="animation/orgasm/body/orgasm_rank2_nopan_2.png" ]

[chara_layer name="arina_p" part=body id=org_r3_n1 storage="animation/orgasm/body/orgasm_rank3_nude_1.png" ]
[chara_layer name="arina_p" part=body id=org_r3_n2 storage="animation/orgasm/body/orgasm_rank3_nude_2.png" ]
[chara_layer name="arina_p" part=body id=org_r3_u1 storage="animation/orgasm/body/orgasm_rank3_undies_1.png" ]
[chara_layer name="arina_p" part=body id=org_r3_u2 storage="animation/orgasm/body/orgasm_rank3_undies_2.png" ]
[chara_layer name="arina_p" part=body id=org_r3_np1 storage="animation/orgasm/body/orgasm_rank3_nopan_1.png" ]
[chara_layer name="arina_p" part=body id=org_r3_np2 storage="animation/orgasm/body/orgasm_rank3_nopan_2.png" ]

[chara_layer name="arina_p" part=body id=org_r3_pe_n1 storage="animation/orgasm/body/orgasm_rank3_open_pe_n_1.png" ]
[chara_layer name="arina_p" part=body id=org_r3_pe_n2 storage="animation/orgasm/body/orgasm_rank3_open_pe_n_2.png" ]
[chara_layer name="arina_p" part=body id=org_r3_pe_u1 storage="animation/orgasm/body/orgasm_rank3_open_pe_u_1.png" ]
[chara_layer name="arina_p" part=body id=org_r3_pe_u2 storage="animation/orgasm/body/orgasm_rank3_open_pe_u_2.png" ]

[chara_layer name="arina_p" part=body id=org_r3_ce_n1 storage="animation/orgasm/body/orgasm_rank3_open_ce_n_1.png" ]
[chara_layer name="arina_p" part=body id=org_r3_ce_n2 storage="animation/orgasm/body/orgasm_rank3_open_ce_n_2.png" ]
[chara_layer name="arina_p" part=body id=org_r3_ce_u1 storage="animation/orgasm/body/orgasm_rank3_open_ce_u_1.png" ]
[chara_layer name="arina_p" part=body id=org_r3_ce_u2 storage="animation/orgasm/body/orgasm_rank3_open_ce_u_2.png" ]

;赤面_プレイ中
[chara_layer name="arina_p" part=blush id=off storage="0.png" ]
[chara_layer name="arina_p" part=blush id=on storage="body/play_body/head_blush_p.png" ]

;表情_プレイ中
[chara_layer name="arina_p" part=face id=normal storage="face/play_face/face_normal_p.png" ]

[chara_layer name="arina_p" part=face id=wait1 storage="face/play_face/rank1/wait_1.png" ]
[chara_layer name="arina_p" part=face id=ps1 storage="face/play_face/rank1/pussy_show_1.png" ]
[chara_layer name="arina_p" part=face id=bs1 storage="face/play_face/rank1/boobs_show_1.png" ]
[chara_layer name="arina_p" part=face id=ce1 storage="face/play_face/rank1/coat_expose_1.png" ]
[chara_layer name="arina_p" part=face id=bk1 storage="face/play_face/rank1/boobs_knead_1.png" ]
[chara_layer name="arina_p" part=face id=mb1 storage="face/play_face/rank1/masturbation_1.png" ]
[chara_layer name="arina_p" part=face id=pe1 storage="face/play_face/rank1/pee_1.png" ]

[chara_layer name="arina_p" part=face id=wait2 storage="face/play_face/rank2/wait_2.png" ]
[chara_layer name="arina_p" part=face id=ps2 storage="face/play_face/rank2/pussy_show_2.png" ]
[chara_layer name="arina_p" part=face id=bs2 storage="face/play_face/rank2/boobs_show_2.png" ]
[chara_layer name="arina_p" part=face id=ce2 storage="face/play_face/rank2/coat_expose_2.png" ]
[chara_layer name="arina_p" part=face id=bk2 storage="face/play_face/rank2/boobs_knead_2.png" ]
[chara_layer name="arina_p" part=face id=mb2 storage="face/play_face/rank2/masturbation_2.png" ]
[chara_layer name="arina_p" part=face id=pe2 storage="face/play_face/rank2/pee_2.png" ]

[chara_layer name="arina_p" part=face id=wait3 storage="face/play_face/rank3/wait_3.png" ]
[chara_layer name="arina_p" part=face id=ps3 storage="face/play_face/rank3/pussy_show_3.png" ]
[chara_layer name="arina_p" part=face id=bs3 storage="face/play_face/rank3/boobs_show_3.png" ]
[chara_layer name="arina_p" part=face id=ce3 storage="face/play_face/rank3/coat_expose_3.png" ]
[chara_layer name="arina_p" part=face id=bk3 storage="face/play_face/rank3/boobs_knead_3.png" ]
[chara_layer name="arina_p" part=face id=mb3 storage="face/play_face/rank3/masturbation_3.png" ]
[chara_layer name="arina_p" part=face id=pe3 storage="face/play_face/rank3/pee_3.png" ]

[chara_layer name="arina_p" part=face id=none storage="0.png" ]

;まばたき
[chara_layer name="arina_p" part=eye id=0 storage="0.png" ]
[chara_layer name="arina_p" part=eye id=1 storage="face/play_face/blink_1.gif" ]
[chara_layer name="arina_p" part=eye id=2 storage="face/play_face/blink_2.gif" ]

;吐息_プレイ中
[chara_layer name="arina_p" part=breath id=off storage="0.png" ]
[chara_layer name="arina_p" part=breath id=on storage="breath/breath.gif" ]
[chara_layer name="arina_p" part=breath id=tongue storage="breath/breath_tongue.gif" ]

;落書き_プレイ中
[chara_layer name="arina_p" part=graffiti_1 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_1 id=on storage="graffiti/play_graffiti/graffiti_hentai_p.png" ]
[chara_layer name="arina_p" part=graffiti_2 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_2 id=on storage="graffiti/play_graffiti/graffiti_expose_p.png" ]
[chara_layer name="arina_p" part=graffiti_3 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_3 id=on storage="graffiti/play_graffiti/graffiti_attention_p.png" ]
[chara_layer name="arina_p" part=graffiti_4 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_4 id=on storage="graffiti/play_graffiti/graffiti_virgin_p.png" ]

[chara_layer name="arina_p" part=graffiti_5 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_5 id=on storage="graffiti/play_graffiti/graffiti_name_p.png" ]
[chara_layer name="arina_p" part=graffiti_5 id=open storage="graffiti/play_graffiti/graffiti_name_p_open.png" ]

[chara_layer name="arina_p" part=graffiti_6 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_6 id=on storage="graffiti/play_graffiti/graffiti_photo_p.png" ]
[chara_layer name="arina_p" part=graffiti_6 id=open storage="graffiti/play_graffiti/graffiti_photo_p_open.png" ]

[chara_layer name="arina_p" part=graffiti_7 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_7 id=on storage="graffiti/play_graffiti/graffiti_school_p.png" ]
[chara_layer name="arina_p" part=graffiti_7 id=open storage="graffiti/play_graffiti/graffiti_school_p_open.png" ]

[chara_layer name="arina_p" part=graffiti_8 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_8 id=on storage="graffiti/play_graffiti/graffiti_boobs_p.png" ]
[chara_layer name="arina_p" part=graffiti_9 id=off storage="0.png" ]
[chara_layer name="arina_p" part=graffiti_9 id=on storage="graffiti/play_graffiti/graffiti_pussy_p.png" ]

;落書き_絶頂
[chara_layer name="arina_p" part=graffiti_1 id=org storage="graffiti/play_graffiti/graffiti_hentai_p_org.png" ]
[chara_layer name="arina_p" part=graffiti_2 id=org storage="graffiti/play_graffiti/graffiti_expose_p_org.png" ]
[chara_layer name="arina_p" part=graffiti_3 id=org storage="graffiti/play_graffiti/graffiti_attention_p_org.png" ]
[chara_layer name="arina_p" part=graffiti_4 id=org storage="graffiti/play_graffiti/graffiti_virgin_p_org.png" ]
[chara_layer name="arina_p" part=graffiti_5 id=org storage="graffiti/play_graffiti/graffiti_name_p_org.png" ]
[chara_layer name="arina_p" part=graffiti_5 id=open_org storage="graffiti/play_graffiti/graffiti_name_p_open_org.png" ]
[chara_layer name="arina_p" part=graffiti_6 id=org storage="graffiti/play_graffiti/graffiti_photo_p_org.png" ]
[chara_layer name="arina_p" part=graffiti_6 id=open_org storage="graffiti/play_graffiti/graffiti_photo_p_open_org.png" ]
[chara_layer name="arina_p" part=graffiti_7 id=org storage="graffiti/play_graffiti/graffiti_school_p_org.png" ]
[chara_layer name="arina_p" part=graffiti_7 id=open_org storage="graffiti/play_graffiti/graffiti_school_p_open_org.png" ]
[chara_layer name="arina_p" part=graffiti_8 id=org storage="graffiti/play_graffiti/graffiti_boobs_p_org.png" ]
[chara_layer name="arina_p" part=graffiti_9 id=org storage="graffiti/play_graffiti/graffiti_pussy_p_org.png" ]

;陰毛_プレイ中
[chara_layer name="arina_p" part=public_hair id=none storage="0.png" ]
[chara_layer name="arina_p" part=public_hair id=normal storage="public_hair/play_public_hair/public_hair_normal_p.png" ]
[chara_layer name="arina_p" part=public_hair id=thick storage="public_hair/play_public_hair/public_hair_thick_p.png" ]
[chara_layer name="arina_p" part=public_hair id=normal_org storage="public_hair/play_public_hair/public_hair_normal_p_org.png" ]
[chara_layer name="arina_p" part=public_hair id=thick_org storage="public_hair/play_public_hair/public_hair_thick_p_org.png" ]

;おしっこ_プレイ中
[chara_layer name="arina_p" part=pee id=off storage="0.png" ]
[chara_layer name="arina_p" part=pee id=on storage="animation/pee/pee.gif" ]

;下着_プレイ中
[chara_layer name="arina_p" part=underwear id=none storage="0.png" ]

[chara_layer name="arina_p" part=underwear id=normal1 storage="underwear/play_underwear/normal_pink_p.png" ]
[chara_layer name="arina_p" part=underwear id=normal2 storage="underwear/play_underwear/normal_white_p.png" ]
[chara_layer name="arina_p" part=underwear id=normal3 storage="underwear/play_underwear/normal_blue_p.png" ]
[chara_layer name="arina_p" part=underwear id=normal4 storage="underwear/play_underwear/normal_navy_p.png" ]
[chara_layer name="arina_p" part=underwear id=normal5 storage="underwear/play_underwear/normal_black_p.png" ]
[chara_layer name="arina_p" part=underwear id=normal1_bs storage="underwear/play_underwear/normal_pink_bs.png" ]
[chara_layer name="arina_p" part=underwear id=normal2_bs storage="underwear/play_underwear/normal_white_bs.png" ]
[chara_layer name="arina_p" part=underwear id=normal3_bs storage="underwear/play_underwear/normal_blue_bs.png" ]
[chara_layer name="arina_p" part=underwear id=normal4_bs storage="underwear/play_underwear/normal_navy_bs.png" ]
[chara_layer name="arina_p" part=underwear id=normal5_bs storage="underwear/play_underwear/normal_black_bs.png" ]

[chara_layer name="arina_p" part=underwear id=frill1 storage="underwear/play_underwear/frill_pink_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill2 storage="underwear/play_underwear/frill_white_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill3 storage="underwear/play_underwear/frill_blue_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill4 storage="underwear/play_underwear/frill_navy_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill5 storage="underwear/play_underwear/frill_black_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill1_bs storage="underwear/play_underwear/frill_pink_bs.png" ]
[chara_layer name="arina_p" part=underwear id=frill2_bs storage="underwear/play_underwear/frill_white_bs.png" ]
[chara_layer name="arina_p" part=underwear id=frill3_bs storage="underwear/play_underwear/frill_blue_bs.png" ]
[chara_layer name="arina_p" part=underwear id=frill4_bs storage="underwear/play_underwear/frill_navy_bs.png" ]
[chara_layer name="arina_p" part=underwear id=frill5_bs storage="underwear/play_underwear/frill_black_bs.png" ]
[chara_layer name="arina_p" part=underwear id=frill1_cut storage="underwear/play_underwear/frill_pink_cut_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill2_cut storage="underwear/play_underwear/frill_white_cut_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill3_cut storage="underwear/play_underwear/frill_blue_cut_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill4_cut storage="underwear/play_underwear/frill_navy_cut_p.png" ]
[chara_layer name="arina_p" part=underwear id=frill5_cut storage="underwear/play_underwear/frill_black_cut_p.png" ]

[chara_layer name="arina_p" part=underwear id=bikini1 storage="underwear/play_underwear/bikini_pink_p.png" ]
[chara_layer name="arina_p" part=underwear id=bikini2 storage="underwear/play_underwear/bikini_white_p.png" ]
[chara_layer name="arina_p" part=underwear id=bikini3 storage="underwear/play_underwear/bikini_red_p.png" ]
[chara_layer name="arina_p" part=underwear id=bikini4 storage="underwear/play_underwear/bikini_navy_p.png" ]
[chara_layer name="arina_p" part=underwear id=bikini5 storage="underwear/play_underwear/bikini_black_p.png" ]
[chara_layer name="arina_p" part=underwear id=bikini1_bs storage="underwear/play_underwear/bikini_pink_bs.png" ]
[chara_layer name="arina_p" part=underwear id=bikini2_bs storage="underwear/play_underwear/bikini_white_bs.png" ]
[chara_layer name="arina_p" part=underwear id=bikini3_bs storage="underwear/play_underwear/bikini_red_bs.png" ]
[chara_layer name="arina_p" part=underwear id=bikini4_bs storage="underwear/play_underwear/bikini_navy_bs.png" ]
[chara_layer name="arina_p" part=underwear id=bikini5_bs storage="underwear/play_underwear/bikini_black_bs.png" ]

[chara_layer name="arina_p" part=underwear id=rope1 storage="underwear/play_underwear/rope_beige_p.png" ]
[chara_layer name="arina_p" part=underwear id=rope2 storage="underwear/play_underwear/rope_pink_p.png" ]
[chara_layer name="arina_p" part=underwear id=rope3 storage="underwear/play_underwear/rope_red_p.png" ]
[chara_layer name="arina_p" part=underwear id=rope4 storage="underwear/play_underwear/rope_blue_p.png" ]
[chara_layer name="arina_p" part=underwear id=rope5 storage="underwear/play_underwear/rope_black_p.png" ]

;下着_絶頂
[chara_layer name="arina_p" part=underwear id=org_normal1 storage="animation/orgasm/underwear/org_normal_pink.png" ]
[chara_layer name="arina_p" part=underwear id=org_normal2 storage="animation/orgasm/underwear/org_normal_white.png" ]
[chara_layer name="arina_p" part=underwear id=org_normal3 storage="animation/orgasm/underwear/org_normal_blue.png" ]
[chara_layer name="arina_p" part=underwear id=org_normal4 storage="animation/orgasm/underwear/org_normal_navy.png" ]
[chara_layer name="arina_p" part=underwear id=org_normal5 storage="animation/orgasm/underwear/org_normal_black.png" ]

[chara_layer name="arina_p" part=underwear id=org_frill1 storage="animation/orgasm/underwear/org_frill_pink.png" ]
[chara_layer name="arina_p" part=underwear id=org_frill2 storage="animation/orgasm/underwear/org_frill_white.png" ]
[chara_layer name="arina_p" part=underwear id=org_frill3 storage="animation/orgasm/underwear/org_frill_blue.png" ]
[chara_layer name="arina_p" part=underwear id=org_frill4 storage="animation/orgasm/underwear/org_frill_navy.png" ]
[chara_layer name="arina_p" part=underwear id=org_frill5 storage="animation/orgasm/underwear/org_frill_black.png" ]

[chara_layer name="arina_p" part=underwear id=org_frill1_cut storage="animation/orgasm/underwear/org_frill_pink_cut.png" ]
[chara_layer name="arina_p" part=underwear id=org_frill2_cut storage="animation/orgasm/underwear/org_frill_white_cut.png" ]
[chara_layer name="arina_p" part=underwear id=org_frill3_cut storage="animation/orgasm/underwear/org_frill_blue_cut.png" ]
[chara_layer name="arina_p" part=underwear id=org_frill4_cut storage="animation/orgasm/underwear/org_frill_navy_cut.png" ]
[chara_layer name="arina_p" part=underwear id=org_frill5_cut storage="animation/orgasm/underwear/org_frill_black_cut.png" ]

[chara_layer name="arina_p" part=underwear id=org_bikini1 storage="animation/orgasm/underwear/org_bikini_pink.png" ]
[chara_layer name="arina_p" part=underwear id=org_bikini2 storage="animation/orgasm/underwear/org_bikini_white.png" ]
[chara_layer name="arina_p" part=underwear id=org_bikini3 storage="animation/orgasm/underwear/org_bikini_red.png" ]
[chara_layer name="arina_p" part=underwear id=org_bikini4 storage="animation/orgasm/underwear/org_bikini_navy.png" ]
[chara_layer name="arina_p" part=underwear id=org_bikini5 storage="animation/orgasm/underwear/org_bikini_black.png" ]

[chara_layer name="arina_p" part=underwear id=org_rope1 storage="animation/orgasm/underwear/org_rope_beige.png" ]
[chara_layer name="arina_p" part=underwear id=org_rope2 storage="animation/orgasm/underwear/org_rope_pink.png" ]
[chara_layer name="arina_p" part=underwear id=org_rope3 storage="animation/orgasm/underwear/org_rope_red.png" ]
[chara_layer name="arina_p" part=underwear id=org_rope4 storage="animation/orgasm/underwear/org_rope_blue.png" ]
[chara_layer name="arina_p" part=underwear id=org_rope5 storage="animation/orgasm/underwear/org_rope_black.png" ]

;衣装_プレイ中
[chara_layer name="arina_p" part=socks id=on storage="costume/play_costume/socks_p.png" ]
[chara_layer name="arina_p" part=socks id=off storage="0.png" ]
[chara_layer name="arina_p" part=socks id=open storage="animation/pee/costume/open_socks.png" ]

[chara_layer name="arina_p" part=shoes id=on storage="costume/play_costume/shoes_p.png" ]
[chara_layer name="arina_p" part=shoes id=off storage="0.png" ]
[chara_layer name="arina_p" part=shoes id=open storage="animation/pee/costume/open_shoes.png" ]

[chara_layer name="arina_p" part=costume id=uniform storage="costume/play_costume/uniform_poseA_p.png" ]
[chara_layer name="arina_p" part=costume id=coat storage="costume/play_costume/coat_poseA_p.png" ]
[chara_layer name="arina_p" part=costume id=none storage="0.png" ]

;衣装_アニメーション
[chara_layer name="arina_p" part=costume id=ps1 storage="animation/pussy_show/costume/pussy_show_1_uniform.png" ]
[chara_layer name="arina_p" part=costume id=ps2 storage="animation/pussy_show/costume/pussy_show_2_uniform.png" ]
[chara_layer name="arina_p" part=costume id=ps3 storage="animation/pussy_show/costume/pussy_show_3_uniform.png" ]

[chara_layer name="arina_p" part=costume id=bs1 storage="animation/boobs_show/costume/boobs_show_1_uniform.png" ]
[chara_layer name="arina_p" part=costume id=bs2 storage="animation/boobs_show/costume/boobs_show_2_uniform.png" ]
[chara_layer name="arina_p" part=costume id=bs3 storage="animation/boobs_show/costume/boobs_show_3_uniform.png" ]
[chara_layer name="arina_p" part=costume id=bs4_n storage="animation/boobs_show/costume/boobs_show_4_nude_uniform.png" ]
[chara_layer name="arina_p" part=costume id=bs4_u storage="animation/boobs_show/costume/boobs_show_4_undies_uniform.png" ]
[chara_layer name="arina_p" part=costume id=bs5_n storage="animation/boobs_show/costume/boobs_show_5_nude_uniform.png" ]
[chara_layer name="arina_p" part=costume id=bs5_u storage="animation/boobs_show/costume/boobs_show_5_undies_uniform.png" ]

[chara_layer name="arina_p" part=costume id=bk_uni storage="animation/boobs_knead/costume/bk_uni.gif" ]
[chara_layer name="arina_p" part=costume id=bk_coat_u storage="animation/boobs_knead/costume/bk_coat_u.gif" ]
[chara_layer name="arina_p" part=costume id=bk_coat_n storage="animation/boobs_knead/costume/bk_coat_n.gif" ]

[chara_layer name="arina_p" part=costume id=bk_u storage="animation/boobs_knead/costume/bk_undies.gif" ]
[chara_layer name="arina_p" part=costume id=bk_n storage="animation/boobs_knead/costume/bk_nude.gif" ]

[chara_layer name="arina_p" part=costume id=ce1 storage="animation/coat_expose/costume/coat_expose_1_coat.png" ]
[chara_layer name="arina_p" part=costume id=ce2 storage="animation/coat_expose/costume/coat_expose_2_coat.png" ]
[chara_layer name="arina_p" part=costume id=ce3_n storage="animation/coat_expose/costume/coat_expose_3_nude_coat.png" ]
[chara_layer name="arina_p" part=costume id=ce3_u storage="animation/coat_expose/costume/coat_expose_3_undies_coat.png" ]
[chara_layer name="arina_p" part=costume id=ce4_n storage="animation/coat_expose/costume/coat_expose_4_nude_coat.png" ]
[chara_layer name="arina_p" part=costume id=ce4_u storage="animation/coat_expose/costume/coat_expose_4_undies_coat.png" ]

[chara_layer name="arina_p" part=costume id=mb_uni storage="animation/masturbation/costume/masturbation_uniform.png" ]
[chara_layer name="arina_p" part=costume id=mb_coat_n storage="animation/masturbation/costume/masturbation_coat_nude.png" ]
[chara_layer name="arina_p" part=costume id=mb_coat_u storage="animation/masturbation/costume/masturbation_coat_undies.png" ]

[chara_layer name="arina_p" part=costume id=pe_uni storage="animation/pee/costume/pee_uniform_1.png" ]
[chara_layer name="arina_p" part=costume id=pe_uni_open storage="animation/pee/costume/pee_uniform_2.png" ]
[chara_layer name="arina_p" part=costume id=pe_coat storage="animation/pee/costume/pee_coat_1.png" ]
[chara_layer name="arina_p" part=costume id=pe_coat_open storage="animation/pee/costume/pee_coat_2.png" ]

;衣装_絶頂
[chara_layer name="arina_p" part=costume id=org_ps storage="animation/orgasm/costume/uniform/orgasm_ps_uni.png" ]
[chara_layer name="arina_p" part=costume id=org_bs_n storage="animation/orgasm/costume/uniform/orgasm_bs_nude.png" ]
[chara_layer name="arina_p" part=costume id=org_bs_u storage="animation/orgasm/costume/uniform/orgasm_bs_undies.png" ]
[chara_layer name="arina_p" part=costume id=org_ce_n storage="animation/orgasm/costume/coat/orgasm_ce_nude.png" ]
[chara_layer name="arina_p" part=costume id=org_ce_u storage="animation/orgasm/costume/coat/orgasm_ce_undies.png" ]

[chara_layer name="arina_p" part=costume id=org_bk_uni1 storage="animation/orgasm/costume/uniform/orgasm_bk_uni_1.png" ]
[chara_layer name="arina_p" part=costume id=org_bk_uni2 storage="animation/orgasm/costume/uniform/orgasm_bk_uni_2.png" ]

[chara_layer name="arina_p" part=costume id=org_bk_n1 storage="animation/orgasm/costume/orgasm_bk_nude_1.png" ]
[chara_layer name="arina_p" part=costume id=org_bk_n2 storage="animation/orgasm/costume/orgasm_bk_nude_2.png" ]
[chara_layer name="arina_p" part=costume id=org_bk_u1 storage="animation/orgasm/costume/orgasm_bk_undies_1.png" ]
[chara_layer name="arina_p" part=costume id=org_bk_u2 storage="animation/orgasm/costume/orgasm_bk_undies_2.png" ]

[chara_layer name="arina_p" part=costume id=org_bk_coat_n1 storage="animation/orgasm/costume/coat/orgasm_bk_coat_n_1.png" ]
[chara_layer name="arina_p" part=costume id=org_bk_coat_n2 storage="animation/orgasm/costume/coat/orgasm_bk_coat_n_2.png" ]
[chara_layer name="arina_p" part=costume id=org_bk_coat_u1 storage="animation/orgasm/costume/coat/orgasm_bk_coat_u_1.png" ]
[chara_layer name="arina_p" part=costume id=org_bk_coat_u2 storage="animation/orgasm/costume/coat/orgasm_bk_coat_u_2.png" ]

[chara_layer name="arina_p" part=costume id=org_mb_uni storage="animation/orgasm/costume/uniform/orgasm_mb_uni.png" ]
[chara_layer name="arina_p" part=costume id=org_mb_n storage="animation/orgasm/costume/coat/orgasm_mb_nude.png" ]
[chara_layer name="arina_p" part=costume id=org_mb_u storage="animation/orgasm/costume/coat/orgasm_mb_undies.png" ]

[chara_layer name="arina_p" part=costume id=org_pe_uni storage="animation/orgasm/costume/uniform/orgasm_pe_uni_1.png" ]
[chara_layer name="arina_p" part=costume id=org_pe_uni_open storage="animation/orgasm/costume/uniform/orgasm_pe_uni_open.png" ]
[chara_layer name="arina_p" part=costume id=org_pe_coat storage="animation/orgasm/costume/coat/orgasm_pe_coat_1.png" ]
[chara_layer name="arina_p" part=costume id=org_pe_coat_open storage="animation/orgasm/costume/coat/orgasm_pe_coat_2.png" ]

[chara_layer name="arina_p" part=socks id=org storage="animation/orgasm/costume/orgasm_socks.png" ]
[chara_layer name="arina_p" part=socks id=org_open storage="animation/orgasm/costume/orgasm_socks_open.png" ]

;フリーハンド_胸元
[chara_layer name="arina_p" part=f_hand id=none storage="0.png" ]
[chara_layer name="arina_p" part=f_hand id=fh_up_n storage="animation/masturbation/free_hand/f_hand_up_nude.png" ]
[chara_layer name="arina_p" part=f_hand id=fh_up_u storage="animation/masturbation/free_hand/f_hand_up_undies.png" ]
[chara_layer name="arina_p" part=f_hand id=fh_up_uni storage="animation/masturbation/free_hand/f_hand_up_uni.png" ]
[chara_layer name="arina_p" part=f_hand id=fh_up_coat_u storage="animation/masturbation/free_hand/f_hand_up_coat.png" ]
[chara_layer name="arina_p" part=f_hand id=fh_up_coat_n storage="animation/masturbation/free_hand/f_hand_up_coat_nude.png" ]

;フリーハンド_下げ
[chara_layer name="arina_p" part=f_hand id=fh_down storage="animation/masturbation/free_hand/f_hand_down.png" ]
[chara_layer name="arina_p" part=f_hand id=fh_down_uni storage="animation/masturbation/free_hand/f_hand_down_uni.png" ]
[chara_layer name="arina_p" part=f_hand id=fh_down_coat storage="animation/masturbation/free_hand/f_hand_down_coat.png" ]

;フリーハンド_揉み
[chara_layer name="arina_p" part=f_hand id=fh_bk_n storage="animation/masturbation/free_hand/f_hand_knead_n.gif" ]
[chara_layer name="arina_p" part=f_hand id=fh_bk_u storage="animation/masturbation/free_hand/f_hand_knead_u.gif" ]
[chara_layer name="arina_p" part=f_hand id=fh_bk_uni storage="animation/masturbation/free_hand/f_hand_knead_uni.gif" ]
[chara_layer name="arina_p" part=f_hand id=fh_bk_coat_n storage="animation/masturbation/free_hand/f_hand_knead_cot_n.gif" ]
[chara_layer name="arina_p" part=f_hand id=fh_bk_coat_u storage="animation/masturbation/free_hand/f_hand_knead_cot_u.gif" ]

;フリーハンド_絶頂
[chara_layer name="arina_p" part=f_hand id=org_fh_bk_uni1 storage="animation/orgasm/free_hand/org_r3_mb_fhand_uni_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_fh_bk_uni2 storage="animation/orgasm/free_hand/org_r3_mb_fhand_uni_2.png" ]

[chara_layer name="arina_p" part=f_hand id=org_fh_bk_n1 storage="animation/orgasm/free_hand/org_fh_bk_n_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_fh_bk_n2 storage="animation/orgasm/free_hand/org_fh_bk_n_2.png" ]
[chara_layer name="arina_p" part=f_hand id=org_fh_bk_u1 storage="animation/orgasm/free_hand/org_fh_bk_u_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_fh_bk_u2 storage="animation/orgasm/free_hand/org_fh_bk_u_2.png" ]

[chara_layer name="arina_p" part=f_hand id=org_fh_mb_coat_n1 storage="animation/orgasm/free_hand/org_r3_mb_fhand_coat_n_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_fh_mb_coat_n2 storage="animation/orgasm/free_hand/org_r3_mb_fhand_coat_n_2.png" ]
[chara_layer name="arina_p" part=f_hand id=org_fh_mb_coat_u1 storage="animation/orgasm/free_hand/org_r3_mb_fhand_coat_u_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_fh_mb_coat_u2 storage="animation/orgasm/free_hand/org_r3_mb_fhand_coat_u_2.png" ]

[chara_layer name="arina_p" part=f_hand id=org_down_1 storage="animation/orgasm/free_hand/org_down_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_down_2 storage="animation/orgasm/free_hand/org_down_2.png" ]
[chara_layer name="arina_p" part=f_hand id=org_down_coat1 storage="animation/orgasm/free_hand/org_down_coat_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_down_coat2 storage="animation/orgasm/free_hand/org_down_coat_2.png" ]
[chara_layer name="arina_p" part=f_hand id=org_down_uni1 storage="animation/orgasm/free_hand/org_down_uni_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_down_uni2 storage="animation/orgasm/free_hand/org_down_uni_2.png" ]

[chara_layer name="arina_p" part=f_hand id=org_up_n1 storage="animation/orgasm/free_hand/org_fhand_r1_n_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_n2 storage="animation/orgasm/free_hand/org_fhand_r1_n_2.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_u1 storage="animation/orgasm/free_hand/org_fhand_r1_u_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_u2 storage="animation/orgasm/free_hand/org_fhand_r1_u_2.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_uni1 storage="animation/orgasm/free_hand/org_fhand_r1_uni_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_uni2 storage="animation/orgasm/free_hand/org_fhand_r1_uni_2.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_coat_n1 storage="animation/orgasm/free_hand/org_fhand_r1_coat_n_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_coat_n2 storage="animation/orgasm/free_hand/org_fhand_r1_coat_n_2.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_coat_u1 storage="animation/orgasm/free_hand/org_fhand_r1_coat_u_1.png" ]
[chara_layer name="arina_p" part=f_hand id=org_up_coat_u2 storage="animation/orgasm/free_hand/org_fhand_r1_coat_u_2.png" ]

;手_アニメーション
[chara_layer name="arina_p" part=hand id=none storage="0.png" ]
[chara_layer name="arina_p" part=hand id=uni storage="animation/masturbation/hand/uni.gif" ]
[chara_layer name="arina_p" part=hand id=coat_u storage="animation/masturbation/hand/mb_coat_undies.gif" ]
[chara_layer name="arina_p" part=hand id=coat_n storage="animation/masturbation/hand/mb_coat_nude.gif" ]
[chara_layer name="arina_p" part=hand id=undies storage="animation/masturbation/hand/mb_undies.gif" ]
[chara_layer name="arina_p" part=hand id=nude storage="animation/masturbation/hand/mb_nude.gif" ]
[chara_layer name="arina_p" part=hand id=pee storage="animation/pee/hand/pee_hand.png" ]

;手_絶頂
[chara_layer name="arina_p" part=hand id=org_mb_n1 storage="animation/orgasm/hand/org_mb_hand_n_1.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_n2 storage="animation/orgasm/hand/org_mb_hand_n_2.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_u1 storage="animation/orgasm/hand/org_mb_hand_u_1.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_u2 storage="animation/orgasm/hand/org_mb_hand_u_2.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_uni1 storage="animation/orgasm/hand/org_mb_uni_hand_1.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_uni2 storage="animation/orgasm/hand/org_mb_uni_hand_2.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_coat_n1 storage="animation/orgasm/hand/org_mb_hand_coat_n_1.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_coat_n2 storage="animation/orgasm/hand/org_mb_hand_coat_n_2.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_coat_u1 storage="animation/orgasm/hand/org_mb_hand_coat_u_1.png" ]
[chara_layer name="arina_p" part=hand id=org_mb_coat_u2 storage="animation/orgasm/hand/org_mb_hand_coat_u_2.png" ]

[chara_layer name="arina_p" part=hand id=org_pe_1 storage="animation/orgasm/hand/org_pe_hand_1.png" ]
[chara_layer name="arina_p" part=hand id=org_pe_2 storage="animation/orgasm/hand/org_pe_hand_2.png" ]

;モブ
[chara_new  name="man" storage="mob/mob_man.png"]
[chara_new  name="woman" storage="mob/mob_woman.png"]
[chara_new  name="kid_b" storage="mob/mob_kid_b.png"]
[chara_new  name="kid_g" storage="mob/mob_kid_g.png"]
[chara_new  name="police" storage="mob/mob_police.png"]

[chara_new  name="jd1" storage="mob/mob_jd1.png"]
[chara_new  name="jd2" storage="mob/mob_jd2.png"]
[chara_new  name="jk1" storage="mob/mob_jk1.png"]
[chara_new  name="jk2" storage="mob/mob_jk2.png"]

;ライフ
[chara_new name="life" storage="0.png" ]
[chara_layer name="life" part=life id=3 storage="life_3.png" ]
[chara_layer name="life" part=life id=2 storage="life_2.png" ]
[chara_layer name="life" part=life id=1 storage="life_1.png" ]
[chara_layer name="life" part=life id=0 storage="0.png" ]

;満足度ゲージ
[chara_new name="score_gauge" storage="0.png" ]
[chara_layer name="score_gauge" part=score_gauge id=0 storage="0.png" ]
[chara_layer name="score_gauge" part=score_gauge id=1 storage="score_gauge/score_1.png" ]
[chara_layer name="score_gauge" part=score_gauge id=2 storage="score_gauge/score_2.png" ]
[chara_layer name="score_gauge" part=score_gauge id=3 storage="score_gauge/score_3.png" ]
[chara_layer name="score_gauge" part=score_gauge id=4 storage="score_gauge/score_4.png" ]
[chara_layer name="score_gauge" part=score_gauge id=5 storage="score_gauge/score_5.png" ]
[chara_layer name="score_gauge" part=score_gauge id=6 storage="score_gauge/score_6.png" ]
[chara_layer name="score_gauge" part=score_gauge id=7 storage="score_gauge/score_7.png" ]
[chara_layer name="score_gauge" part=score_gauge id=8 storage="score_gauge/score_8.png" ]
[chara_layer name="score_gauge" part=score_gauge id=9 storage="score_gauge/score_9.png" ]
[chara_layer name="score_gauge" part=score_gauge id=10 storage="score_gauge/score_10.png" ]
[chara_layer name="score_gauge" part=score_gauge id=11 storage="score_gauge/score_11.png" ]
[chara_layer name="score_gauge" part=score_gauge id=12 storage="score_gauge/score_12.png" ]
[chara_layer name="score_gauge" part=score_gauge id=13 storage="score_gauge/score_13.png" ]
[chara_layer name="score_gauge" part=score_gauge id=14 storage="score_gauge/score_14.png" ]
[chara_layer name="score_gauge" part=score_gauge id=15 storage="score_gauge/score_15.png" ]
[chara_layer name="score_gauge" part=score_gauge id=16 storage="score_gauge/score_16.png" ]
[chara_layer name="score_gauge" part=score_gauge id=17 storage="score_gauge/score_17.png" ]
[chara_layer name="score_gauge" part=score_gauge id=18 storage="score_gauge/score_18.png" ]
[chara_layer name="score_gauge" part=score_gauge id=19 storage="score_gauge/score_19.png" ]
[chara_layer name="score_gauge" part=score_gauge id=20 storage="score_gauge/score_20.png" ]
[chara_layer name="score_gauge" part=score_gauge id=21 storage="score_gauge/score_21.png" ]
[chara_layer name="score_gauge" part=score_gauge id=22 storage="score_gauge/score_22.png" ]
[chara_layer name="score_gauge" part=score_gauge id=23 storage="score_gauge/score_23.png" ]
[chara_layer name="score_gauge" part=score_gauge id=24 storage="score_gauge/score_24.png" ]
[chara_layer name="score_gauge" part=score_gauge id=25 storage="score_gauge/score_25.png" ]
[chara_layer name="score_gauge" part=score_gauge id=26 storage="score_gauge/score_26.png" ]
[chara_layer name="score_gauge" part=score_gauge id=27 storage="score_gauge/score_27.png" ]
[chara_layer name="score_gauge" part=score_gauge id=28 storage="score_gauge/score_28.png" ]
[chara_layer name="score_gauge" part=score_gauge id=29 storage="score_gauge/score_29.png" ]
[chara_layer name="score_gauge" part=score_gauge id=30 storage="score_gauge/score_30.png" ]
[chara_layer name="score_gauge" part=score_gauge id=31 storage="score_gauge/score_31.png" ]
[chara_layer name="score_gauge" part=score_gauge id=32 storage="score_gauge/score_32.png" ]
[chara_layer name="score_gauge" part=score_gauge id=33 storage="score_gauge/score_33.png" ]
[chara_layer name="score_gauge" part=score_gauge id=34 storage="score_gauge/score_34.png" ]
[chara_layer name="score_gauge" part=score_gauge id=35 storage="score_gauge/score_35.png" ]
[chara_layer name="score_gauge" part=score_gauge id=36 storage="score_gauge/score_36.png" ]
[chara_layer name="score_gauge" part=score_gauge id=37 storage="score_gauge/score_37.png" ]
[chara_layer name="score_gauge" part=score_gauge id=38 storage="score_gauge/score_38.png" ]
[chara_layer name="score_gauge" part=score_gauge id=39 storage="score_gauge/score_39.png" ]
[chara_layer name="score_gauge" part=score_gauge id=40 storage="score_gauge/score_40.png" ]
[chara_layer name="score_gauge" part=score_gauge id=41 storage="score_gauge/score_41.png" ]
[chara_layer name="score_gauge" part=score_gauge id=42 storage="score_gauge/score_42.png" ]
[chara_layer name="score_gauge" part=score_gauge id=43 storage="score_gauge/score_43.png" ]
[chara_layer name="score_gauge" part=score_gauge id=44 storage="score_gauge/score_44.png" ]
[chara_layer name="score_gauge" part=score_gauge id=45 storage="score_gauge/score_45.png" ]
[chara_layer name="score_gauge" part=score_gauge id=46 storage="score_gauge/score_46.png" ]
[chara_layer name="score_gauge" part=score_gauge id=47 storage="score_gauge/score_47.png" ]
[chara_layer name="score_gauge" part=score_gauge id=48 storage="score_gauge/score_48.png" ]
[chara_layer name="score_gauge" part=score_gauge id=49 storage="score_gauge/score_49.png" ]
[chara_layer name="score_gauge" part=score_gauge id=50 storage="score_gauge/score_50.png" ]
[chara_layer name="score_gauge" part=score_gauge id=51 storage="score_gauge/score_51.png" ]
[chara_layer name="score_gauge" part=score_gauge id=52 storage="score_gauge/score_52.png" ]
[chara_layer name="score_gauge" part=score_gauge id=53 storage="score_gauge/score_53.png" ]
[chara_layer name="score_gauge" part=score_gauge id=54 storage="score_gauge/score_54.png" ]
[chara_layer name="score_gauge" part=score_gauge id=55 storage="score_gauge/score_55.png" ]
[chara_layer name="score_gauge" part=score_gauge id=56 storage="score_gauge/score_56.png" ]
[chara_layer name="score_gauge" part=score_gauge id=57 storage="score_gauge/score_57.png" ]
[chara_layer name="score_gauge" part=score_gauge id=58 storage="score_gauge/score_58.png" ]
[chara_layer name="score_gauge" part=score_gauge id=59 storage="score_gauge/score_59.png" ]
[chara_layer name="score_gauge" part=score_gauge id=60 storage="score_gauge/score_60.png" ]
[chara_layer name="score_gauge" part=score_gauge id=61 storage="score_gauge/score_61.png" ]
[chara_layer name="score_gauge" part=score_gauge id=62 storage="score_gauge/score_62.png" ]
[chara_layer name="score_gauge" part=score_gauge id=63 storage="score_gauge/score_63.png" ]
[chara_layer name="score_gauge" part=score_gauge id=64 storage="score_gauge/score_64.png" ]
[chara_layer name="score_gauge" part=score_gauge id=65 storage="score_gauge/score_65.png" ]
[chara_layer name="score_gauge" part=score_gauge id=66 storage="score_gauge/score_66.png" ]
[chara_layer name="score_gauge" part=score_gauge id=67 storage="score_gauge/score_67.png" ]
[chara_layer name="score_gauge" part=score_gauge id=68 storage="score_gauge/score_68.png" ]
[chara_layer name="score_gauge" part=score_gauge id=69 storage="score_gauge/score_69.png" ]
[chara_layer name="score_gauge" part=score_gauge id=70 storage="score_gauge/score_70.png" ]
[chara_layer name="score_gauge" part=score_gauge id=71 storage="score_gauge/score_71.png" ]
[chara_layer name="score_gauge" part=score_gauge id=72 storage="score_gauge/score_72.png" ]
[chara_layer name="score_gauge" part=score_gauge id=73 storage="score_gauge/score_73.png" ]
[chara_layer name="score_gauge" part=score_gauge id=74 storage="score_gauge/score_74.png" ]
[chara_layer name="score_gauge" part=score_gauge id=75 storage="score_gauge/score_75.png" ]
[chara_layer name="score_gauge" part=score_gauge id=76 storage="score_gauge/score_76.png" ]
[chara_layer name="score_gauge" part=score_gauge id=77 storage="score_gauge/score_77.png" ]
[chara_layer name="score_gauge" part=score_gauge id=78 storage="score_gauge/score_78.png" ]
[chara_layer name="score_gauge" part=score_gauge id=79 storage="score_gauge/score_79.png" ]
[chara_layer name="score_gauge" part=score_gauge id=80 storage="score_gauge/score_80.png" ]
[chara_layer name="score_gauge" part=score_gauge id=81 storage="score_gauge/score_81.png" ]
[chara_layer name="score_gauge" part=score_gauge id=82 storage="score_gauge/score_82.png" ]
[chara_layer name="score_gauge" part=score_gauge id=83 storage="score_gauge/score_83.png" ]
[chara_layer name="score_gauge" part=score_gauge id=84 storage="score_gauge/score_84.png" ]
[chara_layer name="score_gauge" part=score_gauge id=85 storage="score_gauge/score_85.png" ]
[chara_layer name="score_gauge" part=score_gauge id=86 storage="score_gauge/score_86.png" ]
[chara_layer name="score_gauge" part=score_gauge id=87 storage="score_gauge/score_87.png" ]
[chara_layer name="score_gauge" part=score_gauge id=88 storage="score_gauge/score_88.png" ]
[chara_layer name="score_gauge" part=score_gauge id=89 storage="score_gauge/score_89.png" ]
[chara_layer name="score_gauge" part=score_gauge id=90 storage="score_gauge/score_90.png" ]
[chara_layer name="score_gauge" part=score_gauge id=91 storage="score_gauge/score_91.png" ]
[chara_layer name="score_gauge" part=score_gauge id=92 storage="score_gauge/score_92.png" ]
[chara_layer name="score_gauge" part=score_gauge id=93 storage="score_gauge/score_93.png" ]
[chara_layer name="score_gauge" part=score_gauge id=94 storage="score_gauge/score_94.png" ]
[chara_layer name="score_gauge" part=score_gauge id=95 storage="score_gauge/score_95.png" ]
[chara_layer name="score_gauge" part=score_gauge id=96 storage="score_gauge/score_96.png" ]
[chara_layer name="score_gauge" part=score_gauge id=97 storage="score_gauge/score_97.png" ]
[chara_layer name="score_gauge" part=score_gauge id=98 storage="score_gauge/score_98.png" ]
[chara_layer name="score_gauge" part=score_gauge id=99 storage="score_gauge/score_99.png" ]
[chara_layer name="score_gauge" part=score_gauge id=100 storage="score_gauge/score_100.png" ]

;満足度（文字）
[chara_new name="manzokudo" storage="score_gauge/manzokudo.png" ]

;絶頂ゲージ
[chara_new name="orgasm_gauge" storage="0.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=0 storage="0.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=1 storage="orgasm_gauge/orgasm_1.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=2 storage="orgasm_gauge/orgasm_2.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=3 storage="orgasm_gauge/orgasm_3.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=4 storage="orgasm_gauge/orgasm_4.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=5 storage="orgasm_gauge/orgasm_5.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=6 storage="orgasm_gauge/orgasm_6.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=7 storage="orgasm_gauge/orgasm_7.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=8 storage="orgasm_gauge/orgasm_8.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=9 storage="orgasm_gauge/orgasm_9.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=10 storage="orgasm_gauge/orgasm_10.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=11 storage="orgasm_gauge/orgasm_11.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=12 storage="orgasm_gauge/orgasm_12.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=13 storage="orgasm_gauge/orgasm_13.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=14 storage="orgasm_gauge/orgasm_14.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=15 storage="orgasm_gauge/orgasm_15.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=16 storage="orgasm_gauge/orgasm_16.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=17 storage="orgasm_gauge/orgasm_17.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=18 storage="orgasm_gauge/orgasm_18.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=19 storage="orgasm_gauge/orgasm_19.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=20 storage="orgasm_gauge/orgasm_20.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=21 storage="orgasm_gauge/orgasm_21.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=22 storage="orgasm_gauge/orgasm_22.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=23 storage="orgasm_gauge/orgasm_23.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=24 storage="orgasm_gauge/orgasm_24.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=25 storage="orgasm_gauge/orgasm_25.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=26 storage="orgasm_gauge/orgasm_26.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=27 storage="orgasm_gauge/orgasm_27.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=28 storage="orgasm_gauge/orgasm_28.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=29 storage="orgasm_gauge/orgasm_29.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=30 storage="orgasm_gauge/orgasm_30.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=31 storage="orgasm_gauge/orgasm_31.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=32 storage="orgasm_gauge/orgasm_32.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=33 storage="orgasm_gauge/orgasm_33.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=34 storage="orgasm_gauge/orgasm_34.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=35 storage="orgasm_gauge/orgasm_35.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=36 storage="orgasm_gauge/orgasm_36.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=37 storage="orgasm_gauge/orgasm_37.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=38 storage="orgasm_gauge/orgasm_38.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=39 storage="orgasm_gauge/orgasm_39.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=40 storage="orgasm_gauge/orgasm_40.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=41 storage="orgasm_gauge/orgasm_41.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=42 storage="orgasm_gauge/orgasm_42.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=43 storage="orgasm_gauge/orgasm_43.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=44 storage="orgasm_gauge/orgasm_44.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=45 storage="orgasm_gauge/orgasm_45.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=46 storage="orgasm_gauge/orgasm_46.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=47 storage="orgasm_gauge/orgasm_47.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=48 storage="orgasm_gauge/orgasm_48.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=49 storage="orgasm_gauge/orgasm_49.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=50 storage="orgasm_gauge/orgasm_50.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=51 storage="orgasm_gauge/orgasm_51.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=52 storage="orgasm_gauge/orgasm_52.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=53 storage="orgasm_gauge/orgasm_53.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=54 storage="orgasm_gauge/orgasm_54.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=55 storage="orgasm_gauge/orgasm_55.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=56 storage="orgasm_gauge/orgasm_56.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=57 storage="orgasm_gauge/orgasm_57.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=58 storage="orgasm_gauge/orgasm_58.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=59 storage="orgasm_gauge/orgasm_59.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=60 storage="orgasm_gauge/orgasm_60.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=61 storage="orgasm_gauge/orgasm_61.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=62 storage="orgasm_gauge/orgasm_62.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=63 storage="orgasm_gauge/orgasm_63.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=64 storage="orgasm_gauge/orgasm_64.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=65 storage="orgasm_gauge/orgasm_65.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=66 storage="orgasm_gauge/orgasm_66.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=67 storage="orgasm_gauge/orgasm_67.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=68 storage="orgasm_gauge/orgasm_68.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=69 storage="orgasm_gauge/orgasm_69.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=70 storage="orgasm_gauge/orgasm_70.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=71 storage="orgasm_gauge/orgasm_71.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=72 storage="orgasm_gauge/orgasm_72.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=73 storage="orgasm_gauge/orgasm_73.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=74 storage="orgasm_gauge/orgasm_74.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=75 storage="orgasm_gauge/orgasm_75.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=76 storage="orgasm_gauge/orgasm_76.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=77 storage="orgasm_gauge/orgasm_77.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=78 storage="orgasm_gauge/orgasm_78.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=79 storage="orgasm_gauge/orgasm_79.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=80 storage="orgasm_gauge/orgasm_80.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=81 storage="orgasm_gauge/orgasm_81.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=82 storage="orgasm_gauge/orgasm_82.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=83 storage="orgasm_gauge/orgasm_83.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=84 storage="orgasm_gauge/orgasm_84.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=85 storage="orgasm_gauge/orgasm_85.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=86 storage="orgasm_gauge/orgasm_86.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=87 storage="orgasm_gauge/orgasm_87.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=88 storage="orgasm_gauge/orgasm_88.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=89 storage="orgasm_gauge/orgasm_89.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=90 storage="orgasm_gauge/orgasm_90.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=91 storage="orgasm_gauge/orgasm_91.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=92 storage="orgasm_gauge/orgasm_92.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=93 storage="orgasm_gauge/orgasm_93.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=94 storage="orgasm_gauge/orgasm_94.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=95 storage="orgasm_gauge/orgasm_95.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=96 storage="orgasm_gauge/orgasm_96.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=97 storage="orgasm_gauge/orgasm_97.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=98 storage="orgasm_gauge/orgasm_98.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=99 storage="orgasm_gauge/orgasm_99.png" ]
[chara_layer name="orgasm_gauge" part=orgasm_gauge id=100 storage="orgasm_gauge/orgasm_100.png" ]

;視線ゲージ
[chara_new name="look_gauge" storage="look_gauge/look_gauge_frame.png" ]
[chara_layer name="look_gauge" part=look_gauge id=0 storage="0.png" ]
[chara_layer name="look_gauge" part=look_gauge id=g1 storage="look_gauge/green_1.png" ]
[chara_layer name="look_gauge" part=look_gauge id=g2 storage="look_gauge/green_2.png" ]
[chara_layer name="look_gauge" part=look_gauge id=g3 storage="look_gauge/green_3.png" ]
[chara_layer name="look_gauge" part=look_gauge id=g4 storage="look_gauge/green_4.png" ]
[chara_layer name="look_gauge" part=look_gauge id=y1 storage="look_gauge/yellow_1.png" ]
[chara_layer name="look_gauge" part=look_gauge id=y2 storage="look_gauge/yellow_2.png" ]
[chara_layer name="look_gauge" part=look_gauge id=y3 storage="look_gauge/yellow_3.png" ]
[chara_layer name="look_gauge" part=look_gauge id=y4 storage="look_gauge/yellow_4.png" ]
[chara_layer name="look_gauge" part=look_gauge id=o1 storage="look_gauge/orange_1.png" ]
[chara_layer name="look_gauge" part=look_gauge id=o2 storage="look_gauge/orange_2.png" ]
[chara_layer name="look_gauge" part=look_gauge id=o3 storage="look_gauge/orange_3.png" ]
[chara_layer name="look_gauge" part=look_gauge id=o4 storage="look_gauge/orange_4.png" ]
[chara_layer name="look_gauge" part=look_gauge id=r1 storage="look_gauge/red_1.png" ]
[chara_layer name="look_gauge" part=look_gauge id=r2 storage="look_gauge/red_2.png" ]
[chara_layer name="look_gauge" part=look_gauge id=r3 storage="look_gauge/red_3.png" ]
[chara_layer name="look_gauge" part=look_gauge id=r4 storage="look_gauge/red_4.png" ]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;メイン画面へ移動
@jump storage="title.ks"
[s]


