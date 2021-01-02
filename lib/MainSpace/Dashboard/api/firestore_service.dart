import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lotel/Widgets/SnackBars.dart';
import 'package:meta/meta.dart';

class FirestoreService {
  String hotel;
  FirestoreService(this.hotel);
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  CollectionReference get _hotelCollectionRef => _firestore.collection(hotel);

  Future<QuerySnapshot> fetchRooms() async {
    try {
      return _hotelCollectionRef.doc(hotel).collection("rooms").get();
    } catch (e) {
      snackError(e);
      return null;
    }
  }

  Future<String> saveRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required int capacity}) async {
    try {
      DocumentReference docRef =
          await _hotelCollectionRef.doc(hotel).collection("rooms").add(
        {
          "number": number,
          "description": description,
          "price": price,
          "vacancy": true,
          "capacity": capacity,
          'guestID': '',
          'duration': 0,
          'members': 0
        },
      );
      await snackSuccess("Room saved!");
      return docRef.id;
    } catch (e) {
      snackError(e);
      return '';
    }
  }

  Future<bool> editRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required String id,
      @required int capacity}) async {
    try {
      await _hotelCollectionRef.doc(hotel).collection("rooms").doc(id).update(
        {
          "number": number,
          "description": description,
          "price": price,
          "capacity": capacity,
        },
      );
      await snackSuccess("Room saved!");
      return true;
    } catch (e) {
      snackError(e);
      return false;
    }
  }
}
