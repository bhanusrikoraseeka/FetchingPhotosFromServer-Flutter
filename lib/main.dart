import 'package:flutter/material.dart';
import 'Views/PhotosDisplay.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Photos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotosDisplay(),
    );
  }
}



