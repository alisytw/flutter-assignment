import 'package:flutter/material.dart';
// import '/models/post.dart';
// import '/database/db_helper.dart';
import '/pages/homepage.dart';

void main() async {
  // final DatabaseHelper dbHelper = DatabaseHelper();
  // await dbHelper.initDatabase();
  // await dbHelper.seedData();
  // List<Post> posts = await dbHelper.posts();
  // print(posts);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
