import 'package:flutter/material.dart';
import 'Model/home_model.dart';

class MXHomeListItem extends StatelessWidget {

  final MovieItem movie;

  MXHomeListItem(this.movie);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titleBuilder(),
          SizedBox(
            height: 10.0,
          ),
          contentBuilder()
        ],
      ),
    );
  }

Widget titleBuilder() {
  return Container(
    child: Text(movie.title, style: TextStyle(fontSize: 20.0, color: Colors.grey, fontWeight: FontWeight.bold),)
  );
}

Widget contentBuilder() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      coverBuilder(),
      SizedBox(width:10.0),
      directorBuilder(),
    ],
  );
}

Widget coverBuilder() {
  return ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    child: Image.network(
      movie.cover,
      height: 120,
      width: 80,),
  );
}

Widget directorBuilder() {
  String directors = movie.directors.join("/");
  String casts = movie.casts.join("/");
  return Expanded(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text.rich(
          TextSpan(
            children: [
              WidgetSpan(child: Text("导演：", style: TextStyle(fontSize: 10, color: Colors.black87))),
              WidgetSpan(child: Text(directors, style: TextStyle(fontSize: 10, color: Colors.blue[600]),)),
            ]
          ),
        ),
        Text.rich(
          TextSpan(
            children:[
            WidgetSpan(child: Text("主演：", style: TextStyle(fontSize: 10, color: Colors.black87))),
            WidgetSpan(child: Text(casts, style: TextStyle(fontSize: 10, color: Colors.blue[600]), maxLines: 2, overflow: TextOverflow.ellipsis,))]
          )
        )
      ],
    ),
  );
}

}

