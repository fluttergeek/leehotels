import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lotel/services/api/firestorage_service.dart';
import 'package:lotel/services/api/firestore_service.dart';
import 'package:lotel/Widgets/SnackBars.dart';
import 'package:lotel/services/api/guest_hive.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class GuestRepo {
  factory GuestRepo() => _guestRepo;
  GuestHive _hive;

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
    _hive = GuestHive();
    _firestorageService = FirestorageService();
  }

  Map<String, dynamic> guest;

  Future<Map<String, dynamic>> getGuest(String id) async {
    // If this guest already exists in the list, show the guest in the list instead
    Map<String, dynamic> emptyGuest = {
      'id': '',
      'name': '',
      'roomNumber': '',
      'from': DateTime.now(),
      'until': DateTime.now().add(Duration(days: 1)),
      'extraBed': 0,
      'members': 1,
      'contact': '',
      'picture': ''
    };
    if (id.isEmpty) return emptyGuest;
    guest = _hive.fetchGuest(id);
    if (guest != null) return guest;
    // Else download it from firestore
    DocumentSnapshot _guestSnapshot = await _firestoreService.fetchGuest(id);
    print("guest hive is null");
    if (_guestSnapshot == null)
      return emptyGuest;
    else {
      ConnectivityResult connectivityResult =
          await (Connectivity().checkConnectivity());
      if (_guestSnapshot.exists) {
        Map<String, dynamic> data = _guestSnapshot.data();
        guest = {
          'id': id,
          'name': data['name'],
          'roomNumber': data['roomNumber'],
          'from': data['from'],
          'until': data['until'],
          'extraBed': data['extraBed'],
          'members': data['members'],
          'contact': data['contact'],
          'picture': (connectivityResult == ConnectivityResult.none)
              ? _hive.fetchPicture(id)
              : data['picture']
        };
      } else
        return emptyGuest;
    }
    return guest;
  }

  Future<Map<String, dynamic>> addGuest(
      {@required String name,
      @required String roomNumber,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture}) async {
    String id = await _firestoreService.saveNewGuest(
      contact: contact,
      extraBed: extraBed,
      from: from,
      members: members,
      name: name,
      picture: picture,
      roomNumber: roomNumber,
      until: until,
    );
    print(id);
    Map<String, dynamic> newGuest = {
      'id': id,
      'name': name,
      'roomNumber': roomNumber,
      'from': from,
      'until': until,
      'extraBed': extraBed,
      'members': members,
      'contact': contact,
      'picture': picture
    };
    _hive.addGuest(newGuest);
    return newGuest;
  }

  Future<Map<String, dynamic>> editGuest(
      {@required String id,
      @required String name,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture,
      @required Map<String, dynamic> existingMap}) async {
    await _firestoreService.editGuest(
      id: id,
      contact: contact,
      extraBed: extraBed,
      from: from,
      members: members,
      name: name,
      picture: picture,
      until: until,
    );
    existingMap['contact'] = contact;
    existingMap['extraBed'] = extraBed;
    existingMap['from'] = from;
    existingMap['members'] = members;
    existingMap['name'] = name;
    existingMap['picture'] = picture;
    existingMap['until'] = until;
    _hive.addGuest(existingMap);
    return existingMap;
  }

  Future<String> uploadPicture(PickedFile file, {String guestID}) async {
    _hive.addPicture(file, guestID: guestID);
    // check connectivity
    // if offline, return uintlist
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // save file to temporary db then upload it to the guest when back online
      return null; // this will indicate file upload has failed which will resort to using the file in bloc as the "picture"
    }
    return await _firestorageService.uploadPicture(file: file);
  }
}
