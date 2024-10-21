import '../models/post.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'social_media.db');

    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  void _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE posts(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        content TEXT
      )
    ''');
  }

  Future seedData() async {
    final dbHelper = DatabaseHelper();
    await dbHelper.database.then(
      (database) {
        database.insert(
          'posts',
          {
            'title': 'Kylie Jenner .With Zoe Sugg',
            'content': '',
          },
        );
        database.insert(
          'posts',
          {
            'title': 'Alex Strohl',
            'content':
                'This is one of the best experiences I\'ve had in my life! The mountain view is amazing!!!',
          },
        );
        database.insert(
          'posts',
          {
            'title': 'Alexa',
            'content': '',
          },
        );
      },
    );
  }

  Future<List<Post>> posts() async {
    final db = await database;
    final List<Map<String, Object?>> postMaps = await db.query('posts');
    return [
      for (final {
            'id': id as int,
            'title': title as String,
            'content': content as String,
          } in postMaps)
        Post(id: id, title: title, content: content),
    ];
  }
}
