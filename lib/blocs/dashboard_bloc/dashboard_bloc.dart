import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lotel/services/repositories/GuestRepository.dart';
import 'package:lotel/services/repositories/RoomRepository.dart';
import 'package:lotel/blocs/navigation_bloc/navigation_bloc.dart';

part 'dashboard_state.dart';
part 'dashboard_event.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  RoomRepo roomRepo;
  GuestRepo guestRepo;
  DashboardBloc({this.roomRepo, this.guestRepo}) : super(DashboardState.initial()) {
    Future.delayed(Duration(seconds: 1));
    this.add(DashboardEvent.fetchRooms());
  }

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent gEvent) async* {
    yield* gEvent.map(
      // INFO FETCH ROOMS
      fetchRooms: (_fetchRooms value) async* {
        yield state.copyWith(rooms: await roomRepo.getRooms());
      },
      // INFO ADD ROOM
      addRoom: (_AddRoom e) async* {
        Map<String, dynamic> newRoom = await roomRepo.addRoom(
            number: e.number,
            description: e.description,
            price: e.price,
            capacity: e.capacity);
        List temp = state.rooms;
        temp.add(newRoom);
        yield state.copyWith(rooms: temp);
        BlocProvider.of<NavigationBloc>(Get.context)
            .add(NavigationEvent.editRoom());
        this.add(DashboardEvent.roomInFocus(e.number));
      },
      // CHANGE ROOM IN FOCUS
      roomInFocus: (_RoomInFocus e) async* {
        yield state.copyWith(
          roomInFocus: roomRepo.rooms.firstWhere(
            (r) => r['number'] == e.roomNumber,
            orElse: () => {
              // For new room
              'id': '',
              'number': '',
              'description': '',
              'price': 0.0,
              'vacancy': true,
              'capacity': 2,
              'guestID': '',
              'duration': 0,
              'members': 0
            },
          ),
        );
      },
      // EDIT ROOM
      editRoom: (_EditRoom e) async* {
        Map<String, dynamic> edited = await roomRepo.editRoom(
            id: e.id,
            number: e.number,
            description: e.description,
            price: e.price,
            capacity: e.capacity,
            existingMap: state.roomInFocus);
        if (edited != null) {
          // Successfully edited
          List temp = state.rooms;
          temp[temp.indexWhere((element) => element['id'] == e.id)] = edited;
          yield state.copyWith(rooms: temp);
          BlocProvider.of<NavigationBloc>(Get.context)
              .add(NavigationEvent.refreshDashboard());
        }
      },
      guestInFocus: (_GuestInFocus e) async* {
        yield state.copyWith(
          roomInFocus: roomRepo.rooms.firstWhere(
            (r) => r['id'] == e.guestID,
            orElse: () => {
              // For new guest
              'id': '',
              'name': '',
              'duration': 0,
              'roomNumber': '',
              'from': DateTime.now(),
              'until': DateTime.now(),
              'extraBed': 0,
              'members': 1,
              'contact': '',
              'picture': ''
            },
          ),
        );
      },
      addGuest: (_AddGuest value) async* {},
      editGuest: (_EditGuest value) async* {},
      // INFO When getting out of new guest,but guest wasn't saved
      deleteUnsavedPicture: (_DeleteUnsavedPicture value) async* {},
      uploadPicture: (_UploadPicture e) async* {
        Map<String, dynamic> _guest = state.guestInFocus;
        _guest['picture'] = guestRepo.uploadPicture(e.file);
        yield state.copyWith(guestInFocus: _guest);
      },
    );
  }
}
