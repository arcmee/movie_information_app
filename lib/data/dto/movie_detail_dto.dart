class MovieDetailDto {
  int id;
  String posterPath;
  String title;
  String releaseDate;
  int runtime;
  List<Map<String, dynamic>> genres;
  String overview;
  double voteAverage;
  int voteCount;
  double popularity;
  int budget;
  int revenue;
  List<Map<String, dynamic>> productionCompanies;
  MovieDetailDto(
    {
      required this.id,
      required this.posterPath,
      required this.title,
      required this.releaseDate,
      required this.runtime,
      required this.genres,
      required this.overview,
      required this.voteAverage,
      required this.voteCount,
      required this.popularity,
      required this.budget,
      required this.revenue,
      required this.productionCompanies,
    }
  );

  factory MovieDetailDto.fromJson(Map<String, dynamic> map) {
    return MovieDetailDto(
      id: map['id'],
      posterPath: map['poster_path'],
      title: map['title'],
      releaseDate: map['release_date'],
      runtime: map['runtime'],
      genres: List<Map<String, dynamic>>.from(map['genres']),
      overview: map['overview'],
      voteAverage: (map['vote_average'] as num).toDouble(),
      voteCount: map['vote_count'],
      popularity: (map['popularity'] as num).toDouble(),
      budget: map['budget'],
      revenue: map['revenue'],
      productionCompanies: List<Map<String, dynamic>>.from(map['production_companies']),
    );
  }
  
}

Map<String, dynamic> a = {
  "adult": false,
  "backdrop_path": "/cJvUJEEQ86LSjl4gFLkYpdCJC96.jpg",
  "belongs_to_collection": null,
  "budget": 20000000,
  "genres": [
    {
      "id": 10752,
      "name": "전쟁"
    },
    {
      "id": 28,
      "name": "액션"
    }
  ],
  "homepage": "",
  "id": 1241436,
  "imdb_id": "tt31434639",
  "origin_country": [
    "US"
  ],
  "original_language": "en",
  "original_title": "Warfare",
  "overview": "\"실화 기반, 전장의 숨결을 생생히 담아낸 리얼 타임 전쟁 드라마\"  2006년 이라크 라마디. 미 해군 특수부대 네이비 씰 팀이 적진 한복판에서 감시 임무를 수행하던 중, 예상치 못한 상황에 휘말리게 된다. 민가를 점거해 잠복하던 그들은 알카에다 세력의 포위망에 갇히고, 지원은 끊긴 채 생존을 위한 사투를 벌이게 된다. 전직 네이비 씰이자 실제 생존자인 레이 멘도자 감독과 '엑스 마키나', '시빌 워'의 알렉스 가란드 감독이 공동 연출한 이 작품은, 전투의 혼돈과 공포를 실시간으로 그려낸다. 화려한 음악이나 영웅 서사 없이, 전장의 소음과 침묵, 그리고 병사들의 숨결이 화면을 가득 채운다. 실화를 바탕으로 한 이 영화는, 전쟁의 참혹함과 인간의 생존 본능을 적나라하게 보여주며, 관객을 전장의 한가운데로 끌어들인다. 과연 이들은 살아남을 수 있을까...",
  "popularity": 485.3223,
  "poster_path": "/j8tqBXwH2PxBPzbtO19BTF9Ukbf.jpg",
  "production_companies": [
    {
      "id": 284,
      "logo_path": "/6a26if3IKy7mlrQuGHHVp6ufQtF.png",
      "name": "DNA Films",
      "origin_country": "GB"
    },
    {
      "id": 41077,
      "logo_path": "/1ZXsGaFPgrgS6ZZGS37AqD5uU12.png",
      "name": "A24",
      "origin_country": "US"
    }
  ],
  "production_countries": [
    {
      "iso_3166_1": "GB",
      "name": "United Kingdom"
    },
    {
      "iso_3166_1": "US",
      "name": "United States of America"
    }
  ],
  "release_date": "2025-04-09",
  "revenue": 29865776,
  "runtime": 95,
  "spoken_languages": [
    {
      "english_name": "English",
      "iso_639_1": "en",
      "name": "English"
    },
    {
      "english_name": "Turkish",
      "iso_639_1": "tr",
      "name": "Türkçe"
    }
  ],
  "status": "Released",
  "tagline": "",
  "title": "워페어",
  "video": false,
  "vote_average": 7.144,
  "vote_count": 254
};