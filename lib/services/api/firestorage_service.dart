import 'dart:convert';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lotel/Widgets/SnackBars.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart';
import "package:image/image.dart" as ImD;

class FirestorageService {
  final FirebaseStorage _firestorage = FirebaseStorage.instance;

  Future<String> uploadPicture({@required PickedFile file}) async {
    try {
      Reference ref = _firestorage
          .ref()
          .child("guestIDs/${DateTime.now().millisecondsSinceEpoch}.jpg");

      UploadTask uploadTask = ref.putData(
          await file.readAsBytes(),
          SettableMetadata(
              contentType: 'image/jpeg',
              customMetadata: {'picked-file-path': file.path}));
      TaskSnapshot taskSnapshot = await uploadTask
          .whenComplete(() => snackSuccess("ID uploaded!"))
          .catchError((onError) => snackError(onError.toString()));

      String url = await taskSnapshot.ref.getDownloadURL();

      return url;
    } catch (e) {
      snackError(e.toString());
      return null;
    }
  }

  deletePicture({@required String pic}) {
    try {
      (_firestorage.refFromURL(pic)).delete();
    } catch (e) {
      snackError(e);
    }
  }

  // Future<File> compressingPhoto(File file) async {
  //   ImD.Image mImageFile = ImD.decodeImage(file.readAsBytesSync());
  //   final compressedImageFile = file
  //     ..writeAsBytesSync(ImD.encodeJpg(mImageFile, quality: 90));
  //   return compressedImageFile;
  // }
}
