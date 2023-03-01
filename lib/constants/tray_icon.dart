enum TrayMenuKeys {
  open,
  info,
  runner,
  store,
  setting,
  activity,
  about,
  issue,
  quit,
}

enum TrayIconNames {
  auto,
  ball,
  dance,
  black,
  bird,
  bonfire,
  busycat,
  // cata,
  // catb,
  // catc,
  frog,
  karbi,
  nerve,
  parrot,
  party,
  pinkcat,
  rabit,
  sheep,
}

List<String> noTemplateNames = [
  'auto',
  'busycat',
  'pinkcat',
  'party',
  'rabit',
  'karbi',
  'frog',
  'nerve',
];

class TrayItem {
  final String value;
  final String label;
  const TrayItem({required this.value, required this.label});
}

List<String> TrayListValue = [
  TrayIconNames.auto.name,
  TrayIconNames.ball.name,
  TrayIconNames.dance.name,
  TrayIconNames.bird.name,
  TrayIconNames.bonfire.name,
  TrayIconNames.busycat.name,
  // TrayIconNames.cata.name,
  // TrayIconNames.catb.name,
  // TrayIconNames.catc.name,
  TrayIconNames.frog.name,
  TrayIconNames.karbi.name,
  TrayIconNames.nerve.name,
  TrayIconNames.parrot.name,
  TrayIconNames.party.name,
  TrayIconNames.pinkcat.name,
  TrayIconNames.rabit.name,
  TrayIconNames.sheep.name,
];
List<String> TrayListLabel = [
  "小黑子头像 👤",
  "只因篮球 🏀",
  "只因铁山靠 💃🏻",
  "鸟 🐦",
  "火堆 🔥",
  "忙碌猫 😺",
  // "Cat α 😻",
  // "Cat β 😹",
  // "Cat γ 😿",
  "青蛙 🐸",
  "星之卡比 👾",
  "神经马 🐴",
  "鹦鹉 🦜",
  "鹦鹉(RGB) 🦜",
  "粉红猫 😽",
  "彩虹兔 🌈",
  "羊 🐑",
];
