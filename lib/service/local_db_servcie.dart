import 'package:max_way/data/model/food_model.dart';
import 'package:max_way/utils/file_importer/file_importer.dart';

class LocalDatabase {
  Database? database;
  String tableName = "foods";

  LocalDatabase();

  Future<Database> getDb() async {
    if (database == null) {
      database = await createDatabase();
      return database!;
    }
    return database!;
  }

  createDatabase() async {
    print("Database ochish uchun harakat boshlandi");

    String databasesPath = await getDatabasesPath();
    String dbPath = '${databasesPath}foods.db';
    print("Databasening manzili $dbPath");

    var database = await openDatabase(dbPath, version: 1, onCreate: populateDb);
    print("Database ochildi");
    print("Database ochiqmi:   ${database.isOpen}");

    return database;
  }


  void populateDb(Database database, int version) async {
    await database.execute("CREATE TABLE $tableName ("
        "${FoodModelFields.name} TEXT,"
        "${FoodModelFields.image} TEXT,"
        "${FoodModelFields.price} INTEGER,"
        "${FoodModelFields.isSpicy} BLOB,"
        "${FoodModelFields.description} TEXT"
        ")");
  }

  Future addFood(FoodModel food) async {
    Database db = await getDb();
    var id = await db.insert(tableName, food.toJson());
    debugPrint("Mind $id bilan databsega saqlandi");
  }

  Future<List> getFoods() async {
    Database db = await getDb();

    var result = await db.query(tableName, columns: [
      FoodModelFields.description,
      FoodModelFields.name,
      FoodModelFields.isSpicy,
      FoodModelFields.image,
      FoodModelFields.price
    ]);
    print(result);
    return result.toList();
  }


  Future deleteFood(String foodName) async {
    Database db = await getDb();
    await db.delete(tableName, where: '${FoodModelFields.name} = ?', whereArgs: [foodName]);
    print("Deteted");
  }
}
