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
      rightContentBuilder()
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
              TextSpan(
                text:"主演：",
                style:TextStyle(fontSize: 10, color: Colors.black87)
              ),
              TextSpan(
                text:casts,
                style:TextStyle(fontSize: 10, color: Colors.blue[600])
              ),
            ])
        )
      ],
    ),
  );
}

Widget rightContentBuilder() {
    return Container(
      width: 50.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("评分", textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0, color: Colors.black54),),
          SizedBox(
            height:15.0
          ),
          Text(movie.rate, textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.yellow[400]),)
        ],
      ),
    );
}

}

