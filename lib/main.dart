import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/pages/instagram_clone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.amber,
        bottomAppBarColor: Colors.green,
      ),
      home: const InstagramClonePage(),
    );
  }
}
