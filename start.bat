Title [租呗]
::begin-----------------------------------
@echo 咻咻咻租呗启动中!
@echo 正在再次重连云盘！请耐心等待！
do
{	
	if exist X:
		echo "连接"
		break;
	else
	{
http://www.msftncsi.com/ncsi.txt
		@echo 正在检测网络连接！
		ping /n 2 202.101.224.68|findstr "TTL="
		if (检测到可以上网的时候)
		{
			start C:\zubei\zubeidisk.exe
			@echo offset 
			Q=&set 
			vbs=Questiontmp.vbs
			echo Wsh.Echo 
			MsgBox("很遗憾！连接租呗云盘失败，请与租呗管理员联系！",vbOkonly,"云盘连接失败")>%vbs%
			for /f %%a in ('cscript %vbs% /{logo //e:vbscript') do set "Q=%%a"
			if %Q%==1 del /q /f %vbs%>nul&goto Ok
			if %Q%==2 del /q /f %vbs%>nul&goto Cancel
			del /q /f %vbs%>nul
		}
		else // 不能上网的时候
		{
			@echo offset
			Q=&set 
			vbs=Questiontmp.vbs
			echo Wsh.Echo 
			MsgBox("请先连接网络后再运行租呗！",vbOkonly,"网络连接失败")>%vbs%
			for /f %%a in (
				'cscript %vbs% /{logo //e:vbscript'
				) do set "Q=%%a"
			if %Q%==1 
				del /q /f %vbs%>nul&goto Ok
			if %Q%==2
				del /q /f %vbs%>nul&goto Cancel
			del /q /f %vbs%>nul
			exit
		}
	}
}while (循环4次)
@echo 开启菜单
start x:\mu\zubeimenu.exe
exit

 
:Okrem 运行确定后程序
exit





