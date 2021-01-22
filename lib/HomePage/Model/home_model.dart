class Person {
  String name;
  String avatarURL;

  Person.fromMap(Map<String, dynamic> json) {
    this.name = json["name"];
    this.avatarURL = json["avatars"]["medium"];
  }
}

class Actor extends Person {
  Actor.fromMap(Map<String, dynamic> json): super.fromMap(json);
}

class Director extends Person {
  Director.fromMap(Map<String, dynamic> json): super.fromMap(json);
}

int counter = 1;

class MovieItem {
  String rate; // 评分
  String cover; // 封面
  String title; // 标题
  List<String> directors; // 导演
  List<String> casts;  // 主演

  MovieItem.fromMap(Map<String, dynamic> json) {
    this.rate = json["rate"];
    this.cover = json["cover"];
    this.title = json["title"];
    this.casts = json["casts"].cast<String>();
    this.directors = json["directors"].cast<String>();
  }

  @override
  String toString() {
    return 'MovieItem{rate: $rate, corver: $cover, title: $title, casts: $casts, director: $directors}';
  }
}