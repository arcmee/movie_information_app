class ProductionCompany {
  int id;
  String? logoPath;
  String name;

  ProductionCompany({
    required this.id,
    required this.logoPath,
    required this.name,
  });

  factory ProductionCompany.fromJson(Map<String, dynamic> map) {
    return ProductionCompany(
      id: map['id'], 
      logoPath: map['logo_path'],
      name : map['name'],
    );
  }
}
