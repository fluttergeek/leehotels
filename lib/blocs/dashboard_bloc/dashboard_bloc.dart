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

  DashboardBloc({this.roomRepo, this.guestRepo})
      : super(DashboardState.initial()) {
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
      roomToEdit: (_RoomToEdit e) async* {
        this.add(DashboardEvent.roomInFocus(e.roomNumber));
        BlocProvider.of<NavigationBloc>(Get.context)
            .add(NavigationEvent.editRoom());
      },
      guestToEdit: (_GuestToEdit e) async* {
        this.add(DashboardEvent.roomInFocus(
            e.roomNumber)); // To account for room capacity
        this.add(DashboardEvent.guestInFocus(e.guestID));
        yield state.copyWith(guestInFocus: null);
        Map<String, dynamic> _guest = await guestRepo.getGuest(e.guestID);
        yield state.copyWith(guestInFocus: _guest);
        print(e.guestID);
        if (e.guestID.isEmpty)
          BlocProvider.of<NavigationBloc>(Get.context)
              .add(NavigationEvent.newGuest());
        else
          BlocProvider.of<NavigationBloc>(Get.context)
              .add(NavigationEvent.editGuest());
      },
      // CHANGE ROOM IN FOCUS
      roomInFocus: (_RoomInFocus e) async* {
        yield state.copyWith(roomInFocus: null);
        yield state.copyWith(
          roomInFocus: roomRepo.rooms.firstWhere(
                (r) => r['number'] == e.roomNumber,
            orElse: () =>
            {
              // For new room
              'id': '',
              'number': '',
              'description': '',
              'price': 0.0,
              'capacity': 2,
              'guestID': '',
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
          temp[temp.indexWhere((room) => room['id'] == e.id)] = edited;
          yield state.copyWith(rooms: temp);
          BlocProvider.of<NavigationBloc>(Get.context)
              .add(NavigationEvent.refreshDashboard());
        }
      },
      deleteRoom: (_DeleteRoom e) async* {
        await roomRepo.deleteRoom(e.id);
        List temp = state.rooms;
        temp.removeWhere((element) => element['id'] == e.id);
        yield state.copyWith(rooms: temp);
        BlocProvider.of<NavigationBloc>(Get.context)
            .add(NavigationEvent.refreshDashboard());
        // BlocProvider.of<NavigationBloc>(Get.context)
        //     .add(NavigationEvent.goNeutralEditor);
      },
      clearGuestInRoom: (_ClearGuestInRoom e) async* {
        List temp = state.rooms;
        int indexOfRoom = temp.indexWhere((room) => room['number'] == e.number);
        temp[indexOfRoom]['guestID'] = '';
        await roomRepo.updateGuest(
            roomID: temp[indexOfRoom]['id'],
            guestID: '',
            map: temp[indexOfRoom]);
        Map<String, dynamic> newGuest = {
          'id': '',
          'name': '',
          'roomNumber': e.number,
          'from': DateTime.now(),
          'until': DateTime.now().add(Duration(days: 1)),
          'extraBed': 0,
          'members': 1,
          'contact': '',
          'picture': ''
        };
        yield state.copyWith(rooms: null, guestInFocus: null);
        yield state.copyWith(rooms: temp, guestInFocus: newGuest);
        BlocProvider.of<NavigationBloc>(Get.context)
            .add(NavigationEvent.refreshDashboard());
        BlocProvider.of<NavigationBloc>(Get.context)
            .add(NavigationEvent.editGuest());
      },
      guestInFocus: (_GuestInFocus e) async* {
        yield state.copyWith(guestInFocus: null);
        Map<String, dynamic> _guest = await guestRepo.getGuest(e.guestID);
        yield state.copyWith(guestInFocus: _guest);
      },
      // INFO saving the new guest to firestore
      addGuest: (_AddGuest e) async* {
        Map<String, dynamic> newGuest = await guestRepo.addGuest(
            members: e.members,
            roomNumber: e.roomNumber,
            extraBed: e.extraBed,
            from: e.from,
            until: e.until,
            contact: e.contact,
            name: e.name,
            picture: e.picture);

        List temp = state.rooms;
        int indexOfRoom =
        temp.indexWhere((room) => room['number'] == e.roomNumber);
        temp[indexOfRoom]['guestID'] = newGuest['id'];
        await roomRepo.updateGuest(
            roomID: temp[indexOfRoom]['id'],
            guestID: newGuest['id'],
            map: temp[indexOfRoom]);
        yield state.copyWith(guestInFocus: null, rooms: null);
        yield state.copyWith(guestInFocus: newGuest, rooms: temp);
        BlocProvider.of<NavigationBloc>(Get.context)
            .add(NavigationEvent.editGuest());
        BlocProvider.of<NavigationBloc>(Get.context)
            .add(NavigationEvent.refreshDashboard());
      },
      // INFO saving the edited contents of guest
      editGuest: (_EditGuest e) async* {
        Map<String, dynamic> newGuest = await guestRepo.editGuest(
            id: e.id,
            members: e.members,
            extraBed: e.extraBed,
            from: e.from,
            until: e.until,
            contact: e.contact,
            name: e.name,
            picture: e.picture);
        yield state.copyWith(guestInFocus: null);
        yield state.copyWith(guestInFocus: newGuest);
        BlocProvider.of<NavigationBloc>(Get.context)
            .add(NavigationEvent.editGuest());
      },
      // INFO When getting out of new guest,but guest wasn't saved
      deleteUnsavedPicture: (_DeleteUnsavedPicture value) async* {},
      uploadPicture: (_UploadPicture e) async* {
        Map<String, dynamic> _guest = state.guestInFocus;
        yield state.copyWith(guestInFocus: null);
        var url = await guestRepo.uploadPicture(e.file, guestID: _guest['id']);
        _guest['picture'] = url == null ? e.file : url;
        yield state.copyWith(guestInFocus: _guest);
      },
    );
  }
}
