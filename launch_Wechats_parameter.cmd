@echo off
REM Windows微信多开脚本


REM 解决汉字乱码
chcp 65001 > nul


REM 启动微信的数量
set num=3

REM 微信exe的安装全路径：将路径放在""(双引号)中
REM @set wechat="D:\installed_softs\WeChat\WeChat.exe"
set wechat="D:\installed_softs\WeChat\WeChat.exe"

REM echo %wechat%
if [%wechat%] == [] (
	echo 没有指定微信应用程序的路径
	goto theEnd
) 


if [""] == [%wechat%] (
	echo 微信应用程序的路径为空
	goto theEnd
) 

(
	echo "launch"
	for /L %%j in ( 1, 1, %num% ) do (
		start  "%%j" %wechat%
	)
	
	exit 0	
)


:theEnd
pause

REM start D:\installed_softs\WeChat\WeChat.exe
REM start D:\installed_softs\WeChat\WeChat.exe
REM start D:\installed_softs\WeChat\WeChat.exe
