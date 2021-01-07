import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:lotel/Widgets/SnackBars.dart';
import 'package:meta/meta.dart';

class FirestoreService {
  String hotel;

  FirestoreService(this.hotel);

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CollectionReference get _hotelCollectionRef => _firestore.collection(hotel);

  // INFO FETCHES
  Future<QuerySnapshot> fetchRooms() async {
    try {
      return _hotelCollectionRef.doc(hotel).collection("rooms").get();
    } catch (e) {
      snackError(e.toString());
      return null;
    }
  }

  Future<QuerySnapshot> fetchGuests() async {
    try {
      return _hotelCollectionRef.doc(hotel).collection("guests").get();
    } catch (e) {
      snackError(e.toString());
      return null;
    }
  }

  Future<DocumentSnapshot> fetchGuest(String id) async {
    try {
      return _hotelCollectionRef.doc(hotel).collection("guests").doc(id).get();
    } catch (e) {
      snackError(e.toString());
      return null;
    }
  }

  // INFO SAVES
  Future<String> saveNewRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required int capacity}) async {
    try {
      String id = _hotelCollectionRef.doc().id;
      _hotelCollectionRef.doc(hotel).collection("rooms").doc(id).set(
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
      snackSuccess("Room saved!");
      return id;
    } catch (e) {
      snackError(e);
      return '';
    }
  }

  Future<String> saveNewGuest(
      {@required String name,
      @required int duration,
      @required String roomNumber,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture}) async {
    try {
      String id = _hotelCollectionRef.doc().id;
      _hotelCollectionRef.doc(hotel).collection("guests").doc(id).set(
        {
          'id': id,
          'name': name,
          'roomNumber': roomNumber,
          'from': from,
          'until': until,
          'extraBed': extraBed,
          'members': members,
          'contact': contact,
          'picture': picture
        },
      );
      snackSuccess("Guest saved!");
      return id;
    } catch (e) {
      snackError(e);
      return '';
    }
  }

  Future saveGuestToRoom({
    @required String roomID,
    @required String guestID,
  }) async {
    try {
      _hotelCollectionRef.doc(hotel).collection("rooms").doc(roomID).update(
        {
          'guestID': guestID,
        },
      );
    } catch (e) {
      snackError(e.toString());
    }
  }

  // INFO UPDATES
  Future<bool> editRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required String id,
      @required int capacity}) async {
    try {
      _hotelCollectionRef.doc(hotel).collection("rooms").doc(id).update(
        {
          "number": number,
          "description": description,
          "price": price,
          "capacity": capacity,
        },
      );
      snackSuccess("Room saved!");
      return true;
    } catch (e) {
      snackError(e);
      return false;
    }
  }

  Future<bool> editGuest({
    @required String id,
    @required String name,
    @required DateTime from,
    @required DateTime until,
    @required int extraBed,
    @required int members,
    @required String contact,
    @required String picture,
  }) async {
    try {
      _hotelCollectionRef.doc(hotel).collection("guests").doc(id).update(
        {
          'name': name,
          'from': from,
          'until': until,
          'extraBed': extraBed,
          'members': members,
          'contact': contact,
          'picture': picture
        },
      );
      snackSuccess("Guest saved!");
      return true;
    } catch (e) {
      snackError(e);
      return false;
    }
  }

  // INFO deletes
  Future deleteRoom(String id) async {
    try {
      _hotelCollectionRef.doc(hotel).collection("rooms").doc(id).delete();
    } catch (e) {
      snackError(e);
      return null;
    }
  }
}
