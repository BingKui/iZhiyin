import 'dart:async';

import 'package:flutter/material.dart';
import 'package:izhiyin/constants.dart';
import 'package:izhiyin/events.dart';
import 'package:izhiyin/gen/assets.gen.dart';

import '../common/tray_utils.dart';

class Preview extends StatefulWidget {
  const Preview({super.key});

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  late Timer? _timer;
  String img = Assets.auto.auto0.path;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {});
    // 添加事件监听
    eventBus.on<TrayChangeEvent>().listen((event) {
      startTimer(event.name);
    });
    startTimer('auto');
  }

  void startTimer(String name) async {
    if (_timer!.isActive) {
      _timer?.cancel();
      _timer = null;
    }
    int _idx = 0;
    int maxLength = getTrayIconLength(name);
    Duration duration = Duration(milliseconds: 1500 ~/ maxLength);
    _timer = Timer.periodic(duration, (timer) async {
      String imgSrc = getTrayIcon(name, _idx);
      setState(() {
        img = imgSrc;
      });
      if (_idx < maxLength - 1) {
        _idx += 1;
      } else {
        _idx = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: iGapAllLarger,
      width: 180,
      height: 180,
      child: Image.asset(
        img,
      ),
    );
  }
}
