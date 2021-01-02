import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:lotel/MainSpace/Dashboard/api/firestore_service.dart';
import 'package:lotel/Widgets/SnackBars.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoomRepo {
  factory RoomRepo() => _roomRepo;

  static final RoomRepo _roomRepo = RoomRepo._intertnal();
  FirestoreService _firestoreService;

  RoomRepo._intertnal() {
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.getString("hotel").isNotEmpty)
        _firestoreService = FirestoreService(prefs.getString("hotel"));
      else
        snackError("No hotel selected. Please log out and login again.");
    });
  }

  List<Map<String, dynamic>> rooms = [];

  Future<List<Map<String, dynamic>>> getRooms() async {
    QuerySnapshot roomsSnapshot = await _firestoreService.fetchRooms();
    if (roomsSnapshot.docs.isEmpty)
      return rooms;
    else {
      roomsSnapshot.docs.forEach((QueryDocumentSnapshot doc) {
        Map<String, dynamic> data = doc.data();
        rooms.add(
          {
            'id': doc.id,
            'number': data['number'],
            'description': data['description'],
            'price': data['price'],
            'vacancy': data['vacancy'],
            'capacity': data['capacity'],
            'guestID': data['guestID'],
            'duration': data['duration'],
            'members': data['members']
          },
        );
      });
    }

    return rooms;
  }

  Future<Map<String, dynamic>> addRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required int capacity}) async {
    String id = await _firestoreService.saveRoom(
      capacity: capacity,
      description: description,
      number: number,
      price: price,
    );
    if (id.isEmpty) return null;
    return {
      'id': id,
      'number': number,
      'description': description,
      'price': price,
      'vacancy': true,
      'capacity': capacity,
      'guestID': '',
      'duration': 0,
      'members': 0
    };
  }

  Future<Map<String, dynamic>> editRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required String id,
      @required int capacity,
      @required Map<String, dynamic> existingMap}) async {
    bool success = await _firestoreService.editRoom(
      id: id,
      capacity: capacity,
      description: description,
      number: number,
      price: price,
    );
    if (success) {
      existingMap['capacity'] = capacity;
      existingMap['description'] = description;
      existingMap['price'] = price;
      existingMap['number'] = number;
      return existingMap;
    } else
      return null;
  }
}
