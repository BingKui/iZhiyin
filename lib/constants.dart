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

// 系统基础变量
// 定义颜色
const iPrimary = Color(0xFF2d8cf0);
const iPrimaryLight = Color(0xFF5cadff);
const iPrimaryDark = Color(0xFF2b85e4);
const iInfo = Color(0xFF2db7f5);
const iSuccess = Color(0xFF19be6b);
const iWarn = Color(0xFFff9900);
const iError = Color(0xFFed4014);
const iBorderColor = Color(0xffdcdee2);
const iBackgroundColor = Color(0xFFf8f8f9);
const iTitleColor = Color(0xFF17233d);
const iSubTitleColor = Color(0xFF808695);
const iContentColor = Color(0xFF515a6e);
const iDisableColor = Color(0xFFc5c8ce);
const iDividerColor = Color(0xFFe8eaec);
// 灰度颜色
const iBlack = Colors.black;
const iWhite = Colors.white;
const iTransparent = Colors.transparent;
const iGray = Color(0xFFCCCCCC);
const iGrayLight = Color(0xFFe5e5e5);
const iGrayDark = Color(0xFF999999);

// 字体
const iFontSizeMini = 10.0;
const iFontSizeSmall = 12.0;
const iFontSize = 14.0;
const iFontSizeMiddle = 16.0;
const iFontSizeLarger = 18.0;
const iFontWeight = FontWeight.w400;
const iFontWeightBold = FontWeight.w500;

// border
BoxBorder iBorder = Border.all(color: iBorderColor, width: 1);
BoxBorder iBorderBold = Border.all(color: iBorderColor, width: 2);

// 圆角
const BorderRadiusGeometry iBorderRadius = BorderRadius.all(Radius.circular(10));
const BorderRadiusGeometry iNoBorderRadius = BorderRadius.all(Radius.circular(0));

// 基础变量-gap
const double iDefaultGap = 5.0;

// gap 相关变量
const iGapAllSmall = EdgeInsets.all(iDefaultGap);
const iGapAll = EdgeInsets.all(iDefaultGap * 2);
const iGapAllMiddle = EdgeInsets.all(iDefaultGap * 3);
const iGapAllLarger = EdgeInsets.all(iDefaultGap * 4);
const iGapLeftSmall = EdgeInsets.only(left: iDefaultGap);
const iGapLeft = EdgeInsets.only(left: iDefaultGap * 2);
const iGapLeftMiddle = EdgeInsets.only(left: iDefaultGap * 3);
const iGapLeftLarger = EdgeInsets.only(left: iDefaultGap * 4);
const iGapRightSmall = EdgeInsets.only(right: iDefaultGap);
const iGapRight = EdgeInsets.only(right: iDefaultGap * 2);
const iGapRightMiddle = EdgeInsets.only(right: iDefaultGap * 3);
const iGapRightLarger = EdgeInsets.only(right: iDefaultGap * 4);
const iGapTopSmall = EdgeInsets.only(top: iDefaultGap);
const iGapTop = EdgeInsets.only(top: iDefaultGap * 2);
const iGapTopMiddle = EdgeInsets.only(top: iDefaultGap * 3);
const iGapTopLarger = EdgeInsets.only(top: iDefaultGap * 4);
const iGapBottomSmall = EdgeInsets.only(bottom: iDefaultGap);
const iGapBottom = EdgeInsets.only(bottom: iDefaultGap * 2);
const iGapBottomMiddle = EdgeInsets.only(bottom: iDefaultGap * 3);
const iGapBottomLarger = EdgeInsets.only(bottom: iDefaultGap * 4);
const iGapVerticalSmall = EdgeInsets.symmetric(vertical: iDefaultGap);
const iGapVertical = EdgeInsets.symmetric(vertical: iDefaultGap * 2);
const iGapVerticalMiddle = EdgeInsets.symmetric(vertical: iDefaultGap * 3);
const iGapVerticalLarger = EdgeInsets.symmetric(vertical: iDefaultGap * 4);
const iGapHorizontalSmall = EdgeInsets.symmetric(horizontal: iDefaultGap);
const iGapHorizontal = EdgeInsets.symmetric(horizontal: iDefaultGap * 2);
const iGapHorizontalMiddle = EdgeInsets.symmetric(horizontal: iDefaultGap * 3);
const iGapHorizontalLarger = EdgeInsets.symmetric(horizontal: iDefaultGap * 4);
const iGapBoxSmall = EdgeInsets.only(left: iDefaultGap, right: iDefaultGap, top: iDefaultGap);
const iGapBox = EdgeInsets.only(left: iDefaultGap * 2, right: iDefaultGap * 2, top: iDefaultGap * 2);
const iGapBoxMiddle = EdgeInsets.only(left: iDefaultGap * 3, right: iDefaultGap * 3, top: iDefaultGap * 3);
const iGapBoxLarger = EdgeInsets.only(left: iDefaultGap * 4, right: iDefaultGap * 4, top: iDefaultGap * 4);

// 定义基本样式变量
// 阴影
const List<BoxShadow> iBoxShadow = <BoxShadow>[
  BoxShadow(
    color: Color(0x33000000),
    offset: Offset(0, 1), //阴影y轴偏移量
    blurRadius: 4, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
];
const List<BoxShadow> iBoxShadowLight = <BoxShadow>[
  BoxShadow(
    color: Color(0x1A000000),
    offset: Offset(0, 1), //阴影y轴偏移量
    blurRadius: 4, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
];
const List<BoxShadow> iBoxShadowDark = <BoxShadow>[
  BoxShadow(
    color: Color(0x4D000000),
    offset: Offset(0, 1), //阴影y轴偏移量
    blurRadius: 4, //阴影模糊程度
    spreadRadius: 0, //阴影扩散程度
  ),
];

// 基本文本样式
// 标题
const TextStyle iTitleTextStyle = TextStyle(
  color: iTitleColor,
  fontSize: iFontSizeMiddle,
  fontWeight: iFontWeight,
);
const TextStyle iTitleTextBoldStyle = TextStyle(
  color: iTitleColor,
  fontSize: iFontSizeMiddle,
  fontWeight: iFontWeightBold,
);
// 二级标题
const TextStyle iSubTitleTextStyle = TextStyle(
  color: iSubTitleColor,
  fontSize: iFontSizeMini,
);
const TextStyle iContentTextStyle = TextStyle(
  color: iContentColor,
  fontSize: iFontSize,
);

// 桌面端窗口大小
Size iWinSize = const Size(300, 350);
