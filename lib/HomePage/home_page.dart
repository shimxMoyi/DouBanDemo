import 'package:flutter/material.dart';
import 'home_content.dart';

class MXHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MXHomePageState();
  }
}

class _MXHomePageState extends State<MXHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: MXHomeContent(),

    );
  }
  
}