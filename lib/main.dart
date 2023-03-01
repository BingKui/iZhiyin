import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:izhiyin/views/home_page.dart';
import 'package:izhiyin/watcher/tray_watcher.dart';
import 'package:izhiyin/watcher/win_watcher.dart';
import 'package:network_info_plus/network_info_plus.dart';

import 'common/tray_utils.dart';
import 'common/win_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  await winInit();
  // 初始化系统托盘
  // await trayInit("");
  // 开启定时任务，定时更新托盘图标
  // final networkInfo = NetworkInfo();
  // String? ipValue = await networkInfo.getWifiIP();
  // print('网络Id -> $ipValue');
  // final deviceInfo = await DeviceInfoPlugin().deviceInfo;
  // print('设备信息 -> $deviceInfo');
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const TrayWatcher(
        child: WinWatcher(
          child: HomePage(),
        ),
      ),
    );
  }
}
