import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:izhiyin/common/tray_utils.dart';
import 'package:izhiyin/events.dart';
import 'package:localstorage/localstorage.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

class TrayWatcher extends StatefulWidget {
  final Widget child;
  const TrayWatcher({super.key, required this.child});

  @override
  State<TrayWatcher> createState() => _TrayWatcherState();
}

class _TrayWatcherState extends State<TrayWatcher> with TrayListener {
  final LocalStorage storage = LocalStorage('izhiyin');
  late Timer? _timer;
  @override
  void initState() {
    super.initState();
    trayManager.addListener(this);
    intiTray();
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {});
    // 添加事件监听
    eventBus.on<TrayChangeEvent>().listen((event) {
      startTimer(event.name);
    });
  }

  void intiTray() async {
    // 设置系统菜单
    await traySetMenu();
    // 获取当前保存的图标类型
    final item = await storage.getItem('runner') ?? 'auto';
    // 开启定时器
    startTimer(item);
  }

  @override
  void dispose() {
    trayManager.removeListener(this);
    super.dispose();
  }

  void startTimer(String name) async {
    if (_timer!.isActive) {
      _timer?.cancel();
      _timer = null;
    }
    int _idx = 0;
    await storage.setItem("runner", name);
    int maxLength = getTrayIconLength(name);
    Duration duration = Duration(milliseconds: 1500 ~/ maxLength);
    _timer = Timer.periodic(duration, (timer) async {
      String trayIcon = getTrayIcon(name, _idx);
      await traySetIcon(trayIcon, name);
      if (_idx < maxLength - 1) {
        _idx += 1;
      } else {
        _idx = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  // 左键
  @override
  void onTrayIconMouseDown() async {
    await windowManager.show();
  }

  // 右键
  @override
  void onTrayIconRightMouseDown() async {
    await trayManager.popUpContextMenu();
  }

  // 菜单项
  @override
  void onTrayMenuItemClick(MenuItem menuItem) async {
    String key = menuItem.key as String;
    switch (key) {
      case 'open':
        await windowManager.show();
        break;
      case 'quite':
        exit(0);
    }
  }
}
