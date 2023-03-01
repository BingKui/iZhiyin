import 'package:flutter/material.dart';
import 'package:izhiyin/components/preview.dart';
import 'package:izhiyin/constants.dart';
import 'package:izhiyin/constants/tray_icon.dart';
import 'package:izhiyin/events.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = 'auto';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iBackgroundColor,
      body: Column(
        children: [
          const Preview(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text("图标选择"),
              const Padding(
                padding: iGapHorizontal,
                child: SizedBox(
                  width: 120,
                  child: Text(
                    "图标切换",
                    style: iTitleTextBoldStyle,
                  ),
                ),
              ),
              PopupMenuButton(
                child: Container(
                  width: 140,
                  height: 45,
                  padding: iGapHorizontal,
                  decoration: BoxDecoration(
                    border: iBorder,
                    borderRadius: iBorderRadius,
                    color: iWhite,
                    boxShadow: iBoxShadow,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name == '' ? "选择" : TrayListLabel[TrayListValue.indexOf(name)]),
                      const Icon(Icons.arrow_drop_down_rounded),
                    ],
                  ),
                ),
                onSelected: (value) {
                  setState(() {
                    name = value;
                  });
                  eventBus.fire(TrayChangeEvent(value));
                },
                itemBuilder: (BuildContext context) {
                  List<PopupMenuEntry> list = [];
                  for (var i = 0; i < TrayListValue.length; i++) {
                    list.add(PopupMenuItem(
                      value: TrayListValue[i],
                      child: Text(TrayListLabel[i]),
                    ));
                  }
                  return list;
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
