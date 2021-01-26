import 'package:flutter/material.dart';
import 'Model/home_model.dart';

class MXHomeListItem extends StatelessWidget {

  final MovieItem movie;

  MXHomeListItem(this.movie);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          coverBuilder(),
          Text(movie.title)
        ],
      ),
    );
  }

Widget titleBuilder() {
  return Container(
    child: Text(movie.title, style: TextStyle(fontSize: 20.0, color: Colors.grey, fontWeight: FontWeight.bold),)
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
  String director = movie.directors.join("/");

  return Text.rich(
    TextSpan(
      children: [
        WidgetSpan(child: Text("导演：", style: TextStyle(fontSize: 10, color: Colors.black87))),
        WidgetSpan(child: Text(director, style: TextStyle(fontSize: 10, color: Colors.blue[600]),))
      ]
    )
    
  );
}

}

