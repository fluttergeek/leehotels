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
          'vacancy': true,
          'capacity': 2,
          'guestID': '',
          'duration': 0,
          'members': 0
        },
        guestInFocus: {
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
      );
}
