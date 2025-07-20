;2025/7/11	条件付きアセンブルを導入
;			SDコマンド時、SDコマンドでF9A9hを超えて機械語プログラムをLOADした時の挙動にバグがあったので修正。
;			FDDAhを超えるLOADの場合は強制的に実行番地へジャンプすることに修正。
;2025/7/13	BASICプログラムLOAD時のAREA OVERエラー表示のバグを修正。
;2025/7/20	しょうもない記述を発見、バグではないので他のバグが見つかった時にまとめて修正します。

SDF8        EQU		1			;1=ORG F800H,0=ORG E800H
KRNGC		EQU		0703H		;キー入力バッファクリア,クリアしてからGETRGを実行することでキースキャンを実現できる
GETRG		EQU		070FH		;キー入力バッファからデータを取り出す A <- DATA Z=0:データあり,1:なし
PRCRT		EQU		074FH		;1文字表示 A<-DATA,コントロールコード動作
CTPRN		EQU		0753H		;1文字表示 A<-DATA,コントロール文字を表示
XCSR		EQU		07A4H		;カーソル移動 9FD7H<-X座標,9FD8H<-Y座標
XMTON		EQU		0A73H		;CMTのリモートスイッチON
XMTOFF		EQU		0A78H		;CMTのリモートスイッチをOFF
XMTMD		EQU		0A91H		;CMTのボーレートを指定 A<-00:1200,01:300
XMTSY		EQU		0A9AH		;CMTにREAD動作の開始を指示する
XMTRD		EQU		0AA2H		;CMTから1Byte読み取る B<-DATA,C<-状態
XMTWR		EQU		0AB5H		;CMTに1Byte出力 A<-DATA
XMTFF		EQU		0AE0H		;CMT関連 12bitのALL1を出力?
STR2HEX		EQU		103BH		;(DE)からの4文字を16進数4桁にしてHLへ,ERRORでBASICに復帰
PR2HEX		EQU		1079H		;Aレジスタの内容を16進数2桁で表示
KINPUT		EQU		10CBH		;1文字入力(WAIT)
NEWCMD		EQU		280CH		;NEW処理
PRINT		EQU		3722H		;1文字出力
CRLF		EQU		374EH		;CRLF出力
STRPRN		EQU		1D28H		;文字列表示 DE <- 先頭アドレス 終端は00H
PROGPNT		EQU		9DC7H		;9DC7H～9DE5HまでPROGポインタ
;                                 (PROGPNT+0:PROG番号,PROGPNT+1:BASICテキスト開始アドレス)x10個分
;                                 使っていないPROGポインタの先頭にはFFhを書き込み
BASICST		EQU		9DE6H		;BASICテキスト開始番地
BASICEND	EQU		9DEAH		;BASICテキスト最終番地+1
NOWPROG		EQU		9E06H		;現在PROG番号
TEXTEND		EQU		9E68H		;BASICテキストエリア最終番地+1

;0605H～067BH RS-232C関連
;0605H
;0629H
;0636H
;064EH

CPUSEL		EQU		0FFA0H
IOSEL		EQU		0FF00H

PPI_A		EQU		0E000H
PPI_B		EQU		PPI_A+1
PPI_C		EQU		PPI_A+2
PPI_R		EQU		PPI_A+3

;0E000H PORTA 送信データ(下位4ビット)
;0E001H PORTB 受信データ(8ビット)
;
;0E002H PORTC Bit
;7 IN  CHK
;6 IN
;5 IN
;4 IN 
;3 OUT
;2 OUT FLG
;1 OUT
;0 OUT
;
;0E003H コントロールレジスタ


#if SDF8 == 1
		ORG		0F800H
#else
		ORG		0E800H
#endif

START:	JP		ST4
ST2:	JP		BCALL
ST3:	JP		INIT1

;*********** SMコマンド(機械語プログラムのSAVE) ******************************
MSAVE:
		INC		HL
		CALL	STFN			;SPACE読み飛ばし
		EX		DE,HL
		CALL	STR2HEX			;セーブ開始アドレス変換
		LD		(WRKST),HL
		INC		DE
		CALL	STR2HEX			;セーブ終了アドレス変換
		LD		(WRKNX),HL
		INC		DE
		CALL	STR2HEX			;実行開始アドレス変換
		LD		(WRKEX),HL
		INC		DE
		PUSH	DE
		
		LD		HL,(WRKST)		;セーブ終了がセーブ開始より大きくなければエラー
		LD		DE,(WRKNX)
		XOR		A
		SBC		HL,DE
		POP		HL
		LD		A,0E2H			;ERRMSG
		JP		NC,ERR

		LD		A,13H			;LOADコマンド13H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,ERR

		PUSH	HL
		CALL	STFS			;ファイルネーム送信
		POP		HL
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		LD		DE,MSG_MS		;Savingメッセージ
		CALL	STRPRN
		EX		DE,HL
		CALL	STRPRN			;ファイルネーム表示
		CALL	CRLF
		LD		A,(WRKNX)		;セーブ終了アドレス送信:ファイル長はArduino側で計算
		CALL	SNDBYTE
		LD		A,(WRKNX+1)
		CALL	SNDBYTE
		LD		A,(WRKST)		;セーブ開始アドレス送信
		CALL	SNDBYTE
		LD		A,(WRKST+1)
		CALL	SNDBYTE
		LD		A,(WRKEX)		;実行開始アドレス送信
		CALL	SNDBYTE
		LD		A,(WRKEX+1)
		CALL	SNDBYTE
		
		LD		HL,(WRKST)		;セーブ開始アドレス
		LD		DE,(WRKNX)		;セーブ終了アドレス
MS1:	LD		A,(HL)
		CALL	SNDBYTE
		LD		A,L
		CALL	PRTDOT
		XOR		A
		PUSH	HL
		SBC		HL,DE
		POP		HL
		JR		Z,MS2
		INC		HL
		JR		MS1				;セーブ終了アドレスまでループ
		
MS2:	CALL	CRLF
		JP		CMD0

;************* SBコマンド(BASICプログラムのSAVE) **************************
BSAVE:
		INC		HL
		LD		A,14H			;LOADコマンド14H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,ERR

		CALL	STFN			;SPACE読み飛ばし
		PUSH	HL
		CALL	STFS			;ファイルネーム送信
		POP		HL
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		LD		DE,MSG_BS		;Loadingメッセージ
		CALL	STRPRN
		EX		DE,HL
		CALL	STRPRN			;ファイルネーム表示
		CALL	CRLF

		LD		A,(NOWPROG)		;B <- 現在PROG番号
		LD		B,A
		
		LD		HL,PROGPNT		;現在PROG番号と一致するPROGポインタを検索
BS0:	LD		A,(HL)
		CP		B
		JR		Z,BS1
		CP		0FFH			;現在PROG番号と一致せずにFFHが出現する場合はBASICプログラム無し
		JR		Z,BSERR
		INC		HL
		INC		HL
		INC		HL
		JR		BS0
BS1:
		INC		HL
		LD		A,(HL)			;一致したPROGポインタから開始アドレスを取得
		LD		(WRKST),A
		INC		HL
		LD		A,(HL)
		LD		(WRKST+1),A
		INC		HL
		LD		A,(HL)
		CP		0FFH			;次のPROGが無し、BASICENDから終了アドレスを取得
		JR		Z,BS2
		INC		HL
		LD		A,(HL)			;次のPROG有り、次のPROG開始アドレスを終了アドレスとして取得
		LD		(WRKNX),A
		INC		HL
		LD		A,(HL)
		LD		(WRKNX+1),A
		JR		BS3
BS2:	LD		A,(BASICEND)	;BASICENDを終了アドレスとして取得
		LD		(WRKNX),A
		LD		A,(BASICEND+1)
		LD		(WRKNX+1),A
BS3:	LD		HL,(WRKNX)
		LD		DE,(WRKST)		;ファイル長を計算してDEへ
		XOR		A
		SBC		HL,DE

		LD		A,L				;ファイル長送信:L
		CALL	SNDBYTE
		LD		A,H				;ファイル長送信:H
		CALL	SNDBYTE
		
		EX		DE,HL
		LD		HL,(WRKST)		;開始アドレス:HL、ファイル長:DE
		
BS4:	
		LD		A,(HL)			;実データ送信
		CALL	SNDBYTE
		INC		HL
		DEC		DE
		LD		A,E
		CALL	PRTDOT
		LD		A,E
		OR		D
		JR		NZ,BS4

		CALL	CRLF
		JP		CMD0

BSERR:
		LD		A,0E1H			;BASIC PROGRAM無しエラーを表示
		JP		ERR

;*********** SLコマンド(SLOT切り替え) ****************
SLOT:
		LD		DE,MSG_SLT		;SLOT 0 or 1
		CALL	STRPRN
		LD		HL,SDON+1
SLT1:	CALL	KINPUT			;1文字入力
		CP		'0'
		JR		NZ,SLT2
		LD		(HL),00H		;(SDON+1) <- 00H
		CALL	INIT
		JP		CMD0
SLT2:	CP		'1'
		JR		NZ,SLT3
		LD		(HL),01H		;(SDON+1) <- 01H
		CALL	INIT			;初期化再実行
		JP		CMD0
SLT3:	JR		SLT1			;0,1以外なら再入力

;*************** FP-1100_SD初期化 *************************
INIT1:
		LD		DE,MSG_INIT
		CALL	STRPRN
		
;**** SLOT SELECT ****
INIT:
SDON:	LD		A,00H			;SLOT0を選択
		LD		BC,0FFA0H
		AND		01H
		OR		02H
		OUT		(C),A

;**** 8255初期化 ****
;PORTC下位BITをOUTPUT、上位BITをINPUT、PORTBをINPUT、PORTAをOUTPUT
		LD		A,8AH
		LD		BC,PPI_R
		OUT		(C),A
;出力BITをリセット
INIT2:	LD		A,00H			;PORTA <- 0
		LD		BC,PPI_A
		OUT		(C),A
		LD		BC,PPI_C
		OUT		(C),A			;PORTC <- 0
		RET

MSG_INIT:
		DB		'FP-1100_SD Initialize Ok!',0DH,0AH,00H
TITLE:	DB		'******** FP-1100_SD ********',0DH,0AH,00H

;******************* ここから以降を上書きしなければLM,LB,SD等プログラムのLOADは使用可能(F9AA)
;***************** LBコマンド(BASICプログラムのLOAD) **************************
; 現在PROGをNEW処理した後に新たに未使用PROGポインタを使用してLOAD
BLOAD:
		INC		HL
		LD		A,18H			;LOADコマンド18H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,ERR

		CALL	STFN			;SPACE読み飛ばし
		PUSH	HL
		CALL	STFS			;ファイルネーム送信
		POP		HL
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		LD		DE,MSG_BL		;Loadingメッセージ
		CALL	STRPRN
		EX		DE,HL
		CALL	STRPRN			;ファイルネーム表示
		CALL	CRLF

		CALL	NEWCMD			;NEW処理
		CALL	RCVBYTE			;ファイル長受信
		LD		E,A
		CALL	RCVBYTE
		LD		D,A
		
		LD		HL,(BASICEND)	;BASICプログラムがRAMENDを超えないかチェック
		ADD		HL,DE
		LD		BC,(TEXTEND)
		XOR		A
		SBC		HL,BC
		JR		NC,BLERR		;超えるようであれば処理打ち切り
		LD		HL,(BASICEND)
		XOR		A
		CALL	SNDBYTE			;処理継続指示

BL2:	
		CALL	RCVBYTE			;データ受信
		LD		(HL),A
		INC		HL
		DEC		DE
		LD		A,E
		CALL	PRTDOT
		LD		A,E
		OR		D
		JR		NZ,BL2			;ファイル長分をループ
		CALL	CRLF
		XOR		A
		LD		(HL),A			;最後にENDマーク書き込み
		
		PUSH	HL
		LD		DE,PROGPNT		;未使用PROGポインタを検索
BL0:	LD		A,(DE)
		CP		0FFH
		JR		Z,BL1
		INC		DE
		INC		DE
		INC		DE
		JR		BL0
BL1:	LD		HL,NOWPROG		;未使用PROGポインタに現在PROG番号を設定
		LD		A,(HL)
		LD		(DE),A
		LD		HL,BASICEND		;現在PROGの先頭アドレスをセット
		LD		A,(HL)
		INC		DE
		LD		(DE),A
		INC		HL
		INC		DE
		LD		A,(HL)
		LD		(DE),A
		INC		DE
		LD		A,0FFH			;次のPROGポインタに未使用フラグをセット
		LD		(DE),A
		POP		HL
		
		LD		(BASICEND),HL	;BASICテキスト最終アドレス+1をセット
		LD		(BASICEND+2),HL
		LD		(BASICEND+4),HL
		LD		(BASICEND+6),HL
		LD		(BASICEND+8),HL
		
BL3:	JP		CMD0

BLERR:
		LD		A,0E0H			;AREA OVERエラーを表示
		PUSH	AF
		CALL	SNDBYTE
		POP		AF
		JP		ERR

;************* BASIC中からの機械語ロード *****************
;                     CALL &HF803:REM filenameと記述する
BCALL:
		CALL	GETCP
		LD		HL,(WRKCP)		;現在実行BASICプログラムの注目ポイントを取得
		INC		HL				;REM文をスキップ
		INC		HL
		INC		HL				;REM文の後ろに書かれているfilenameの先頭アドレスを取得
		LD		A,17H			;LOADコマンド17H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		CALL	STFN			;SPACE読み飛ばし
		PUSH	HL
		CALL	STFS			;ファイルネーム送信
		POP		HL
		AND		A				;00以外ならERROR
		JP		NZ,ERR
		JP		ML4

;************ SDコマンド(SD DIRECTORY LIST) **********************
SDIR:
		INC		HL
		LD		A,(HL)
		CP		0DH				;0DHならファイル名無し
		JR		Z,SDIR1
		CALL	STFN			;SPACE読み飛ばし
SDIR1:
		EX		DE,HL
		CALL	DIRLIST				;DIRLIST本体をコール
		JR		Z,SDIR2				;00ならHLにセットされているファイル名でBS MONITOR LTコマンドを実行
		PUSH	AF
		CALL	RCVBYTE				;拡張子判定読み飛ばし
		POP		AF
		CP		01H					;01なら通常リターン
		CALL	NZ,ERR				;00,01以外ならERROR
		JP		CMD0

SDIR2:
		DEC		HL
		CALL	RCVBYTE				;選択ファイルの拡張子受信:0,BIN 1,BAS 2,FPT 3,その他
		CP		00H
		JP		Z,MLOAD				;BINならMLOADへ
		CP		01H
		JP		Z,BLOAD				;BASならBLOADへ
		LD		A,0E3H
		CALL	PR2HEX
		JP		ERR					;以外はERROR

;**** DIRLIST本体  ****
;****              戻り値 A=エラーコード ****
DIRLIST:
		LD		A,11H				;DIRLISTコマンド11Hを送信
		CALL	STCD				;コマンドコード送信
		AND		A					;00以外ならERROR
		JP		NZ,DLRET
		
		PUSH	BC
		LD		B,21H				;ファイルネーム検索文字列33文字分を送信
STLT1:	LD		A,(DE)
		CALL	SNDBYTE				;ファイルネーム検索文字列を送信
		INC		DE
STLT4:	DJNZ	STLT1
		POP		BC
		CALL	RCVBYTE				;状態取得(00H=OK)
		AND		A					;00以外ならERROR
		JR		NZ,DLRET

DL1:	LD		HL,BUFF
DL2:	CALL	RCVBYTE				;'00H'を受信するまでを一行とする
		AND		A
		JR		Z,DL3
		CP		0FFH				;'0FFH'を受信したら終了
		JR		Z,DL4
		CP		0FDH				;'0FDH'受信で選択した文字列をファイルネームとして取得して終了
		JR		Z,DL9
		CP		0FEH				;'0FEH'を受信したら一時停止して一文字入力待ち
		JR		Z,DL5
		LD		(HL),A
		INC		HL
		JR		DL2
DL3:	LD		(HL),00H
		LD		DE,BUFF				;'00H'を受信したら一行分を表示して改行
		CALL	STRPRN
DL33:
		CALL	CRLF				;改行
		JR		DL1
DL4:
		CALL	RCVBYTE				;状態取得(00H=OK)
		LD		A,01H
		AND		A					;00以外ならERROR
		JR		DLRET

DL9:	CALL	CRLF				;改行
		
		LD		HL,BUFF				;選択したファイルネームを再度取得
DL91:	CALL	RCVBYTE
		LD		(HL),A
		CP		00H
		INC		HL
		JR		NZ,DL91

		LD		DE,BUFF				;取得したファイルネームを表示
		CALL	STRPRN
		CALL	CRLF
		CALL	RCVBYTE				;状態取得読み飛ばし
		CALL	RCVBYTE				;状態取得(00H=OK)

		LD		HL,BUFF				;取得したファイルネーム
		AND		A					;00以外ならERROR
		JR		DLRET

DL5:
		LD		DE,MSG_KEY1			;HIT ANT KEY表示
		CALL	STRPRN
DL6:
		CALL	KINPUT
		CP		1BH					;ESCで打ち切り
		JR		Z,DL7
		CP		30H					;数字0～9ならそのままArduinoへ送信してSETL処理へ
		JR		C,DL61
		CP		3AH
		JR		C,DL8
DL61:
		CP		42H					;「B」で前ページ
		JR		Z,DL8
		CP		08H
		JR		NZ,DL62
		LD		A,42H
		JR		DL8
DL62:	XOR		A					;それ以外で継続
		JR		DL8
DL7:	LD		A,0FFH				;0FFH中断コードを送信
DL8:	CALL	SNDBYTE
		JR		DL1
		
DLRET:	RET

ERR:
ERR_E0:
		CP		0E0H
		JR		NZ,ERR_E1
		LD		DE,MSG_E0
		JR		ERRMSG
ERR_E1:	CP		0E1H
		JR		NZ,ERR_E2
		LD		DE,MSG_E1
		JR		ERRMSG
ERR_E2:	CP		0E2H
		JR		NZ,ERR_E3
		LD		DE,MSG_E2
		JR		ERRMSG
ERR_E3:	CP		0E3H
		JR		NZ,ERR_F1
		LD		DE,MSG_E3
		JR		ERRMSG
ERR_F1:	CP		0F1H
		JR		NZ,ERR_F0
		LD		DE,MSG_F1
		JR		ERRMSG
ERR_F0:	CP		0F0H
		JR		NZ,ERR99
		LD		DE,MSG_F0
		JR		ERRMSG
ERR99:	CALL	PR2HEX
		LD		A,':'
		CALL	PRINT
		LD		DE,MSG_FF
ERRMSG:	CALL	STRPRN
		CALL	CRLF
		JP		CMD0

;************** 行参照ポインタを取得(BASIC中からの機械語ロード用) *************************
GETCP:	LD		(WRKSP),SP
		LD		HL,(WRKSP)
		INC		HL
		INC		HL
		INC		HL
		INC		HL
		LD		(WRKSP),HL
		LD		A,(HL)
		LD		(WRKCP),A
		INC		HL
		LD		A,(HL)
		LD		(WRKCP+1),A
		
		RET

;**** ファイルネーム送信(IN:HL ファイルネームの先頭) ******
STFS:	LD		B,20H
STFS1:	LD		A,(HL)   	 	;FNAME送信
		CALL	SNDBYTE
		INC		HL
		DJNZ	STFS1
		LD		A,0DH
		CALL	SNDBYTE
		CALL	RCVBYTE  	 	;状態取得(00H=OK)
		RET

MSG_CMD:
		DB		'COMMAND FAILED!',0DH,0AH
		DB		' LM str: Load Binary',0DH,0AH
		DB		' LG str: Load Binary And Exe',0DH,0AH
		DB		' LB str: Load Basic',0DH,0AH
		DB		' SM xxxx,yyyy,zzzz,str: Save Binary',0DH,0AH
		DB		' SB str: Save Basic',0DH,0AH
		DB		' SD str: SD Dir',0DH,0AH
		DB		' SL    : SLOT Change',0DH,0AH
		DB		' G x   : Exe Program',0DH,0AH
		DB		' Q or B: Return Basic',0DH,0AH,00H
MSG_ML:	DB		'Binary Loading:',00H
MSG_MS:	DB		'Binary Saving:',00H
MSG_BL:	DB		'Basic Program Loading:',00H
MSG_BS:	DB		'Basic Program Saving:',00H
MSG_KEY1:
		DB		'SEL:0-9 NEXT:ANY BACK:B or BS BREAK:ESC',0DH,0AH,00H
MSG_EXE:DB		'LOAD Only(0),LOAD And Execute(1)?',0DH,0AH,00H
MSG_SLT:DB		'SLOT(0),(1)?',0DH,0AH,00H
MSG_E0:	DB		'Basic Program Text Erea Over!',0DH,0AH,00H
MSG_E1:	DB		'Basic Program Nothing!',0DH,0AH,00H
MSG_E2:	DB		'Save Area Error!',0DH,0AH,00H
MSG_E3:	DB		'Not Load This EXT File!',0DH,0AH,00H
MSG_F0:	DB		'SD-CARD Initialize Error!',00H
MSG_F1:	DB		'Not Find Filename Error!',00H
MSG_FF:	DB		'Error',00H

WRKST:	DS		2
WRKNX:	DS		2
WRKSP:	DS		2
WRKCP:	DS		2

;**** コマンド送信 (IN:A コマンドコード)****
STCD:	CALL	SNDBYTE			;Aレジスタのコマンドコードを送信
		CALL	RCVBYTE			;状態取得(00H=OK)
		RET

;******************* ここから以降を上書きしなければLOAD後にGコマンドで実行可能(FDE4)
;******* コマンド入力 *******************:
ST4:	CALL	GETCP
;		CALL	INIT			;SLOT0を選択,8255初期化
		LD		DE,TITLE
		CALL	STRPRN
CMD0:	CALL	LINPUT
		LD		HL,BUFF
		LD		A,(HL)
		INC		HL
		CP		'L'
		JR		NZ,CMD1
		LD		A,(HL)
		CP		'M'				;LMコマンド
		JP		Z,MLOAD
		CP		'B'				;LBコマンド
		JP		Z,BLOAD
		CP		'G'				;LGコマンド
		JP		Z,MEXE
		JR		CMD9
CMD1:	CP		'S'
		JR		NZ,CMD9
		LD		A,(HL)
		CP		'M'				;SMコマンド
		JP		Z,MSAVE
		CP		'B'				;SBコマンド
		JP		Z,BSAVE
		CP		'D'				;SDコマンド
		JP		Z,SDIR
		CP		'L'				;SLコマンド
		JP		Z,SLOT
		JR		CMDERR
CMD9:	CP		'Q'				;Qコマンド
		RET		Z
		CP		'B'				;Bコマンド
		RET		Z
		CP		'G'				;Gコマンド
		JP		Z,EXECUTE
CMDERR:	LD		DE,MSG_CMD		;コマンドエラーMSG
		CALL	STRPRN
		JR		CMD0

;******** 1行入力ルーチン ***********************
;              BS,カーソル右キーによる文字訂正のみ有効
LINPUT:
		LD		DE,PRMPT
		CALL	STRPRN
		LD		HL,BUFF
LI2:	CALL	KINPUT			;1文字入力
		PUSH	AF
		CALL	PRINT			;入力文字表示
		POP		AF
		CP		0DH				;改行なら終了
		JR		Z,LEND
		CP		1DH				;カーソル左処理
		JR		NZ,LI4
LI3:	DEC		HL
		LD		A,' '			;カーソル位置の文字を空白に置き換え
		CALL	PRINT
		LD		A,1DH			;もう一回カーソル左
		CALL	PRINT
		JR		LI2
LI4:	CP		08H				;BS処理
		JR		NZ,LI5
		JR		LI3				;カーソル左と同様に処理
LI5:	CP		20H				;コントロール文字ならBUFFに書き込まない
		JR		C,LI2
		CALL	LICHK
		LD		(HL),A
		INC		HL
		JR		LI2
LEND:	XOR		A				;0DHを00Hに置き換えて終了
		CALL	LICHK
		LD		(HL),A
		RET
LICHK:	EX		DE,HL			;カーソル左、BS処理でBUFF先頭を超えては戻らないようにチェック
		LD		HL,BUFF
		SBC		HL,DE
		JR		C,LICHK1
		LD		DE,BUFF
LICHK1:	EX		DE,HL
		RET

PRMPT:	DB		'>',00H
BUFF:	DS		80

;****** FILE NAMEが取得できるまでスペースを読み飛ばし (IN:HL コマンド文字の次の文字 OUT:HL ファイルネームの先頭)*********
STFN:	PUSH	AF
STFN1:	LD		A,(HL)
		CP		20H
		JR		NZ,STFN3
		INC		HL				;ファイルネームまでスペース読み飛ばし
		JR		STFN1
STFN3:	POP		AF
		RET

;*********** Gコマンド(16進数4桁のアドレスへJUMP) ***********************
EXECUTE:
		CALL	STFN			;SPACE読み飛ばし
		LD		A,(HL)			;アドレス指定がなかったらWRKEXの示すアドレスで実行
		AND		A
		JR		NZ,EXE1
		LD		A,(WRKEX)		;LD	HL,(WRKEX)でいいのになぜ?、ほかに修正があった時に直します。
		LD		L,A
		LD		A,(WRKEX+1)
		LD		H,A
		JP		(HL)
EXE1:	EX		DE,HL
		CALL	STR2HEX			;HL <- (DE)からの文字列を16進数4桁
		JP		(HL)

;********* 機械語ロード本体 ********************************
ML1:
		INC		HL
		LD		A,17H			;LOADコマンド17H
		CALL	STCD			;コマンドコード送信
		AND		A				;00以外ならERROR
		RET		NZ
		CALL	STFN			;SPACE読み飛ばし
		PUSH	HL
		CALL	STFS			;ファイルネーム送信
		POP		HL
		AND		A				;00以外ならERROR
		RET		NZ
ML4:	LD		DE,MSG_ML		;Loadingメッセージ
		CALL	STRPRN
		EX		DE,HL
		CALL	STRPRN			;ファイルネーム表示
		CALL	CRLF

		CALL	RCVBYTE			;ファイル長受信
		LD		E,A
		CALL	RCVBYTE
		LD		D,A
		
		LD		A,'('
		CALL	PRINT
		CALL	RCVBYTE			;開始アドレス受信
		LD		L,A
		CALL	RCVBYTE
		LD		H,A
		LD		A,H
		CALL	PR2HEX
		LD		A,L
		CALL	PR2HEX
		PUSH	HL
		ADD		HL,DE
		DEC		HL
		LD		A,','
		CALL	PRINT
		LD		A,H
		CALL	PR2HEX
		LD		A,L
		CALL	PR2HEX
		POP		HL
		LD		A,','
		CALL	PRINT
		CALL	RCVBYTE			;EXECUTEアドレス受信
		LD		(WRKEX),A
		CALL	RCVBYTE
		LD		(WRKEX+1),A
		CALL	PR2HEX
		LD		A,(WRKEX)
		CALL	PR2HEX

		LD		A,')'
		CALL	PRINT
		CALL	CRLF

;******************* ここから以降を上書きしなければLGコマンドでロード実行可能(FF64)
ML2:	
		CALL	RCVBYTE			;データ受信
		LD		(HL),A
		INC		HL
		DEC		DE
		LD		A,E
		CALL	PRTDOT
		LD		A,E
		OR		D
		JR		NZ,ML2			;ファイル長分をループ
		CALL	CRLF
		XOR		A
		RET

;*********** LMコマンド(機械語プログラムのLOAD) ***********************
MLOAD:
		CALL	ML1
		AND		A
		JP		NZ,ERR

#if	SDF8 == 1
		LD		DE,ST4			;SDF8限定:LOAD最終番地(HL)がST4(DE)より大きければ
								;         CMD0に戻っても無意味なので実行番地から実行
		XOR 	A
		SBC		HL,DE
		JR		C,ML5
		JR		ML6
#endif
ML5:	JP		CMD0

;********** LGコマンド(機械語プログラムのLOAD、実行番地へのJUMP) ****************
MEXE:
		CALL	ML1
		AND		A
		JP		NZ,ERR
ML6:	LD		HL,(WRKEX)
		JP		(HL)

WRKEX:	DS		2

;************* SAVE、LOAD 進行状況用DOT表示 **********************
PRTDOT:	AND		A
		JR		NZ,PD1
		LD		A,'.'
		CALL	PRINT
PD1:	RET

;**** 1BYTE受信 ****
;受信DATAをAレジスタにセットしてリターン
RCVBYTE:
		CALL	F1CHK			;PORTC BIT7が1になるまでLOOP
		LD		BC,PPI_B
		IN		A,(C)			;PORTB -> A
		PUSH 	AF
		LD		A,05H
		LD		BC,PPI_R
		OUT		(C),A			;PORTC BIT2 <- 1
		CALL	F2CHK			;PORTC BIT7が0になるまでLOOP
		LD		A,04H
		LD		BC,PPI_R
		OUT		(C),A			;PORTC BIT2 <- 0
		POP 	AF
		RET

;**** 1BYTE送信 ****
;Aレジスタの内容をPORTA下位4BITに4BITずつ送信
SNDBYTE:
		PUSH	BC
		PUSH	AF
		RRA
		RRA
		RRA
		RRA
		AND		0FH
		CALL	SND4BIT
		POP		AF
		AND		0FH
		CALL	SND4BIT
		POP		BC
		RET

;**** 4BIT送信 ****
;Aレジスタ下位4ビットを送信する
SND4BIT:
		LD		BC,PPI_A
		OUT		(C),A
		LD		A,05H
		LD		BC,PPI_R
		OUT		(C),A			;PORTC BIT2 <- 1
		CALL	F1CHK			;PORTC BIT7が1になるまでLOOP
		LD		A,04H
		LD		BC,PPI_R
		OUT		(C),A			;PORTC BIT2 <- 0
		CALL	F2CHK
		RET

;**** BUSYをCHECK(0) ****
; E002H BIT7が0になるまでLOOP
F2CHK:	LD		BC,PPI_C
		IN		A,(C)
		AND		80H				;PORTC BIT7 = 0?
		JR		NZ,F2CHK
		RET

;**** BUSYをCHECK(1) ****
; E002H BIT7が1になるまでLOP
F1CHK:	LD		BC,PPI_C
		IN		A,(C)
		AND		80H				;PORTC BIT7 = 1?
		JR		Z,F1CHK
		RET

		END
