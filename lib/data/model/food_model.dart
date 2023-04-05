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
      name: json[FoodModelFields.name] ?? "No name",
      description: json[FoodModelFields.description] ?? "No data",
      price: json[FoodModelFields.price] ?? 0,
      isSpicy: json[FoodModelFields.price] ?? false);


  toJson()=>{
    FoodModelFields.name:name,
    FoodModelFields.description:description,
    FoodModelFields.price:price,
    FoodModelFields.isSpicy:isSpicy
  };

}

class FoodModelFields{
  static const name = 'name';
  static const description = 'description';
  static const price = 'price';
  static const isSpicy = 'isSpicy';
}