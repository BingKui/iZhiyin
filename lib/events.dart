import 'package:event_bus/event_bus.dart';

// 全局事件总线
EventBus eventBus = EventBus();

// 定义事件
// 改变事件
class TrayChangeEvent {
  String name;
  TrayChangeEvent(this.name);
}
