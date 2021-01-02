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

  const factory DashboardEvent.roomInFocus(String roomNumber) = _RoomInFocus;
}
