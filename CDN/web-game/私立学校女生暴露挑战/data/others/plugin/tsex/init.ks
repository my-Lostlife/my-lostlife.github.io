[if exp="$.isElectron() && !window.__tsex"]

    [loadjs storage="plugin/tsex/main.js"]
    [iscript]
    window.__tsex.hotkey = mp.hotkey !== undefined ? mp.hotkey : window.__tsex.hotkey
    window.__tsex.swithkey = mp.swithkey !== undefined ? mp.swithkey : window.__tsex.swithkey
    var back = parseInt(mp.back)
    if(isNaN(back) == false){
        window.__tsex._save_slot = back
    }else{
        window.__tsex._save_slot = window.__tsex._save_slot
    }
    [endscript]


[endif]

;ブラウザでも動かす処理
[iscript]
if(mp.error == "true"){
    //エラー出力
    $(window).on("error", function(e){
        TYRANO.kag.ftag.startTag("mask", {
            color: "rgba(0,0,0,0.7)",
            time: 10,
        })
        let msg = $("<div></div>")
        msg.html(e.originalEvent.error.stack)
        msg.css({
            color: "white",
            "font-size": "24px",
            width: TYRANO.kag.config.scWidth,
            height: TYRANO.kag.config.scHeight,
        })
        $(".layer_mask").append(msg)
    })
}
[endscript]
[return]
[s]

*go
[jump storage="&tf.storage" target="&tf.target"]
[s]