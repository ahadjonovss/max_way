class FoodModel {
  final String name;
  final String description;
  final int price;
  final bool isSpicy;
  final String image;
  final bool isFromDb;

  FoodModel(
      {required this.name,
        this.isFromDb=false,
      required this.description,
      required this.image,
      required this.price,
      this.isSpicy = false});

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      isFromDb: true,
        image: json[FoodModelFields.image] ?? "",
        name: json[FoodModelFields.name] ?? "No name",
        description: json[FoodModelFields.description] ?? "No data",
        price: json[FoodModelFields.price] ?? 0,
        isSpicy: json[FoodModelFields.isSpicy] is int
            ? json[FoodModelFields.isSpicy] == 1
                ? true
                : false
            : json[FoodModelFields.isSpicy] ?? false);
  }

  toJson() => {
        FoodModelFields.name: name,
        FoodModelFields.description: description,
        FoodModelFields.price: price,
        FoodModelFields.isSpicy: isSpicy,
        FoodModelFields.image: image
      };
}

class FoodModelFields {
  static const name = 'name';
  static const description = 'description';
  static const price = 'price';
  static const isSpicy = 'isSpicy';
  static const image = 'image';
}

List<FoodModel> pizzas = [
  FoodModel(
      name: "Gavaya 🧀",
      description:
          "Горячая закуска с митболами из говядины, томатами, моцареллой и соусом чипотле",
      price: 45000,
      isSpicy: true,
      image: "gavaya"),
  FoodModel(
      name: "Mexica 🌶️",
      description:
          "Горячая закуска с митболами из говядины, томатами,моцареллой и соусом чипотле",
      price: 64000,
      isSpicy: true,
      image: "mexica"),
  FoodModel(
      name: "Hot achchiko 🍀️",
      description:
          "Горячая закуска с митболами из говядины, томатами,моцареллой и соусом чипотле",
      price: 53000,
      image: "hotachchico"),
];
List<FoodModel> burgers = [
  FoodModel(
      name: "Cheeseburger 🧀",
      description:
          "Горячая закуска с митболами из говядины, томатами, моцареллой и соусом чипотле",
      price: 23000,
      isSpicy: true,
      image: "cheeseburger"),
  FoodModel(
      name: "Chilliburger 🌶️",
      description:
          "Горячая закуска с митболами из говядины, томатами,моцареллой и соусом чипотле",
      price: 23000,
      isSpicy: true,
      image: "chilliburger"),
  FoodModel(
      name: "Hamburger 🍀️",
      description:
          "Горячая закуска с митболами из говядины, томатами,моцареллой и соусом чипотле",
      price: 53000,
      image: "hamburger"),
];
List<FoodModel> combos = [
  FoodModel(
      name: "Kombo-1",
      description:
          "Горячая закуска с митболами из говядины, томатами, моцареллой и соусом чипотле",
      price: 23000,
      image: "combo1"),
  FoodModel(
      name: "Kombo-2",
      description:
          "Горячая закуска с митболами из говядины, томатами, моцареллой и соусом чипотле",
      price: 25000,
      image: "combo2"),
  FoodModel(
      name: "Kombo-3",
      description:
          "Горячая закуска с митболами из говядины, томатами, моцареллой и соусом чипотле",
      price: 30000,
      image: "combo3"),
];
List<FoodModel> drinks = [
  FoodModel(
      name: "Sprite 1L",
      description:
          "Горячая закуска с митболами из говядины, томатами, моцареллой и соусом чипотле",
      price: 6000,
      image: "sprite"),
  FoodModel(
      name: "Coca-cola 1.5L",
      description:
          "Горячая закуска с митболами из говядины, томатами, моцареллой и соусом чипотле",
      price: 9000,
      image: "cola"),
  FoodModel(
      name: "Fanta 1L",
      description:
          "Горячая закуска с митболами из говядины, томатами, моцареллой и соусом чипотле",
      price: 6000,
      image: "fanta"),
];
