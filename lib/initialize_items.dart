
import 'package:flutter/material.dart';

import 'bottom_bar_item.dart';

import 'package:dou_ban/HomePage/home_page.dart';

import 'package:dou_ban/SubjectPage/subject_page.dart';

List<MXBottomBarItem> items = [
  MXBottomBarItem("home", "首页"),
  MXBottomBarItem("subject", "书影音"),
  MXBottomBarItem("group", "小组"),
  MXBottomBarItem("mall", "市集"),
  MXBottomBarItem("profile", "我的"),
];

List<Widget> pages = [
  MXHomePage(),
  MXSubjectPage(),
  MXSubjectPage(),
  MXSubjectPage(),
  MXSubjectPage(),
];