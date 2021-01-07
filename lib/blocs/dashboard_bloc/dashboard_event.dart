part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.fetchRooms() = _fetchRooms;

  // INFO EDITING
  const factory DashboardEvent.addRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required int capacity}) = _AddRoom;
  const factory DashboardEvent.editRoom(
      {@required String number,
      @required String id,
      @required String description,
      @required double price,
      @required int capacity}) = _EditRoom;

  const factory DashboardEvent.deleteRoom(
      String id) = _DeleteRoom;
  const factory DashboardEvent.clearGuestInRoom(
      String number) = _ClearGuestInRoom; // get Room ID

  const factory DashboardEvent.addGuest({
    @required String name,
    @required DateTime from,
    @required DateTime until,
    @required int extraBed,
    @required int members,
    @required String contact,
    @required String picture,
    @required String roomNumber,
  }) = _AddGuest;
  const factory DashboardEvent.editGuest({
    @required String id,
    @required String name,
    @required DateTime from,
    @required DateTime until,
    @required int extraBed,
    @required int members,
    @required String contact,
    @required String picture,
  }) = _EditGuest;


  const factory DashboardEvent.uploadPicture(PickedFile file) = _UploadPicture;
  const factory DashboardEvent.deleteUnsavedPicture(String picture) =
      _DeleteUnsavedPicture; // INFO When getting out of new guest,but guest wasn't saved

  const factory DashboardEvent.roomToEdit(String roomNumber) = _RoomToEdit;
  const factory DashboardEvent.guestToEdit({@required String roomNumber, @required String guestID}) = _GuestToEdit;
  const factory DashboardEvent.roomInFocus(String roomNumber) = _RoomInFocus;
  const factory DashboardEvent.guestInFocus(String guestID) = _GuestInFocus;
}
