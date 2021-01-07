import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

class GuestHive {
  var box;

  GuestHive() {
    Hive.openBox('guests').then((value) => box = value);
  }

  // Fetches

  Map<String, dynamic> fetchGuest(String id) {
    var result = box.get(id);
    return result != null ? Map<String, dynamic>.from(result) : null;
  }

  Uint8List fetchPicture(String guestID) {
    return Uint8List.fromList(box.get('picture-$guestID'));
  }

  // Adds

  addGuest(Map<String, dynamic> guest) {
    box.put(guest['id'], guest);
  }

  Future addPicture(PickedFile file, {String guestID}) async {
    box.put('picture-$guestID', String.fromCharCodes(await file.readAsBytes()));
  }
}
