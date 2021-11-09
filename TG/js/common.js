var config = {
    rootUrl:window.location.protocol+"//"+window.location.host+(window.location.port==""?"":":"+window.location.port),
     
};

var browser = {
	versions:function(){
		var u = navigator.userAgent, app = navigator.appVersion;
		return {
			trident: u.indexOf('Trident') > -1, //IE内核
			presto: u.indexOf('Presto') > -1, //opera内核
			webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
			gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1,//火狐内核
			mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
			ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
			android: u.indexOf('Android') > -1 || u.indexOf('Adr') > -1, //android终端
            iPhone: u.indexOf('iPhone') > -1 , //是否为iPhone或者QQHD浏览器
            windows: u.indexOf('Windows') > -1 , //是否为Windows浏览器
			iPad: u.indexOf('iPad') > -1 || u.indexOf('Macintosh') > -1, //是否iPad
			webApp: u.indexOf('Safari') == -1, //是否web应该程序，没有头部与底部
			weixin: u.indexOf('MicroMessenger') > -1, //是否微信 （2015-01-22新增）
			qq: u.match(/\sQQ/i) == " qq" //是否QQ
		};
	}(),
	language:(navigator.browserLanguage || navigator.language).toLowerCase(),
	query :""
}

browser.query = window.location.href.split("?")[1];
browser.query = (browser.query == undefined ? "" : "?" + browser.query);

ShareTrace.init("a5a4bd8236340b9b");
function install(btn1,btn2,btn3){
    
            var initInstallBtn = function(btn){
                var button = document.getElementById(btn);
                if(null!=button){
                    button.style.visibility = "visible";
                    button.onclick = function() {
                        ShareTrace.download();
                        return false;
                    }
                }
            }
            initInstallBtn(btn1);
            initInstallBtn(btn2);
            initInstallBtn(btn3);
    
}
