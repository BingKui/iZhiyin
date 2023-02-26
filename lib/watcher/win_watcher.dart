import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class WinWatcher extends StatefulWidget {
  final Widget child;
  const WinWatcher({super.key, required this.child});

  @override
  State<WinWatcher> createState() => _WinWatcherState();
}

class _WinWatcherState extends State<WinWatcher> with WindowListener {
  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void onWindowFocus() {
    setState(() {});
  }
}
