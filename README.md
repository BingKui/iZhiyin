# izhiyin

跨平台系统托盘软件-哎丶只因（iZhiYin）。

## 运行

```shell
flutter pub get
flutter run
```

## 添加新图标

### 添加资源到 Assets

在 `assets` 文件加下，新增文件夹。如：test。
把图标相关的所有图片都放在文件夹下边，按照顺序命名。

命名规则参考：已存在 `ball` 文件夹下文件命名。

```shell
test-0.png
test-01.png
test-02.png
...
test-10.png
test-11.png
```

### 修改配置文件

打开 `pubspec.yaml` 文件，修改资源配置项。

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/auto/
    # 添加新的文件夹资源
    - assets/test/

```

### 执行命令生成资源引用

```shell
flutter pub run build_runner build
```

### 添加代码配置

打开 `lib/constants/tray_icon.dart` 文件，修改 `TrayIconNames`、`TrayListValue` 和 `TrayListLabel`。如果是彩色图片，建议修改 `noTemplateNames`。

**TrayIconNames**

```dart
enum TrayIconNames {
    ...
    test,
}
```
**TrayIconNames**

```dart
enum TrayListValue {
    ...
    TrayIconNames.test.name,
}
```
**TrayIconNames**

```dart
enum TrayIconNames {
    ...
    "测试 🤖",
}
```

### 修改获取资源方法

打开 `lib/common/tray_utils.dart` 文件，修改 `getTrayIconLength` 和 `getTrayIcon` 方法，添加相应的逻辑。

```dart
<!-- getTrayIconLength 方法 添加 -->
case TrayIconNames.test:
    return Assets.test.values.length;
```

```dart
<!-- getTrayIcon 方法 添加 -->
case TrayIconNames.test:
    return Assets.test.values[idx].path;
```
