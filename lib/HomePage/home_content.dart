
import 'package:flutter/material.dart';
import 'NetWork/home_request.dart';
import 'home_list_item.dart';
import 'Model/home_model.dart';

class MXHomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MXHomeContentState();
  }
}

class _MXHomeContentState extends State<MXHomeContent> {

  final List<MovieItem> movies = [];

  @override
  void initState() {
    super.initState();
    // 发送网络请求
    HomeRequest.requestMovieList(0).then((res) {
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (ctx, index) {
        return MXHomeListItem(movies[index]);
      }
    );
  }
  
}