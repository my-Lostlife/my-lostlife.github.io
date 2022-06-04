
const electron = require('electron');
const app = electron.app;
const BrowserWindow = electron.BrowserWindow;

let mainWindow = null;
app.on('ready', () => {
  
  let fs = require('fs');
  let path = __dirname + '/package.json';
  let map_package = JSON.parse(fs.readFileSync(path));
  let map_window = map_package["window"];
  console.log(map_package);
  console.log(map_window);

  let width = parseInt(map_window["width"]);
  let height = parseInt(map_window["height"]);
  let resize = map_window["resize"];

  //windows微調整
  if (process.platform == "win32") {

    if(resize==false){
      height = height + 20;
    }
  }

  // mainWindowを作成（windowの大きさや、Kioskモードにするかどうかなどもここで定義できる）
  mainWindow = new BrowserWindow({
    "width": width, 
    "height": height,
    "resizable":resize,
    "useContentSize": true,
    "show":false,
    webPreferences: {
      nodeIntegration: true
    }
  });

  // 判定用ユーザーエージェント追加
  mainWindow.webContents.setUserAgent(mainWindow.webContents.getUserAgent() + " TyranoErectron");
  // Electronに表示するhtmlを絶対パスで指定（相対パスだと動かない）
  mainWindow.loadURL('file://' + __dirname + '/index.html');

  // ChromiumのDevツールを開く
  // mainWindow.webContents.openDevTools();
  
  
  if (map_window["devtools"] == true) {
    mainWindow.webContents.openDevTools();
  }

  mainWindow.on("ready-to-show", () => {

    //メニューの調整
    const Menu = require('electron').Menu;
          
    if (process.platform == "win32") {
    	
      mainWindow.removeMenu();
    
      mainWindow.minimize(); // 最小化
      mainWindow.restore(); // 最大化
    
    } else {
      
      const templateMenu = [
        {
          label: 'ファイル',
          submenu: [
            {
              label: '終了',
              role: 'close',
            },
          ]
        }
      ];

      let menu = Menu.buildFromTemplate(templateMenu);
      Menu.setApplicationMenu(menu);
    }
    
    mainWindow.show();

  });

//  mainWindow.removeMenu();
//  mainWindow.setMenu(null);

  mainWindow.on('closed', function() {
    mainWindow = null;
  });
  
});

/*
var log = require('electron-log');

process.on('uncaughtException', function(err) {
  log.error('electron:event:uncaughtException');
  log.error(err);
  log.error(err.stack);
  app.quit();
});

*/

