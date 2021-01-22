import 'package:flutter/material.dart';
import 'Model/home_model.dart';

class MXHomeListItem extends StatelessWidget {

  final MovieItem movie;

  MXHomeListItem(this.movie);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          Text(movie.title)
        ],
      ),
    );
  }
}

