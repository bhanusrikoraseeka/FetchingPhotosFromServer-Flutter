// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/PhotoModel.dart';
class FetchPhotosService {

 static Future<List<Photo>> fetchPhotos() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      final photos = jsonData.map((data) => Photo.fromJson(data)).toList();
      print('got data from service : $photos');
      return photos;
    } else {
      print('Error fetching photos: ${response.statusCode}');
      return [];
    }
  }
}