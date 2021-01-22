import 'package:flutter/material.dart';

class MXBottomBarItem extends BottomNavigationBarItem {

  MXBottomBarItem(String iconName, String title) 
  : super (
    title: Text(title),
    // /Users/shimingxin/dou_ban/assets/images/tabbar/home.png
    icon: Image.asset("assets/images/tabbar/$iconName.png", width: 32,),
    activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 32,),
  );
}