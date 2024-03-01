class Recipe {
  final String name;
  final String images;
  final String totalTime;
  final double rating;

  Recipe(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime});

  // helps to instanttiate our recipe from jason  file from api
  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'] as double,
        totalTime: json['totalTime'] as String);
  }

  // taking list of data from API which will be converted into recipe
  static List<Recipe> recipeFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return "Recipe{ name: $name, image: $images, rating:$rating, totalTime: $totalTime}";
  }
}
