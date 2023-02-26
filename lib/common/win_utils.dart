// 窗口工具方法

import 'package:window_manager/window_manager.dart';

Future<void> winInit() async {
  // 确保初始化
  await windowManager.ensureInitialized();
  windowManager.waitUntilReadyToShow().then((_) async {
    // // 设置大小
    // await windowManager.setSize(iWinSize);
    // // 设置阴影
    // await windowManager.setHasShadow(true);
    // 隐藏 dock 图标
    await windowManager.setSkipTaskbar(true);
  });
}
