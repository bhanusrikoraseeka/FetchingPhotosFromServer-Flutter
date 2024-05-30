import 'package:flutter/material.dart';
import '../Models/PhotoModel.dart';

class PhotoListItem extends StatelessWidget {
  final Photo photo;

  const PhotoListItem({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.network(
          photo.imageUrl,
        ),
        title: Text(photo.title),
        subtitle: Text('ID: ${photo.id}'),
      ),
    );
  }
}

