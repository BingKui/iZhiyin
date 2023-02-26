// 系统托盘工具方法

// 系统托盘菜单key
import 'package:izhiyin/constants.dart';
import 'package:izhiyin/constants/tray_icon.dart';
import 'package:izhiyin/gen/assets.gen.dart';
import 'package:tray_manager/tray_manager.dart';

Future<void> traySetMenu() async {
  // 定义托盘菜单
  final List<MenuItem> items = [
    MenuItem(
      key: TrayIconNames.ball.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.dance.name,
      label: "跳舞",
    ),
    // MenuItem(
    //   key: TrayIconNames.black.name,
    //   label: "小黑子",
    // ),
    MenuItem(
      key: TrayIconNames.bird.name,
      label: "鸟",
    ),
    MenuItem(
      key: TrayIconNames.bonfire.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.busycat.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.cata.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.catb.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.catc.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.frog.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.karbi.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.nerve.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.parrot.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.party.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.pinkcat.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.rabit.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayIconNames.sheep.name,
      label: "篮球",
    ),
    MenuItem(
      key: TrayMenuKeys.quit.name,
      label: "退出",
    ),
  ];
  // 设置系统托盘
  await trayManager.setContextMenu(Menu(items: items));
}

// 生成系统信息菜单
Future<MenuItem> createInfoMenuItem() async {
  return MenuItem(
    key: TrayMenuKeys.info.name,
    label: "系统信息",
    submenu: Menu(items: [
      MenuItem(),
    ]),
  );
}

// 修改托盘菜单信息

// 修改图标
Future<void> traySetIcon(String iconPath, String name) async {
  bool isTemplate = noTemplateNames.contains(name);
  if (isMac) {
    await trayManager.setIcon(iconPath, isTemplate: !isTemplate);
  } else {
    await trayManager.setIcon(iconPath);
  }
}

// 获取资源和长度
int getTrayIconLength(String name) {
  final entry = TrayIconNames.values.firstWhere((item) => item.name == name);
  switch (entry) {
    case TrayIconNames.ball:
      return Assets.ball.values.length;
    case TrayIconNames.bird:
      return Assets.bird.values.length;
    case TrayIconNames.black:
      return Assets.black.values.length;
    case TrayIconNames.bonfire:
      return Assets.bonfire.values.length;
    case TrayIconNames.busycat:
      return Assets.busycat.values.length;
    case TrayIconNames.cata:
      return Assets.cata.values.length;
    case TrayIconNames.catb:
      return Assets.catb.values.length;
    case TrayIconNames.catc:
      return Assets.catc.values.length;
    case TrayIconNames.dance:
      return Assets.dance.values.length;
    case TrayIconNames.frog:
      return Assets.frog.values.length;
    case TrayIconNames.karbi:
      return Assets.karbi.values.length;
    case TrayIconNames.nerve:
      return Assets.nerve.values.length;
    case TrayIconNames.parrot:
      return Assets.parrot.values.length;
    case TrayIconNames.party:
      return Assets.party.values.length;
    case TrayIconNames.pinkcat:
      return Assets.pinkcat.values.length;
    case TrayIconNames.rabit:
      return Assets.rabit.values.length;
    case TrayIconNames.sheep:
      return Assets.sheep.values.length;
    default:
      return Assets.ball.values.length;
  }
}

// 获取图标
String getTrayIcon(String name, int idx) {
  final entry = TrayIconNames.values.firstWhere((item) => item.name == name);
  switch (entry) {
    case TrayIconNames.ball:
      return Assets.ball.values[idx].path;
    case TrayIconNames.bird:
      return Assets.bird.values[idx].path;
    case TrayIconNames.black:
      return Assets.black.values[idx].path;
    case TrayIconNames.bonfire:
      return Assets.bonfire.values[idx].path;
    case TrayIconNames.busycat:
      return Assets.busycat.values[idx].path;
    case TrayIconNames.cata:
      return Assets.cata.values[idx].path;
    case TrayIconNames.catb:
      return Assets.catb.values[idx].path;
    case TrayIconNames.catc:
      return Assets.catc.values[idx].path;
    case TrayIconNames.dance:
      return Assets.dance.values[idx].path;
    case TrayIconNames.frog:
      return Assets.frog.values[idx].path;
    case TrayIconNames.karbi:
      return Assets.karbi.values[idx].path;
    case TrayIconNames.nerve:
      return Assets.nerve.values[idx].path;
    case TrayIconNames.parrot:
      return Assets.parrot.values[idx].path;
    case TrayIconNames.party:
      return Assets.party.values[idx].path;
    case TrayIconNames.pinkcat:
      return Assets.pinkcat.values[idx].path;
    case TrayIconNames.rabit:
      return Assets.rabit.values[idx].path;
    case TrayIconNames.sheep:
      return Assets.sheep.values[idx].path;
    default:
      return Assets.ball.ball0.path;
  }
}
