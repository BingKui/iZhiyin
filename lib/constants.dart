// 变量
import 'dart:io';

import 'package:flutter/material.dart';

final bool isMac = Platform.isMacOS;
final bool isWin = Platform.isWindows;
final bool isLinux = Platform.isLinux;
final bool isIos = Platform.isIOS;
final bool isAndroid = Platform.isAndroid;
final bool isMobile = isAndroid || isIos;
final bool isDesktop = isMac || isWin || isLinux;

// 桌面端窗口大小
Size iWinSize = const Size(900, 700);
