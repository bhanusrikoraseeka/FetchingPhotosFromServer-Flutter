import 'dart:async';
import 'package:api_integration/APIS/FetchPhotoService.dart';
import 'package:api_integration/Models/PhotoModel.dart';
import 'package:get/get.dart';

class PhotosController extends GetxController {
var photos = <Photo>[].obs;
  @override
  void onInit() {
     getPhotos();
    super.onInit();
  }

 FutureOr<void> getPhotos() async {
     final result = await FetchPhotosService.fetchPhotos();
     photos.value = result;
     update();
  }
}