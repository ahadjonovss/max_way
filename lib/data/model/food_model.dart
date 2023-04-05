class FoodModel {
  final String name;
  final String description;
  final String price;
  final bool isSpicy;

  FoodModel(
      {required this.name,
      required this.description,
      required this.price,
      required this.isSpicy});

  factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
      name: json["name"] ?? "No name",
      description: json["description"] ?? "No data",
      price: json["price"] ?? 0,
      isSpicy: json["isSpicy"] ?? false);


  toJson()=>{
    "name":name,
    "description":description,
    "price":price,
    "isSpicy":isSpicy
  };
}
