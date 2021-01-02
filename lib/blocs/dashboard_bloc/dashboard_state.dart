part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState(
      {List<Map<String, dynamic>> rooms,
      Map<String, dynamic> roomInFocus}) = _DashboardState;
  factory DashboardState.initial() => DashboardState(
        rooms: [],
        roomInFocus: {
          'id': '',
          'number': '',
          'description': '',
          'price': 0.0,
          'vacancy': true,
          'capacity': 1,
          'guestID': '',
          'duration': 0,
          'members': 0
        },
      );
}
