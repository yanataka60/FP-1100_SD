# CASIO FP-1100にSD-Cardとのロード、セーブ機能

![FP-1100_SD](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/TITLE.jpg)

　CASIO FP-1100でCMTの代わりにSD-CARDからロード、セーブを実現するものです。

　FP-1000は所有していないので試していませんが、動作すると思います。

　SDから読み込めるCMTのファイル形式はEMUで一般的なWAV、CASには対応していません。bugfire2009さんのDumpListEditorを使ってバイナリ形式に変換したものを使います。

　機械語 -> 各モデル固有ヘッダ付きBINファイル、拡張子は.bin

　BASIC -> BASファイル、拡張子は.bas

　CMTからの読み込み実行に数分掛かっていたゲームも数十秒で実行できます。

　なお、Arduino、ROMへ書き込むための機器が別途必要となります。

## 回路図
　KiCadフォルダ内のFP-1100_SD.PDFを参照してください。

[回路図](https://github.com/yanataka60/FP-1100_SD/blob/main/Kicad/FP-1100_SD.PDF)

![FP-1100_SD](https://github.com/yanataka60/FP-1100_SD/blob/main/Kicad/FP-1100_SD_1.jpg)

## 部品
|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
||J3,J4のいずれか|||
|J3|Micro_SD_Card_Kit|1|秋月電子通商 AE-microSD-LLCNV (注1)|
|J4|MicroSD Card Adapter|1|Arduino等に使われる5V電源に対応したもの(注2)|
|U1-U3|74LS04|3||
|U4-U5|74LS02|2||
|U6-U8|74LS00|3||
|U10|8255|1||
|U11|Arduino_Pro_Mini_5V|1|Atmega328版を使用 168版は不可。(注3)|
|U12|74LS32|1||
|U13|74LS244|1||
|U14|ROM 27256又は27512|1|入手しやすい方でOK|
|C1-C10,C12,C13|積層セラミックコンデンサ 0.1uF|12||
|C11|電解コンデンサ 16v100uF|1||
|S1|3Pスライドスイッチ又はピンヘッダー3Pinとジャンパーピン|1|秋月電子通商 SS12D01G4など|

### 注1)秋月電子通商　AE-microSD-LLCNVのJ1ジャンパはショートしてください。

### 注2)MicroSD Card Adapterを使う場合

J4に取り付けます。

MicroSD Card Adapterについているピンヘッダを除去してハンダ付けするのが一番確実ですが、J2の穴にMicroSD Card Adapterをぴったりと押しつけ、裏から多めにハンダを流し込むことでハンダ付けをする方法もあります。なお、この方法の時にはしっかりハンダ付けが出来たかテスターで導通を確認しておいた方が安心です。

ハンダ付けに自信のない方はJ1の秋月電子通商　AE-microSD-LLCNVをお使いください。AE-microSD-LLCNVならパワーLED、アクセスLEDが付いています。

![MicroSD Card Adapter1](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/MicroSD%20Card%20Adapter.jpg)

### 注3)Arduino Pro MiniはA4、A5ピンも使っています。


## FP-1100_SDをスロットに入れずに外付けとして使いたい場合のみ
　J2ピンヘッダを取り付けます。また、スロットからケーブルを引き出す基板が必要ですのでFP-1100_SD基板がもう一枚必要です。

|番号|品名|数量|備考|
| ------------ | ------------ | ------------ | ------------ |
|J2|2x25Pinコネクタ|1|秋月電子通商 PH-2x40SGなど|
||FP-1100_SD基板|1||
||2.54mmピッチ2x25Pinフラットケーブル|1|FP-1100の拡張スロットは2x28Pinですが、2x25Pinが使えます|

## 取り付け
　FP-1100本体後ろのスロットに挿入します。

　STLフォルダに基板を載せられるトレイの3Dデータを置いたので出力して使うと抜き差しが楽になります。

![Tray](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/tray.jpg)

　標準はSLOT0ですが、SLOT1で使うときは起動後にSLコマンドでSLOT1を指定してください。

![SLOT0](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/SLOT0.JPG)
![SLOT1](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/SLOT1.JPG)

### FP-1100_SDをスロットに入れずに外付けとしてフラットケーブルによる接続
　J2コネクタ1Pinを示す基板上の△印にフラットケーブルの1Pinを示す△印を合わせてフラットケーブルを挿入します。

　FP-1100の拡張スロットは2x28Pinですが、2x25Pinフラットケーブルが使えます。

![Flat cable2](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/EXT_BOARD(2).JPG)
![Flat cable2](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/EXT_BOARD(3).JPG)
![Flat cable1](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/EXT_BOARD(1).JPG)

## ROMへの書込み
　Z80フォルダ内のRAMPACK1.binをROMライター(TL866II Plus等)を使って27256又は27512に書き込みます。

　実際に使用しているのは16KByte分(16Kx8)です。

## RAMPACK1.binの扱い
　RAMPACK1.binに登録されているファイルは次の4つになります。

|ファイル名|種類|
| ------------ | ------------ |
|SDF8|BASIC|
|SDE8|BASIC|
|BOOTF8|BINARY|
|NOOTE8|BINARY|

　また、RAMPACK1.binへのファイル登録はTAKEDAさんのEMU eFP-1100で行っており、fp1100.exeと同じフォルダに置くことでeFP-1100からは「PACK0:」として読み書き出来ます。

## Arduinoプログラム
　Arduino IDEを使ってArduinoフォルダのFP-1100_SDフォルダ内FP-1100_SD.inoを書き込みます。

　SdFatライブラリを使用しているのでArduino IDEメニューのライブラリの管理からライブラリマネージャを立ち上げて「SdFat」をインストールしてください。

　「SdFat」で検索すれば見つかります。「SdFat」と「SdFat - Adafruit Fork」が見つかりますが「SdFat」のほうを使っています。

注)Arduinoを基板に直付けしている場合、Arduinoプログラムを書き込むときは、FP-1100本体とは接続を外し、U3 74LS04を外したうえで書き込んでください。


## SD-CARD
　出来れば8GB以下のSDカードを用意してください。

　ArduinoのSdFatライブラリは、SD規格(最大2GB)、SDHC規格(2GB～32GB)に対応していますが、SDXC規格(32GB～2TB)には対応していません。

　また、SDHC規格のSDカードであっても32GB、16GBは相性により動作しないものがあるようです。

　FAT16又はFAT32が認識できます。NTFSは認識できません。

## 操作方法
　起動直後に「RUN"PACK0:SDF8"」を実行してSDアクセスルーチンの読込、初期化の実行を行います。

　SDアクセスルーチンをF800h～FFE9hに読み込む「SDF8」とE800h～EFE9hに読み込む「SDE8」の２種類を用意していますのでどちらか好きなほうを使います。

　「SDE8」を使うときは、「RUN"PACK0:SDF8"」を実行します。

　F800h以降に機械語を読み込みたい以外は「SDF8」を使うことを想定しています。

　SDアクセスメニューを表示するにはCALL&HF800(CALL&HE800)を実行しますが、F7ファンクションキーに登録してありますのでF7ファンクションキーを押しても大丈夫です。

#### 扱えるファイル
bugfire2009さんのDumpListEditorを使ってバイナリ形式に変換したものを使います。

##### 機械語 -> 「BINファイル書出し(各モデル固有ヘッダ付き)」で保存、拡張子は.bin

![DumpListEditor1](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/DumpListEditor2.jpg)

##### BASIC -> 「BASファイル書出し」で保存、拡張子は.bas

![DumpListEditor2](https://github.com/yanataka60/FP-1100_SD/blob/main/JPEG/DumpListEditor1.jpg)

### コマンド
#### SD[RETURN]又はSD 文字列[RETURN]
　文字列を入力せずにSD[RETURN]のみ入力するとSD-CARDルートディレクトリにあるファイルの一覧を表示します。

　文字列を付けて入力すればSD-CARDルートディレクトリにあるその文字列から始まるファイルの一覧を表示します。
　10件表示したところで指示待ちになるのでESCキーで終了、Bキー又はBSキーで前の10件に戻ります。それ以外のキーで次の10件を表示します。

　LOADしたいファイルを見つけたら左端の数字のキーを押せばLOADされます。

　BASICプログラムか、機械語プログラムかは自動で判断します。

　また、機械語プログラムをLOADする場合、自信を上書きしてしまうと正常にLOAD出来なくなってしまいます。次の三段階を意識して操作してください。

　1)～F9A9h:SM,SB,SLコマンドが使用できなくなります。LM,LG,LB,SD,G,Q,Bコマンドは使用できます。

　2)～FDE4h:G,Q,Bのみ使えます。SD,LMコマンドでLOADした後、Gコマンドでの実行は可能です。

　3)～FF64h:すべてのコマンドが使えません。LGコマンドでLOAD後実行番地から即実行のみ動作します。

　表示される順番は、登録順となりファイル名アルファベッド順などのソートした順で表示することはできません。

##### 例)
　　SD[RETURN]

　　SD S[RETURN]

　　SD SP[RETURN]

#### LM DOSファイル名[RETURN]
　指定したDOSフィル名の機械語プログラムをSD-CARDからLOADします。

　拡張子が「bin」であるファイルだけが対象でファイル名の最後が「.BIN」でない場合には自動的に付加されます。
　読み込める機械語プログラムの範囲はF7FFhまでとなります。F000h～FFFFhへ機械語プログラムをLOADしたいときは「SDE8」を使用します。

　また、機械語プログラムをLOADする場合、自信を上書きしてしまうと正常にLOAD出来なくなってしまいます。次の三段階を意識して操作してください。

　1)～F9A9h:SM,SB,SLコマンドが使用できなくなります。LM,LG,LB,SD,G,Q,Bコマンドは使用できます。

　2)～FDE4h:G,Q,Bのみ使えます。SD,LMコマンドでLOADした後、Gコマンドでの実行は可能です。

　3)～FF64h:すべてのコマンドが使えません。LGコマンドでLOAD後実行番地から即実行のみ動作します。

##### 例)
　　LM TEST[RETURN] -> DOSファイル名「TEST.BIN」を読み込みます。

　　LM TEST.BIN[RETURN] -> DOSファイル名「TEST.BIN」を読み込みます。

　　LM TEST.BAS[RETURN] -> DOSファイル名「TEST.BAS.BIN」を読み込みます。

#### LG DOSファイル名[RETURN]
　指定したDOSフィル名の機械語プログラムをSD-CARDからLOADした後、実行開始アドレスへジャンプします。

　LOAD後そのまま実行するのでFF64hまでLOADしても大丈夫です。

　LOADした後、実行開始アドレスへジャンプする以外はLMコマンドと同じです。

#### LB DOSファイル名[RETURN]
　現在選択しているPROGエリアに指定したDOSフィル名のBASICプログラムをSD-CARDからLOADします。

　LOADするPROGエリアを切り替えたい場合にはSDメニューに入る前に切り替えておいてください。

　拡張子が「bas」であるファイルだけが対象でファイル名の最後が「.BAS」でない場合には自動的に付加されます。

##### 例)
　　LB TEST[RETURN] -> DOSファイル名「TEST.BAS」を読み込みます。

　　LB TEST.BAS[RETURN] -> DOSファイル名「TEST.BAS」を読み込みます。

　　LB TEST.BIN[RETURN] -> DOSファイル名「TEST.BIN.BAS」を読み込みます。

#### SM XXXX,YYYY,ZZZZ,DOSファイル名[RETURN]　(XXXX,YYYY,ZZZZは16進数4桁を表す文字列)
　XXXX番地からYYYY番地までの機械語プログラムを実行番地ZZZZとして指定したDOSフィル名でSD-CARDにSAVEします。

　拡張子の指定「.bin」は省略することが出来、ファイル名の最後が「.BIN」でない場合には自動的に付加されます。

##### 例)
　　SM B000,BFFF,B000,TEST[RETURN] -> B000h～BFFFhまでを実行番地B000hとしてDOSファイル名「TEST.BIN」でSAVEします。

　　SM B000,BFFF,B000,TEST.BIN[RETURN] -> B000h～BFFFhまでを実行番地B000hとしてDOSファイル名「TEST.BIN」でSAVEします。

　　SM B000,BFFF,B000,TEST.BAS[RETURN] -> B000h～BFFFhまでを実行番地B000hとしてDOSファイル名「TEST.BAS.BIN」でSAVEします。

#### SB DOSファイル名[RETURN]
　現在選択しているPROGエリアのBASICプログラムを指定したDOSフィル名でSD-CARDにSAVEします。

　SAVEするPROGエリアを切り替えたい場合にはSDメニューに入る前に切り替えておいてください。

　拡張子の指定「.bas」は省略することが出来、ファイル名の最後が「.BAS」でない場合には自動的に付加されます。

##### 例)
　　SB TEST[RETURN] -> DOSファイル名「TEST.BAS」でSAVEします。

　　SB TEST.BAS[RETURN] -> DOSファイル名「TEST.BAS」でSAVEします。

　　SB TEST.BIN[RETURN] -> DOSファイル名「TEST.BIN.BAS」でSAVEします。

#### G[RETURN]又はG 16進数4桁[RETURN]
　Gだけの場合は、直前にLOADした機械語プログラムの実行番地へジャンプします。

　16進数4桁を指定した場合は16進数4桁が表すアドレスにジャンプします。

　Gの後ろに空白があっても無くても構いません。

#### SL[RETURN]
　入力待ちになるので0又は1キーでSLOT番号を入力します。0,1以外を入力した場合は再度入力待ちになります。

　FP-1100_SD初期化直後はSLOT0になっていますのでFP-1100_SDをSLOT1に挿入して使う場合には切り替えてください。

#### B[RETURN]又はQ[RETURN]
　BASICに復帰します。

## 操作上の注意
　電源を入れたままSD-CARDの抜き差しをする場合又は「SD-CARD INITIALIZE ERROR」と表示されたときは、SD-CARDを挿入後、SD、LM、LBコマンド等でSD-CARDに3回ほどアクセスすれば復旧します。

　SD-CARDの抜き差しは電源を切った状態で行うほうがより確実です。

## 謝辞
　基板の作成に当たり以下のデータを使わせていただきました。ありがとうございました。

　Arduino Pro Mini

　　https://github.com/g200kg/kicad-lib-arduino

　AE-microSD-LLCNV

　　https://github.com/kuninet/PC-8001-SD-8kRAM

　FP-1100の資料を提供いただいたPro Nyan@Nyan4Pro様、ありがとうございました。
