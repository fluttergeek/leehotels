// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

// ignore: unused_element
  _NavigationState call(
      {@required MainSpace main, @required EditingSpace editing}) {
    return _NavigationState(
      main: main,
      editing: editing,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  MainSpace get main;
  EditingSpace get editing;

  $NavigationStateCopyWith<NavigationState> get copyWith;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({MainSpace main, EditingSpace editing});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object main = freezed,
    Object editing = freezed,
  }) {
    return _then(_value.copyWith(
      main: main == freezed ? _value.main : main as MainSpace,
      editing: editing == freezed ? _value.editing : editing as EditingSpace,
    ));
  }
}

/// @nodoc
abstract class _$NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(
          _NavigationState value, $Res Function(_NavigationState) then) =
      __$NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({MainSpace main, EditingSpace editing});
}

/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(
      _NavigationState _value, $Res Function(_NavigationState) _then)
      : super(_value, (v) => _then(v as _NavigationState));

  @override
  _NavigationState get _value => super._value as _NavigationState;

  @override
  $Res call({
    Object main = freezed,
    Object editing = freezed,
  }) {
    return _then(_NavigationState(
      main: main == freezed ? _value.main : main as MainSpace,
      editing: editing == freezed ? _value.editing : editing as EditingSpace,
    ));
  }
}

/// @nodoc
class _$_NavigationState implements _NavigationState {
  const _$_NavigationState({@required this.main, @required this.editing})
      : assert(main != null),
        assert(editing != null);

  @override
  final MainSpace main;
  @override
  final EditingSpace editing;

  @override
  String toString() {
    return 'NavigationState(main: $main, editing: $editing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationState &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)) &&
            (identical(other.editing, editing) ||
                const DeepCollectionEquality().equals(other.editing, editing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(main) ^
      const DeepCollectionEquality().hash(editing);

  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {@required MainSpace main,
      @required EditingSpace editing}) = _$_NavigationState;

  @override
  MainSpace get main;
  @override
  EditingSpace get editing;
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith;
}

/// @nodoc
class _$NavigationEventTearOff {
  const _$NavigationEventTearOff();

// ignore: unused_element
  _GoToDashboard goToDashboard() {
    return const _GoToDashboard();
  }

// ignore: unused_element
  _RefreshDashboardOnly refreshDashboard() {
    return const _RefreshDashboardOnly();
  }

// ignore: unused_element
  _SignIn signIn({String hotel, String password}) {
    return _SignIn(
      hotel: hotel,
      password: password,
    );
  }

// ignore: unused_element
  _GoToWelcome signOut() {
    return const _GoToWelcome();
  }

// ignore: unused_element
  _NewRoom newRoom() {
    return const _NewRoom();
  }

// ignore: unused_element
  _EditRoom editRoom() {
    return const _EditRoom();
  }

// ignore: unused_element
  _EditGuest editGuest() {
    return const _EditGuest();
  }
}

/// @nodoc
// ignore: unused_element
const $NavigationEvent = _$NavigationEventTearOff();

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult goToDashboard(),
    @required TResult refreshDashboard(),
    @required TResult signIn(String hotel, String password),
    @required TResult signOut(),
    @required TResult newRoom(),
    @required TResult editRoom(),
    @required TResult editGuest(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult goToDashboard(),
    TResult refreshDashboard(),
    TResult signIn(String hotel, String password),
    TResult signOut(),
    TResult newRoom(),
    TResult editRoom(),
    TResult editGuest(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult goToDashboard(_GoToDashboard value),
    @required TResult refreshDashboard(_RefreshDashboardOnly value),
    @required TResult signIn(_SignIn value),
    @required TResult signOut(_GoToWelcome value),
    @required TResult newRoom(_NewRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult editGuest(_EditGuest value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult goToDashboard(_GoToDashboard value),
    TResult refreshDashboard(_RefreshDashboardOnly value),
    TResult signIn(_SignIn value),
    TResult signOut(_GoToWelcome value),
    TResult newRoom(_NewRoom value),
    TResult editRoom(_EditRoom value),
    TResult editGuest(_EditGuest value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;
}

/// @nodoc
abstract class _$GoToDashboardCopyWith<$Res> {
  factory _$GoToDashboardCopyWith(
          _GoToDashboard value, $Res Function(_GoToDashboard) then) =
      __$GoToDashboardCopyWithImpl<$Res>;
}

/// @nodoc
class __$GoToDashboardCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$GoToDashboardCopyWith<$Res> {
  __$GoToDashboardCopyWithImpl(
      _GoToDashboard _value, $Res Function(_GoToDashboard) _then)
      : super(_value, (v) => _then(v as _GoToDashboard));

  @override
  _GoToDashboard get _value => super._value as _GoToDashboard;
}

/// @nodoc
class _$_GoToDashboard implements _GoToDashboard {
  const _$_GoToDashboard();

  @override
  String toString() {
    return 'NavigationEvent.goToDashboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GoToDashboard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult goToDashboard(),
    @required TResult refreshDashboard(),
    @required TResult signIn(String hotel, String password),
    @required TResult signOut(),
    @required TResult newRoom(),
    @required TResult editRoom(),
    @required TResult editGuest(),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return goToDashboard();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult goToDashboard(),
    TResult refreshDashboard(),
    TResult signIn(String hotel, String password),
    TResult signOut(),
    TResult newRoom(),
    TResult editRoom(),
    TResult editGuest(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (goToDashboard != null) {
      return goToDashboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult goToDashboard(_GoToDashboard value),
    @required TResult refreshDashboard(_RefreshDashboardOnly value),
    @required TResult signIn(_SignIn value),
    @required TResult signOut(_GoToWelcome value),
    @required TResult newRoom(_NewRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult editGuest(_EditGuest value),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return goToDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult goToDashboard(_GoToDashboard value),
    TResult refreshDashboard(_RefreshDashboardOnly value),
    TResult signIn(_SignIn value),
    TResult signOut(_GoToWelcome value),
    TResult newRoom(_NewRoom value),
    TResult editRoom(_EditRoom value),
    TResult editGuest(_EditGuest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (goToDashboard != null) {
      return goToDashboard(this);
    }
    return orElse();
  }
}

abstract class _GoToDashboard implements NavigationEvent {
  const factory _GoToDashboard() = _$_GoToDashboard;
}

/// @nodoc
abstract class _$RefreshDashboardOnlyCopyWith<$Res> {
  factory _$RefreshDashboardOnlyCopyWith(_RefreshDashboardOnly value,
          $Res Function(_RefreshDashboardOnly) then) =
      __$RefreshDashboardOnlyCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshDashboardOnlyCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$RefreshDashboardOnlyCopyWith<$Res> {
  __$RefreshDashboardOnlyCopyWithImpl(
      _RefreshDashboardOnly _value, $Res Function(_RefreshDashboardOnly) _then)
      : super(_value, (v) => _then(v as _RefreshDashboardOnly));

  @override
  _RefreshDashboardOnly get _value => super._value as _RefreshDashboardOnly;
}

/// @nodoc
class _$_RefreshDashboardOnly implements _RefreshDashboardOnly {
  const _$_RefreshDashboardOnly();

  @override
  String toString() {
    return 'NavigationEvent.refreshDashboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RefreshDashboardOnly);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult goToDashboard(),
    @required TResult refreshDashboard(),
    @required TResult signIn(String hotel, String password),
    @required TResult signOut(),
    @required TResult newRoom(),
    @required TResult editRoom(),
    @required TResult editGuest(),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return refreshDashboard();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult goToDashboard(),
    TResult refreshDashboard(),
    TResult signIn(String hotel, String password),
    TResult signOut(),
    TResult newRoom(),
    TResult editRoom(),
    TResult editGuest(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshDashboard != null) {
      return refreshDashboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult goToDashboard(_GoToDashboard value),
    @required TResult refreshDashboard(_RefreshDashboardOnly value),
    @required TResult signIn(_SignIn value),
    @required TResult signOut(_GoToWelcome value),
    @required TResult newRoom(_NewRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult editGuest(_EditGuest value),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return refreshDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult goToDashboard(_GoToDashboard value),
    TResult refreshDashboard(_RefreshDashboardOnly value),
    TResult signIn(_SignIn value),
    TResult signOut(_GoToWelcome value),
    TResult newRoom(_NewRoom value),
    TResult editRoom(_EditRoom value),
    TResult editGuest(_EditGuest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshDashboard != null) {
      return refreshDashboard(this);
    }
    return orElse();
  }
}

abstract class _RefreshDashboardOnly implements NavigationEvent {
  const factory _RefreshDashboardOnly() = _$_RefreshDashboardOnly;
}

/// @nodoc
abstract class _$SignInCopyWith<$Res> {
  factory _$SignInCopyWith(_SignIn value, $Res Function(_SignIn) then) =
      __$SignInCopyWithImpl<$Res>;
  $Res call({String hotel, String password});
}

/// @nodoc
class __$SignInCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements _$SignInCopyWith<$Res> {
  __$SignInCopyWithImpl(_SignIn _value, $Res Function(_SignIn) _then)
      : super(_value, (v) => _then(v as _SignIn));

  @override
  _SignIn get _value => super._value as _SignIn;

  @override
  $Res call({
    Object hotel = freezed,
    Object password = freezed,
  }) {
    return _then(_SignIn(
      hotel: hotel == freezed ? _value.hotel : hotel as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_SignIn implements _SignIn {
  const _$_SignIn({this.hotel, this.password});

  @override
  final String hotel;
  @override
  final String password;

  @override
  String toString() {
    return 'NavigationEvent.signIn(hotel: $hotel, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignIn &&
            (identical(other.hotel, hotel) ||
                const DeepCollectionEquality().equals(other.hotel, hotel)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hotel) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$SignInCopyWith<_SignIn> get copyWith =>
      __$SignInCopyWithImpl<_SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult goToDashboard(),
    @required TResult refreshDashboard(),
    @required TResult signIn(String hotel, String password),
    @required TResult signOut(),
    @required TResult newRoom(),
    @required TResult editRoom(),
    @required TResult editGuest(),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return signIn(hotel, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult goToDashboard(),
    TResult refreshDashboard(),
    TResult signIn(String hotel, String password),
    TResult signOut(),
    TResult newRoom(),
    TResult editRoom(),
    TResult editGuest(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signIn != null) {
      return signIn(hotel, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult goToDashboard(_GoToDashboard value),
    @required TResult refreshDashboard(_RefreshDashboardOnly value),
    @required TResult signIn(_SignIn value),
    @required TResult signOut(_GoToWelcome value),
    @required TResult newRoom(_NewRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult editGuest(_EditGuest value),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult goToDashboard(_GoToDashboard value),
    TResult refreshDashboard(_RefreshDashboardOnly value),
    TResult signIn(_SignIn value),
    TResult signOut(_GoToWelcome value),
    TResult newRoom(_NewRoom value),
    TResult editRoom(_EditRoom value),
    TResult editGuest(_EditGuest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements NavigationEvent {
  const factory _SignIn({String hotel, String password}) = _$_SignIn;

  String get hotel;
  String get password;
  _$SignInCopyWith<_SignIn> get copyWith;
}

/// @nodoc
abstract class _$GoToWelcomeCopyWith<$Res> {
  factory _$GoToWelcomeCopyWith(
          _GoToWelcome value, $Res Function(_GoToWelcome) then) =
      __$GoToWelcomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$GoToWelcomeCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$GoToWelcomeCopyWith<$Res> {
  __$GoToWelcomeCopyWithImpl(
      _GoToWelcome _value, $Res Function(_GoToWelcome) _then)
      : super(_value, (v) => _then(v as _GoToWelcome));

  @override
  _GoToWelcome get _value => super._value as _GoToWelcome;
}

/// @nodoc
class _$_GoToWelcome implements _GoToWelcome {
  const _$_GoToWelcome();

  @override
  String toString() {
    return 'NavigationEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GoToWelcome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult goToDashboard(),
    @required TResult refreshDashboard(),
    @required TResult signIn(String hotel, String password),
    @required TResult signOut(),
    @required TResult newRoom(),
    @required TResult editRoom(),
    @required TResult editGuest(),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult goToDashboard(),
    TResult refreshDashboard(),
    TResult signIn(String hotel, String password),
    TResult signOut(),
    TResult newRoom(),
    TResult editRoom(),
    TResult editGuest(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult goToDashboard(_GoToDashboard value),
    @required TResult refreshDashboard(_RefreshDashboardOnly value),
    @required TResult signIn(_SignIn value),
    @required TResult signOut(_GoToWelcome value),
    @required TResult newRoom(_NewRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult editGuest(_EditGuest value),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult goToDashboard(_GoToDashboard value),
    TResult refreshDashboard(_RefreshDashboardOnly value),
    TResult signIn(_SignIn value),
    TResult signOut(_GoToWelcome value),
    TResult newRoom(_NewRoom value),
    TResult editRoom(_EditRoom value),
    TResult editGuest(_EditGuest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _GoToWelcome implements NavigationEvent {
  const factory _GoToWelcome() = _$_GoToWelcome;
}

/// @nodoc
abstract class _$NewRoomCopyWith<$Res> {
  factory _$NewRoomCopyWith(_NewRoom value, $Res Function(_NewRoom) then) =
      __$NewRoomCopyWithImpl<$Res>;
}

/// @nodoc
class __$NewRoomCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements _$NewRoomCopyWith<$Res> {
  __$NewRoomCopyWithImpl(_NewRoom _value, $Res Function(_NewRoom) _then)
      : super(_value, (v) => _then(v as _NewRoom));

  @override
  _NewRoom get _value => super._value as _NewRoom;
}

/// @nodoc
class _$_NewRoom implements _NewRoom {
  const _$_NewRoom();

  @override
  String toString() {
    return 'NavigationEvent.newRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NewRoom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult goToDashboard(),
    @required TResult refreshDashboard(),
    @required TResult signIn(String hotel, String password),
    @required TResult signOut(),
    @required TResult newRoom(),
    @required TResult editRoom(),
    @required TResult editGuest(),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return newRoom();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult goToDashboard(),
    TResult refreshDashboard(),
    TResult signIn(String hotel, String password),
    TResult signOut(),
    TResult newRoom(),
    TResult editRoom(),
    TResult editGuest(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newRoom != null) {
      return newRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult goToDashboard(_GoToDashboard value),
    @required TResult refreshDashboard(_RefreshDashboardOnly value),
    @required TResult signIn(_SignIn value),
    @required TResult signOut(_GoToWelcome value),
    @required TResult newRoom(_NewRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult editGuest(_EditGuest value),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return newRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult goToDashboard(_GoToDashboard value),
    TResult refreshDashboard(_RefreshDashboardOnly value),
    TResult signIn(_SignIn value),
    TResult signOut(_GoToWelcome value),
    TResult newRoom(_NewRoom value),
    TResult editRoom(_EditRoom value),
    TResult editGuest(_EditGuest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newRoom != null) {
      return newRoom(this);
    }
    return orElse();
  }
}

abstract class _NewRoom implements NavigationEvent {
  const factory _NewRoom() = _$_NewRoom;
}

/// @nodoc
abstract class _$EditRoomCopyWith<$Res> {
  factory _$EditRoomCopyWith(_EditRoom value, $Res Function(_EditRoom) then) =
      __$EditRoomCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditRoomCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements _$EditRoomCopyWith<$Res> {
  __$EditRoomCopyWithImpl(_EditRoom _value, $Res Function(_EditRoom) _then)
      : super(_value, (v) => _then(v as _EditRoom));

  @override
  _EditRoom get _value => super._value as _EditRoom;
}

/// @nodoc
class _$_EditRoom implements _EditRoom {
  const _$_EditRoom();

  @override
  String toString() {
    return 'NavigationEvent.editRoom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditRoom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult goToDashboard(),
    @required TResult refreshDashboard(),
    @required TResult signIn(String hotel, String password),
    @required TResult signOut(),
    @required TResult newRoom(),
    @required TResult editRoom(),
    @required TResult editGuest(),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return editRoom();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult goToDashboard(),
    TResult refreshDashboard(),
    TResult signIn(String hotel, String password),
    TResult signOut(),
    TResult newRoom(),
    TResult editRoom(),
    TResult editGuest(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editRoom != null) {
      return editRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult goToDashboard(_GoToDashboard value),
    @required TResult refreshDashboard(_RefreshDashboardOnly value),
    @required TResult signIn(_SignIn value),
    @required TResult signOut(_GoToWelcome value),
    @required TResult newRoom(_NewRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult editGuest(_EditGuest value),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return editRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult goToDashboard(_GoToDashboard value),
    TResult refreshDashboard(_RefreshDashboardOnly value),
    TResult signIn(_SignIn value),
    TResult signOut(_GoToWelcome value),
    TResult newRoom(_NewRoom value),
    TResult editRoom(_EditRoom value),
    TResult editGuest(_EditGuest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editRoom != null) {
      return editRoom(this);
    }
    return orElse();
  }
}

abstract class _EditRoom implements NavigationEvent {
  const factory _EditRoom() = _$_EditRoom;
}

/// @nodoc
abstract class _$EditGuestCopyWith<$Res> {
  factory _$EditGuestCopyWith(
          _EditGuest value, $Res Function(_EditGuest) then) =
      __$EditGuestCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditGuestCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements _$EditGuestCopyWith<$Res> {
  __$EditGuestCopyWithImpl(_EditGuest _value, $Res Function(_EditGuest) _then)
      : super(_value, (v) => _then(v as _EditGuest));

  @override
  _EditGuest get _value => super._value as _EditGuest;
}

/// @nodoc
class _$_EditGuest implements _EditGuest {
  const _$_EditGuest();

  @override
  String toString() {
    return 'NavigationEvent.editGuest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditGuest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult goToDashboard(),
    @required TResult refreshDashboard(),
    @required TResult signIn(String hotel, String password),
    @required TResult signOut(),
    @required TResult newRoom(),
    @required TResult editRoom(),
    @required TResult editGuest(),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return editGuest();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult goToDashboard(),
    TResult refreshDashboard(),
    TResult signIn(String hotel, String password),
    TResult signOut(),
    TResult newRoom(),
    TResult editRoom(),
    TResult editGuest(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editGuest != null) {
      return editGuest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult goToDashboard(_GoToDashboard value),
    @required TResult refreshDashboard(_RefreshDashboardOnly value),
    @required TResult signIn(_SignIn value),
    @required TResult signOut(_GoToWelcome value),
    @required TResult newRoom(_NewRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult editGuest(_EditGuest value),
  }) {
    assert(goToDashboard != null);
    assert(refreshDashboard != null);
    assert(signIn != null);
    assert(signOut != null);
    assert(newRoom != null);
    assert(editRoom != null);
    assert(editGuest != null);
    return editGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult goToDashboard(_GoToDashboard value),
    TResult refreshDashboard(_RefreshDashboardOnly value),
    TResult signIn(_SignIn value),
    TResult signOut(_GoToWelcome value),
    TResult newRoom(_NewRoom value),
    TResult editRoom(_EditRoom value),
    TResult editGuest(_EditGuest value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editGuest != null) {
      return editGuest(this);
    }
    return orElse();
  }
}

abstract class _EditGuest implements NavigationEvent {
  const factory _EditGuest() = _$_EditGuest;
}
