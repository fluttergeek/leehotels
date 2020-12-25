part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState.initial() = _Initial;
  const factory NavigationState.loadInProgress() = _LoadInProgress;
  const factory NavigationState.loadSuccess() = _LoadSuccess;
  const factory NavigationState.loadFailure() = _LoadFailure;

}