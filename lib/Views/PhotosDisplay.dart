import 'package:api_integration/Controller/PhotosController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'PhotoListItem.dart';

class PhotosDisplay extends StatelessWidget {
   PhotosDisplay({Key? key}) : super(key: key);

  final controller = Get.put(PhotosController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Photos'),
      ),
      body: GetX<PhotosController>(
                builder: (_) => ListView.builder(
        itemCount: controller.photos.length,
        itemBuilder: (BuildContext context, int index) {
          return PhotoListItem(key: ValueKey(controller.photos[index].id), photo: controller.photos[index]);
        },
       ),
      ),
    );
  }
}

