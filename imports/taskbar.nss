menu(type="taskbar" pos=0 title='Shell管理' image=\uE249)
{
	item(title="配置文件" image=\uE10A cmd='"@app.cfg"')
	item(title="Shell管理面板" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="程序目录" image=\uE0E8 cmd='"@app.dir"')
	item(title="在线文档" image=\uE1C4 cmd='https://nilesoft.org/docs')
	item(title='重启资源管理器' cmd=command.restart_explorer)
	// item(title="donate" image=\uE1A7 cmd='https://nilesoft.org/donate')
	// item(title="version "+@app.ver vis=label col=1)
}
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	menu(title="常用应用" image=\uE254)
	{
		menu(title='系统' image=\uE255) 
		{
			item(title='画图' image=\uE116 cmd='mspaint')
			item(title=str.res('regedit.exe,-16') image cmd='regedit.exe') // 注册表编辑器
		} 
		item(title='HeidiSQL' image cmd='D:\HeidiSQL\heidisql.exe')
		item(title='Geek Uninstaller' image cmd='D:\SingleWare\geek.exe')
		// item(title='Edge' image cmd='@sys.prog32\Microsoft\Edge\Application\msedge.exe')
		// item(title='计算器' image=\ue1e7 cmd='calc.exe')
		// item(title='uTools' image cmd='C:\Users\Administrator\AppData\Local\Programs\utools\uTools.exe') // 已卸载
		// item(title='Rubick' image cmd='D:\rubick\rubick.exe') // 已卸载
	}
	// windows窗口管理
	menu(title='Windows 窗口管理' vis=key.shift() image=\uE1FB)
	{
		item(title=title.cascade_windows cmd=command.cascade_windows)
		item(title=title.Show_windows_stacked cmd=command.Show_windows_stacked)
		item(title=title.Show_windows_side_by_side cmd=command.Show_windows_side_by_side)
		sep
		item(title=title.minimize_all_windows cmd=command.minimize_all_windows)
		item(title=title.restore_all_windows cmd=command.restore_all_windows)
	}
	// 显示桌面
	// item(title=title.desktop image=icon.desktop cmd=command.toggle_desktop)
	// 与goto控制面板中重复
	// item(title='Windows设置' image=icon.settings(auto, image.color1) cmd='ms-settings:')

	// 任务管理器
	// item(title=title.task_manager sep=both image=icon.task_manager cmd='taskmgr.exe')

	// 任务栏设置
	// item(title=title.taskbar_Settings sep=both image=inherit cmd='ms-settings:taskbar')
}