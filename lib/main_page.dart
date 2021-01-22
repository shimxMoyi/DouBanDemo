
import 'package:dou_ban/initialize_items.dart';
import 'package:flutter/material.dart';

class MXMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MXMainPageState();
  }
}

class _MXMainPageState extends State<MXMainPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: items,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        onTap: (index) {
         setState(() {
            _currentIndex = index;
         });
        },
      ),
    );
  }
}
