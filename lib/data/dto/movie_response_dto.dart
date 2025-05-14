class MovieResponseDto {
  int page;
  List<Map<String, dynamic>> results;
  MovieResponseDto(
    {
      required this.page,
      required this.results,
    }
  );

  factory MovieResponseDto.fromJson(Map<String, dynamic> map) {
    return MovieResponseDto(
      page : map['page'],
      results : List<Map<String, dynamic>>.from(map['results']),
    );
  }
}
