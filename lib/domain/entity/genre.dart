class Genre {
  int id;
  String name;
  Genre({required this.id, required this.name});

  factory Genre.fromJson(Map<String, dynamic> map) {
    return Genre(
      id: map['id'], 
      name : map['name'],
    );
  }
}
