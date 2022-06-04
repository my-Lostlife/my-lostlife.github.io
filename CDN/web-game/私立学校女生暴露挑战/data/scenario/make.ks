;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;
;ボイスを反映させるための処理。
[seopt buf=1 volume="&sf.current_se_vol" effect=true]
[seopt buf=2 volume="&sf.current_vo_vol" effect=true]

;make.ks はロード時にcallとして呼ばれるため、return必須です。
[return]

