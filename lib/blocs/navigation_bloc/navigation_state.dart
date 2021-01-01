part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    @required MainSpace main,
    @required EditingSpace editing,
  }) = _NavigationState;

  factory NavigationState.initial() =>
      NavigationState(main: MainSpace.welcome, editing: EditingSpace.login);
}
