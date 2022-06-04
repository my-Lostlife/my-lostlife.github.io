;=========================================
; コンフィグ モード　画面作成
;=========================================

;	メッセージレイヤ0を不可視に
	[layopt layer="message0" visible="false"]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの無効化
	[stop_keyconfig]

;	レイヤーモードの解放
	[free_layermode time="100" wait="true"]

;	カメラのリセット
	[reset_camera time="100" wait="true"]
	
;	前景レイヤの中身をすべて空に
	[iscript]
	$(".layer_camera").empty();
	$("#bgmovie").remove();
	[endscript]

;	メニューボタン非表示
	[hidemenubutton]

	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に

	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume); // BGM音量
	//tf.current_se_vol = parseInt(TG.config.defaultSeVolume); // SE音量
	//tf.current_vo_vol = parseInt(TG.config.defaultVoVolume); // VO音量

	
	//効果音の初期値
	if(typeof sf.current_se_vol!="undefined"){
		tf.current_se_vol = sf.current_se_vol;
	}else{
		tf.current_se_vol = 100;
	}

	//ボイスの初期値
	if(typeof sf.current_vo_vol!="undefined"){
		tf.current_vo_vol = sf.current_vo_vol;
	}else{
		tf.current_vo_vol=100;
	}
	

	tf.user_setting = TG.config.alreadyReadTextColor;
	if(tf.user_setting != 'default'){
		TG.config.alreadyReadTextColor = 'default'; // 一時的に既読テキストの文字色を変更しないようにしています
	}

	[endscript]

	[iscript]

	/* 画像類のパス */
	tf.img_path = '../image/config/';

	/* 画像類のパス（ボタン） */
	tf.btn_path_off = tf.img_path + 'c_btn.gif';
	tf.btn_path_on  = tf.img_path + 'c_set.png';

	// ボタン画像の幅と高さ
	tf.btn_w  = 26; // 幅
	tf.btn_h = 25; // 高さ

	// ボタンを表示する座標（tf.config_y_ch[0]とtf.config_y_auto[0]は未使用）
	tf.config_x       = [827, 359,　398, 438, 477, 516, 555, 595, 634, 675, 714]; // X座標（共通）

	tf.config_y_bgm   = 222; // BGMのY座標
	tf.config_y_se    = 305; // SEのY座標
	tf.config_y_vo    = 384; // VOのY座標

	// 上記の配列変数の添字を格納しておく変数。選択した音量や速度に対応。
	tf.config_num_bgm;  // BGM
	tf.config_num_se;   // SE
	tf.config_num_vo;   // VO

	// テキスト速度のサンプルテキストとして表示する文字列（お好みに合わせて変更してください）
	tf.text_sample = 'テストメッセージです。このスピードでテキストが表示されます。';

	// サンプルテキストを表示しておく時間（テキストを表示し終わってから700ミリ秒で消去させています）
	tf.text_sample_speed;

	// 既読スキップの画像ファイル名を格納しておく変数
	tf.img_unread_skip;

	[endscript]

[cm]

;	コンフィグ用の背景を読み込んでトランジション
	[bg storage="&tf.img_path +'bg_config.png'" time="100"]

;	画面右上の「Back」ボタン
	[button fix="true" graphic="&tf.img_path + 'c_btn_back.png'" target="*backtitle" x="800" y="20"]

[jump target="*config_page"]


*config_page
;------------------------------------------------------------------------------------------------------
; BGM音量
;------------------------------------------------------------------------------------------------------
	[button name="bgmvol,bgmvol_10"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[1]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  10; tf.config_num_bgm =  1"]
	[button name="bgmvol,bgmvol_20"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[2]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  20; tf.config_num_bgm =  2"]
	[button name="bgmvol,bgmvol_30"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[3]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  30; tf.config_num_bgm =  3"]
	[button name="bgmvol,bgmvol_40"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[4]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  40; tf.config_num_bgm =  4"]
	[button name="bgmvol,bgmvol_50"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[5]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  50; tf.config_num_bgm =  5"]
	[button name="bgmvol,bgmvol_60"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[6]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  60; tf.config_num_bgm =  6"]
	[button name="bgmvol,bgmvol_70"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[7]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  70; tf.config_num_bgm =  7"]
	[button name="bgmvol,bgmvol_80"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[8]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  80; tf.config_num_bgm =  8"]
	[button name="bgmvol,bgmvol_90"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[9]"  y="&tf.config_y_bgm" exp="tf.current_bgm_vol =  90; tf.config_num_bgm =  9"]
	[button name="bgmvol,bgmvol_100" fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[10]" y="&tf.config_y_bgm" exp="tf.current_bgm_vol = 100; tf.config_num_bgm = 10"]

;	BGMミュート
	[button name="bgmvol,bgmvol_0"   fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[0]" y="&tf.config_y_bgm" exp="tf.current_bgm_vol = 0; tf.config_num_bgm = 0"]

;------------------------------------------------------------------------------------------------------
; SE音量
;------------------------------------------------------------------------------------------------------
	[button name="sevol,sevol_10"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[1]"  y="&tf.config_y_se" exp="tf.current_se_vol =  10; tf.config_num_se =  1"]
	[button name="sevol,sevol_20"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[2]"  y="&tf.config_y_se" exp="tf.current_se_vol =  20; tf.config_num_se =  2"]
	[button name="sevol,sevol_30"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[3]"  y="&tf.config_y_se" exp="tf.current_se_vol =  30; tf.config_num_se =  3"]
	[button name="sevol,sevol_40"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[4]"  y="&tf.config_y_se" exp="tf.current_se_vol =  40; tf.config_num_se =  4"]
	[button name="sevol,sevol_50"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[5]"  y="&tf.config_y_se" exp="tf.current_se_vol =  50; tf.config_num_se =  5"]
	[button name="sevol,sevol_60"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[6]"  y="&tf.config_y_se" exp="tf.current_se_vol =  60; tf.config_num_se =  6"]
	[button name="sevol,sevol_70"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[7]"  y="&tf.config_y_se" exp="tf.current_se_vol =  70; tf.config_num_se =  7"]
	[button name="sevol,sevol_80"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[8]"  y="&tf.config_y_se" exp="tf.current_se_vol =  80; tf.config_num_se =  8"]
	[button name="sevol,sevol_90"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[9]"  y="&tf.config_y_se" exp="tf.current_se_vol =  90; tf.config_num_se =  9"]
	[button name="sevol,sevol_100" fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[10]" y="&tf.config_y_se" exp="tf.current_se_vol = 100; tf.config_num_se = 10"]

;	SEミュート
	[button name="sevol,sevol_0"   fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[0]" y="&tf.config_y_se" exp="tf.current_se_vol = 0; tf.config_num_se = 0"]

;------------------------------------------------------------------------------------------------------
; VO音量
;------------------------------------------------------------------------------------------------------
	[button name="vovol,vovol_10"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[1]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  10; tf.config_num_vo =  1"]
	[button name="vovol,vovol_20"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[2]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  20; tf.config_num_vo =  2"]
	[button name="vovol,vovol_30"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[3]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  30; tf.config_num_vo =  3"]
	[button name="vovol,vovol_40"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[4]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  40; tf.config_num_vo =  4"]
	[button name="vovol,vovol_50"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[5]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  50; tf.config_num_vo =  5"]
	[button name="vovol,vovol_60"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[6]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  60; tf.config_num_vo =  6"]
	[button name="vovol,vovol_70"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[7]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  70; tf.config_num_vo =  7"]
	[button name="vovol,vovol_80"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[8]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  80; tf.config_num_vo =  8"]
	[button name="vovol,vovol_90"  fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[9]"  y="&tf.config_y_vo" exp="tf.current_vo_vol =  90; tf.config_num_vo =  9"]
	[button name="vovol,vovol_100" fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[10]" y="&tf.config_y_vo" exp="tf.current_vo_vol = 100; tf.config_num_vo = 10"]

;	VOミュート
	[button name="vovol,vovol_0"   fix="true" target="*vol_vo_change" graphic="&tf.btn_path_off" width="&tf.btn_w" height="&tf.btn_h" x="&tf.config_x[0]" y="&tf.config_y_vo" exp="tf.current_vo_vol = 0; tf.config_num_vo = 0"]

;--------------------------------------------------------------------------------
; 露出狂ランク
;--------------------------------------------------------------------------------
[if exp="f.complete == true"]
	[button name="expose_rank1"  fix="true" target="*expose_rank_change1" graphic="&tf.btn_path_off" width="115" height="55" x="368"  y="480" exp="f.expose_rank = 1"]
	[button name="expose_rank2"  fix="true" target="*expose_rank_change2" graphic="&tf.btn_path_off" width="115" height="55" x="512"  y="480" exp="f.expose_rank = 2"]
	[button name="expose_rank3"  fix="true" target="*expose_rank_change3" graphic="&tf.btn_path_off" width="115" height="55" x="659"  y="480" exp="f.expose_rank = 3"]
[else]
	[image name="rank_hide" layer=0 storage="&tf.img_path + 'rank_hide.png'"]
[endif]

;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------

	[iscript]

	$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/image/config/c_set.png");

	$(".sevol_"+tf.current_se_vol).attr("src","data/image/config/c_set.png");

	$(".vovol_"+tf.current_vo_vol).attr("src","data/image/config/c_set.png");

	if(f.expose_rank == 1){
		$(".expose_rank1").attr("src","./data/image/config/mark_rank1.png");
		}
	else if(f.expose_rank == 2){
		$(".expose_rank2").attr("src","./data/image/config/mark_rank2.png");
	}else if(f.expose_rank == 3){
		$(".expose_rank3").attr("src","./data/image/config/mark_rank3.png");
		}
	[endscript]

[s]

;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*backtitle
[cm]

	[iscript]
	TG.config.alreadyReadTextColor = tf.user_setting; // 既読テキストの文字色を復帰
	[endscript]

;	テキスト速度のサンプル表示に使用していたメッセージレイヤを非表示に
	[layopt layer="message1" visible="false"]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの有効化
	[start_keyconfig]

;	コールスタックのクリア
	[clearstack]

;	ゲーム復帰
;	[awakegame]

;メイン画面を更新しないと露出狂ランクが反映されないため以下の記述（本来は上記のawakegameで戻す）
	[jump storage="main.ks"]


;================================================================================

; ボタンクリック時の処理

;================================================================================
;--------------------------------------------------------------------------------
; BGM音量
;--------------------------------------------------------------------------------
*vol_bgm_change

[iscript]
	$(".bgmvol").attr("src","data/image/config/c_btn.png");
	$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/image/config/c_set.png");
[endscript]

[bgmopt volume="&tf.current_bgm_vol"]

[return]

;--------------------------------------------------------------------------------
; SE音量
;--------------------------------------------------------------------------------
*vol_se_change

[iscript]
	$(".sevol").attr("src","data/image/config/c_btn.png");
	$(".sevol_"+tf.current_se_vol).attr("src","data/image/config/c_set.png");
	sf.current_se_vol = tf.current_se_vol;
[endscript]

[seopt buf=1 volume="&tf.current_se_vol"]

[return]

;--------------------------------------------------------------------------------
; VO音量
;--------------------------------------------------------------------------------
*vol_vo_change

[iscript]
	$(".vovol").attr("src","data/image/config/c_btn.png");
	$(".vovol_"+tf.current_vo_vol).attr("src","data/image/config/c_set.png");
	sf.current_vo_vol = tf.current_vo_vol;
[endscript]

[seopt buf=2 volume="&tf.current_vo_vol"]

[return]

;--------------------------------------------------------------------------------
; 露出狂ランク
;--------------------------------------------------------------------------------
*expose_rank_change1

	[iscript]
	$(".expose_rank2").attr("src","./data/image/config/c_btn.gif");
	$(".expose_rank3").attr("src","./data/image/config/c_btn.gif");
	$(".expose_rank1").attr("src","./data/image/config/mark_rank1.png");
	tf.text_skip = "OFF";
	[endscript]
	
	[eval exp="f.expose_rank = 1"]

[return]

*expose_rank_change2

	[iscript]
	$(".expose_rank1").attr("src","./data/image/config/c_btn.gif");
	$(".expose_rank3").attr("src","./data/image/config/c_btn.gif");
	$(".expose_rank2").attr("src","./data/image/config/mark_rank2.png");
	tf.text_skip = "OFF";
	[endscript]
	
	[eval exp="f.expose_rank = 2"]

[return]

*expose_rank_change3

	[iscript]
	$(".expose_rank1").attr("src","./data/image/config/c_btn.gif");
	$(".expose_rank2").attr("src","./data/image/config/c_btn.gif");
	$(".expose_rank3").attr("src","./data/image/config/mark_rank3.png");
	tf.text_skip = "OFF";
	[endscript]
	
	[eval exp="f.expose_rank = 3"]

[return]

;================================================================================

; サブルーチン

;================================================================================
;--------------------------------------------------------------------------------

; BGM更新

;--------------------------------------------------------------------------------
*icon_bgm

	[iscript]

	// 設定した音量によって色付き画像の表示・非表示を切替える

	$( ".bgm_img_0").css( "visibility", tf.config_num_bgm == 0 ? 'visible' : 'hidden' );
	$( ".bgm_img_1").css( "visibility", tf.config_num_bgm >  0 ? 'visible' : 'hidden' );
	$( ".bgm_img_2").css( "visibility", tf.config_num_bgm >  1 ? 'visible' : 'hidden' );
	$( ".bgm_img_3").css( "visibility", tf.config_num_bgm >  2 ? 'visible' : 'hidden' );
	$( ".bgm_img_4").css( "visibility", tf.config_num_bgm >  3 ? 'visible' : 'hidden' );
	$( ".bgm_img_5").css( "visibility", tf.config_num_bgm >  4 ? 'visible' : 'hidden' );
	$( ".bgm_img_6").css( "visibility", tf.config_num_bgm >  5 ? 'visible' : 'hidden' );
	$( ".bgm_img_7").css( "visibility", tf.config_num_bgm >  6 ? 'visible' : 'hidden' );
	$( ".bgm_img_8").css( "visibility", tf.config_num_bgm >  7 ? 'visible' : 'hidden' );
	$( ".bgm_img_9").css( "visibility", tf.config_num_bgm >  8 ? 'visible' : 'hidden' );
	$(".bgm_img_10").css( "visibility", tf.config_num_bgm >  9 ? 'visible' : 'hidden' );

	[endscript]

[return]

;--------------------------------------------------------------------------------

; SE更新

;--------------------------------------------------------------------------------
*icon_se

	[iscript]

	$(".se_img_0").css( "visibility", tf.config_num_se == 0 ? 'visible' : 'hidden');
	$(".se_img_1").css( "visibility", tf.config_num_se >  0 ? 'visible' : 'hidden');
	$(".se_img_2").css( "visibility", tf.config_num_se >  1 ? 'visible' : 'hidden');
	$(".se_img_3").css( "visibility", tf.config_num_se >  2 ? 'visible' : 'hidden');
	$(".se_img_4").css( "visibility", tf.config_num_se >  3 ? 'visible' : 'hidden');
	$(".se_img_5").css( "visibility", tf.config_num_se >  4 ? 'visible' : 'hidden');
	$(".se_img_6").css( "visibility", tf.config_num_se >  5 ? 'visible' : 'hidden');
	$(".se_img_7").css( "visibility", tf.config_num_se >  6 ? 'visible' : 'hidden');
	$(".se_img_8").css( "visibility", tf.config_num_se >  7 ? 'visible' : 'hidden');
	$(".se_img_9").css( "visibility", tf.config_num_se >  8 ? 'visible' : 'hidden');
	$(".se_img_10").css("visibility", tf.config_num_se >  9 ? 'visible' : 'hidden');

	[endscript]

[return]

;--------------------------------------------------------------------------------

; VO更新

;--------------------------------------------------------------------------------
*icon_vo

	[iscript]

	$(".vo_img_0").css( "visibility", tf.config_num_vo == 0 ? 'visible' : 'hidden');
	$(".vo_img_1").css( "visibility", tf.config_num_vo >  0 ? 'visible' : 'hidden');
	$(".vo_img_2").css( "visibility", tf.config_num_vo >  1 ? 'visible' : 'hidden');
	$(".vo_img_3").css( "visibility", tf.config_num_vo >  2 ? 'visible' : 'hidden');
	$(".vo_img_4").css( "visibility", tf.config_num_vo >  3 ? 'visible' : 'hidden');
	$(".vo_img_5").css( "visibility", tf.config_num_vo >  4 ? 'visible' : 'hidden');
	$(".vo_img_6").css( "visibility", tf.config_num_vo >  5 ? 'visible' : 'hidden');
	$(".vo_img_7").css( "visibility", tf.config_num_vo >  6 ? 'visible' : 'hidden');
	$(".vo_img_8").css( "visibility", tf.config_num_vo >  7 ? 'visible' : 'hidden');
	$(".vo_img_9").css( "visibility", tf.config_num_vo >  8 ? 'visible' : 'hidden');
	$(".vo_img_10").css("visibility", tf.config_num_vo >  9 ? 'visible' : 'hidden');

	[endscript]

[return]

;================================================================================

; 画像の読み込み（コンフィグ画面の起動時のみコール）

;================================================================================
*load_img

	[layopt layer="0" visible="true"]

;	BGM
	[image layer="0" name="bgm_img_0"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[0]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_1"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[1]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_2"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[2]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_3"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[3]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_4"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[4]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_5"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[5]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_6"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[6]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_7"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[7]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_8"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[8]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_9"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[9]"  y="&tf.config_y_bgm"]
	[image layer="0" name="bgm_img_10" storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[10]" y="&tf.config_y_bgm"]

;	SE
	[image layer="0" name="se_img_0"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[0]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_1"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[1]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_2"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[2]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_3"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[3]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_4"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[4]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_5"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[5]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_6"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[6]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_7"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[7]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_8"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[8]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_9"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[9]"  y="&tf.config_y_se"]
	[image layer="0" name="se_img_10" storage="&tf.img_path + 'set2.png'" x="&tf.config_x[10]" y="&tf.config_y_se"]

;	VO
	[image layer="0" name="vo_img_0"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[0]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_1"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[1]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_2"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[2]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_3"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[3]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_4"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[4]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_5"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[5]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_6"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[6]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_7"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[7]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_8"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[8]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_9"  storage="&tf.img_path + 'set3.png'" x="&tf.config_x[9]"  y="&tf.config_y_vo"]
	[image layer="0" name="vo_img_10" storage="&tf.img_path + 'set3.png'" x="&tf.config_x[10]" y="&tf.config_y_vo"]

[return]
