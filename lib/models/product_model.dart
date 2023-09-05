class ProductModel {
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final String category;
  final RatingModel? ratingModel;

  ProductModel({
    required this.category,
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.ratingModel,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      category: jsonData["category"],
      id: jsonData["id"],
      title: jsonData["title"],
      description: jsonData["description"],
      image: jsonData["image"],
      price: jsonData["price"],
      ratingModel: jsonData['rating'] == null
          ? null
          : RatingModel.fromJson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData["rate"],
      count: jsonData["count"],
    );
  }
}
