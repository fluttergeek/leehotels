import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lotel/services/api/firestorage_service.dart';
import 'package:lotel/services/api/firestore_service.dart';
import 'package:lotel/Widgets/SnackBars.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GuestRepo {
  factory GuestRepo() => _guestRepo;

  static final GuestRepo _guestRepo = GuestRepo._intertnal();
  FirestoreService _firestoreService;
  FirestorageService _firestorageService;

  GuestRepo._intertnal() {
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.getString("hotel").isNotEmpty)
        _firestoreService = FirestoreService(prefs.getString("hotel"));
      else
        snackError("No hotel selected. Please log out and login again.");
    });
    _firestorageService = FirestorageService();
  }

  Map<String, dynamic> guest;
  List<Map<String, dynamic>> guests = [];

  Future<Map<String, dynamic>> getGuest(String id) async {
    // If this guest already exists in the list, show the guest in the list instead
    guest = guests.firstWhere((g) => g['id'] == id, orElse: () => null);
    if (guest != null) return guest;
    // Else download it from firestore
    DocumentSnapshot _guestSnapshot = await _firestoreService.fetchGuest(id);
    if (!_guestSnapshot.exists)
      return null;
    else {
      Map<String, dynamic> data = _guestSnapshot.data();
      guest = {
        'id': id,
        'name': data['name'],
        'duration': data['duration'],
        'roomNumber': data['roomNumber'],
        'from': data['from'],
        'until': data['until'],
        'extraBed': data['extraBed'],
        'members': data['members'],
        'contact': data['contact'],
        'picture': data['picture']
      };
      guests.add(guest); // because the guest is not yet in the list
    }

    return guest;
  }

  Future<Map<String, dynamic>> addGuest(
      {@required String name,
      @required int duration,
      @required String roomNumber,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture}) async {
    String id = await _firestoreService.saveNewGuest(
      contact: contact,
      duration: duration,
      extraBed: extraBed,
      from: from,
      members: members,
      name: name,
      picture: picture,
      roomNumber: roomNumber,
      until: until,
    );
    if (id.isEmpty) return null;
    return {
      'id': id,
      'name': name,
      'duration': duration,
      'roomNumber': roomNumber,
      'from': from,
      'until': until,
      'extraBed': extraBed,
      'members': members,
      'contact': contact,
      'picture': picture
    };
  }

  Future<Map<String, dynamic>> editGuest(
      {@required String id,
      @required String name,
      @required int duration,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture,
      @required Map<String, dynamic> existingMap}) async {
    bool success = await _firestoreService.editGuest(
      id: id,
      contact: contact,
      duration: duration,
      extraBed: extraBed,
      from: from,
      members: members,
      name: name,
      picture: picture,
      until: until,
    );
    if (success) {
      existingMap['contact'] = contact;
      existingMap['duration'] = duration;
      existingMap['extraBed'] = extraBed;
      existingMap['from'] = from;
      existingMap['members'] = members;
      existingMap['name'] = name;
      existingMap['picture'] = picture;
      existingMap['until'] = until;

      return existingMap;
    } else
      return null;
  }

  Future<String> uploadPicture(PickedFile file) async {
    return await _firestorageService.uploadPicture(file: file);
  }
}
