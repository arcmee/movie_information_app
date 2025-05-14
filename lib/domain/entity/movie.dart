class Movie {
  int id;
  String posterPath;

  Movie({
    required this.id,
    required this.posterPath,
  });

  factory Movie.fromJson(Map<String, dynamic> map){
    return Movie(
      id : map['id'],
      posterPath: map['poster_path'],
    );
  }
}