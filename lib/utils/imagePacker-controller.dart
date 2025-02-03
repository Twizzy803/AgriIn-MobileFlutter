import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagePickerController {
  File? filePath;
  final ImagePicker picker = ImagePicker();

// Ambil gambar dari kamera
  Future<void> pickImageCamera(Function(File?) onImagePicker) async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      onImagePicker(File(image.path));
    }
  }

//Ambil gambar dari Galeri
  Future<void> pickImageGallery(Function(File?) onImagePicker) async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      onImagePicker(File(image.path));
    }
  }
}
