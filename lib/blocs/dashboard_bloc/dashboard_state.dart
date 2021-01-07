part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState(
      {List<Map<String, dynamic>> rooms,
      Map<String, dynamic> roomInFocus,
      Map<String, dynamic> guestInFocus}) = _DashboardState;
  factory DashboardState.initial() => DashboardState(
        rooms: [],
        roomInFocus: {
          'id': '',
          'number': '',
          'description': '',
          'price': 0.0,
          'capacity': 2,
          'guestID': '',
          'members': 0
        },
        guestInFocus: {
          'id': '',
          'name': '',
          'roomNumber': '',
          'from': DateTime.now(),
          'until': DateTime.now().add(Duration(days: 1)),
          'extraBed': 0,
          'members': 1,
          'contact': '',
          'picture': ''
        },
      );
}
