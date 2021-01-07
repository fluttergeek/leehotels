import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

class RoomHive {
  var box;

  RoomHive() {
    Hive.openBox('rooms').then((value) => box = value);
  }

  // Fetches

  Map<String, dynamic> fetchRoom(String id) {
    return Map<String, dynamic>.from(box.get(id));
  }

  Uint8List fetchPicture(String guestID) {
    return Uint8List.fromList(box.get('picture-$guestID'));
  }

  // Adds

  addRoom(Map<String, dynamic> room) {
    box.put(room['id'], room);
  }

  Future addPicture(PickedFile file, {String guestID}) async {
    box.put('picture-$guestID', String.fromCharCodes(await file.readAsBytes()));
  }
}
