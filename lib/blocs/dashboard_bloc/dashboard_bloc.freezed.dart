// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

// ignore: unused_element
  _DashboardState call(
      {List<Map<String, dynamic>> rooms, Map<String, dynamic> roomInFocus}) {
    return _DashboardState(
      rooms: rooms,
      roomInFocus: roomInFocus,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  List<Map<String, dynamic>> get rooms;
  Map<String, dynamic> get roomInFocus;

  $DashboardStateCopyWith<DashboardState> get copyWith;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call(
      {List<Map<String, dynamic>> rooms, Map<String, dynamic> roomInFocus});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object rooms = freezed,
    Object roomInFocus = freezed,
  }) {
    return _then(_value.copyWith(
      rooms:
          rooms == freezed ? _value.rooms : rooms as List<Map<String, dynamic>>,
      roomInFocus: roomInFocus == freezed
          ? _value.roomInFocus
          : roomInFocus as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(
          _DashboardState value, $Res Function(_DashboardState) then) =
      __$DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Map<String, dynamic>> rooms, Map<String, dynamic> roomInFocus});
}

/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(
      _DashboardState _value, $Res Function(_DashboardState) _then)
      : super(_value, (v) => _then(v as _DashboardState));

  @override
  _DashboardState get _value => super._value as _DashboardState;

  @override
  $Res call({
    Object rooms = freezed,
    Object roomInFocus = freezed,
  }) {
    return _then(_DashboardState(
      rooms:
          rooms == freezed ? _value.rooms : rooms as List<Map<String, dynamic>>,
      roomInFocus: roomInFocus == freezed
          ? _value.roomInFocus
          : roomInFocus as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
class _$_DashboardState implements _DashboardState {
  const _$_DashboardState({this.rooms, this.roomInFocus});

  @override
  final List<Map<String, dynamic>> rooms;
  @override
  final Map<String, dynamic> roomInFocus;

  @override
  String toString() {
    return 'DashboardState(rooms: $rooms, roomInFocus: $roomInFocus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardState &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)) &&
            (identical(other.roomInFocus, roomInFocus) ||
                const DeepCollectionEquality()
                    .equals(other.roomInFocus, roomInFocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rooms) ^
      const DeepCollectionEquality().hash(roomInFocus);

  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {List<Map<String, dynamic>> rooms,
      Map<String, dynamic> roomInFocus}) = _$_DashboardState;

  @override
  List<Map<String, dynamic>> get rooms;
  @override
  Map<String, dynamic> get roomInFocus;
  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith;
}

/// @nodoc
class _$DashboardEventTearOff {
  const _$DashboardEventTearOff();

// ignore: unused_element
  _fetchRooms fetchRooms() {
    return const _fetchRooms();
  }

// ignore: unused_element
  _AddRoom addRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required int capacity}) {
    return _AddRoom(
      number: number,
      description: description,
      price: price,
      capacity: capacity,
    );
  }

// ignore: unused_element
  _EditRoom editRoom(
      {@required String number,
      @required String id,
      @required String description,
      @required double price,
      @required int capacity}) {
    return _EditRoom(
      number: number,
      id: id,
      description: description,
      price: price,
      capacity: capacity,
    );
  }

// ignore: unused_element
  _RoomInFocus roomInFocus(String roomNumber) {
    return _RoomInFocus(
      roomNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DashboardEvent = _$DashboardEventTearOff();

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchRooms(),
    @required
        TResult addRoom(
            String number, String description, double price, int capacity),
    @required
        TResult editRoom(String number, String id, String description,
            double price, int capacity),
    @required TResult roomInFocus(String roomNumber),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult roomInFocus(String roomNumber),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult roomInFocus(_RoomInFocus value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult roomInFocus(_RoomInFocus value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  final DashboardEvent _value;
  // ignore: unused_field
  final $Res Function(DashboardEvent) _then;
}

/// @nodoc
abstract class _$fetchRoomsCopyWith<$Res> {
  factory _$fetchRoomsCopyWith(
          _fetchRooms value, $Res Function(_fetchRooms) then) =
      __$fetchRoomsCopyWithImpl<$Res>;
}

/// @nodoc
class __$fetchRoomsCopyWithImpl<$Res> extends _$DashboardEventCopyWithImpl<$Res>
    implements _$fetchRoomsCopyWith<$Res> {
  __$fetchRoomsCopyWithImpl(
      _fetchRooms _value, $Res Function(_fetchRooms) _then)
      : super(_value, (v) => _then(v as _fetchRooms));

  @override
  _fetchRooms get _value => super._value as _fetchRooms;
}

/// @nodoc
class _$_fetchRooms implements _fetchRooms {
  const _$_fetchRooms();

  @override
  String toString() {
    return 'DashboardEvent.fetchRooms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _fetchRooms);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchRooms(),
    @required
        TResult addRoom(
            String number, String description, double price, int capacity),
    @required
        TResult editRoom(String number, String id, String description,
            double price, int capacity),
    @required TResult roomInFocus(String roomNumber),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(roomInFocus != null);
    return fetchRooms();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult roomInFocus(String roomNumber),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchRooms != null) {
      return fetchRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult roomInFocus(_RoomInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(roomInFocus != null);
    return fetchRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult roomInFocus(_RoomInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchRooms != null) {
      return fetchRooms(this);
    }
    return orElse();
  }
}

abstract class _fetchRooms implements DashboardEvent {
  const factory _fetchRooms() = _$_fetchRooms;
}

/// @nodoc
abstract class _$AddRoomCopyWith<$Res> {
  factory _$AddRoomCopyWith(_AddRoom value, $Res Function(_AddRoom) then) =
      __$AddRoomCopyWithImpl<$Res>;
  $Res call({String number, String description, double price, int capacity});
}

/// @nodoc
class __$AddRoomCopyWithImpl<$Res> extends _$DashboardEventCopyWithImpl<$Res>
    implements _$AddRoomCopyWith<$Res> {
  __$AddRoomCopyWithImpl(_AddRoom _value, $Res Function(_AddRoom) _then)
      : super(_value, (v) => _then(v as _AddRoom));

  @override
  _AddRoom get _value => super._value as _AddRoom;

  @override
  $Res call({
    Object number = freezed,
    Object description = freezed,
    Object price = freezed,
    Object capacity = freezed,
  }) {
    return _then(_AddRoom(
      number: number == freezed ? _value.number : number as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as double,
      capacity: capacity == freezed ? _value.capacity : capacity as int,
    ));
  }
}

/// @nodoc
class _$_AddRoom implements _AddRoom {
  const _$_AddRoom(
      {@required this.number,
      @required this.description,
      @required this.price,
      @required this.capacity})
      : assert(number != null),
        assert(description != null),
        assert(price != null),
        assert(capacity != null);

  @override
  final String number;
  @override
  final String description;
  @override
  final double price;
  @override
  final int capacity;

  @override
  String toString() {
    return 'DashboardEvent.addRoom(number: $number, description: $description, price: $price, capacity: $capacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddRoom &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.capacity, capacity) ||
                const DeepCollectionEquality()
                    .equals(other.capacity, capacity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(capacity);

  @override
  _$AddRoomCopyWith<_AddRoom> get copyWith =>
      __$AddRoomCopyWithImpl<_AddRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchRooms(),
    @required
        TResult addRoom(
            String number, String description, double price, int capacity),
    @required
        TResult editRoom(String number, String id, String description,
            double price, int capacity),
    @required TResult roomInFocus(String roomNumber),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(roomInFocus != null);
    return addRoom(number, description, price, capacity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult roomInFocus(String roomNumber),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addRoom != null) {
      return addRoom(number, description, price, capacity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult roomInFocus(_RoomInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(roomInFocus != null);
    return addRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult roomInFocus(_RoomInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addRoom != null) {
      return addRoom(this);
    }
    return orElse();
  }
}

abstract class _AddRoom implements DashboardEvent {
  const factory _AddRoom(
      {@required String number,
      @required String description,
      @required double price,
      @required int capacity}) = _$_AddRoom;

  String get number;
  String get description;
  double get price;
  int get capacity;
  _$AddRoomCopyWith<_AddRoom> get copyWith;
}

/// @nodoc
abstract class _$EditRoomCopyWith<$Res> {
  factory _$EditRoomCopyWith(_EditRoom value, $Res Function(_EditRoom) then) =
      __$EditRoomCopyWithImpl<$Res>;
  $Res call(
      {String number,
      String id,
      String description,
      double price,
      int capacity});
}

/// @nodoc
class __$EditRoomCopyWithImpl<$Res> extends _$DashboardEventCopyWithImpl<$Res>
    implements _$EditRoomCopyWith<$Res> {
  __$EditRoomCopyWithImpl(_EditRoom _value, $Res Function(_EditRoom) _then)
      : super(_value, (v) => _then(v as _EditRoom));

  @override
  _EditRoom get _value => super._value as _EditRoom;

  @override
  $Res call({
    Object number = freezed,
    Object id = freezed,
    Object description = freezed,
    Object price = freezed,
    Object capacity = freezed,
  }) {
    return _then(_EditRoom(
      number: number == freezed ? _value.number : number as String,
      id: id == freezed ? _value.id : id as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as double,
      capacity: capacity == freezed ? _value.capacity : capacity as int,
    ));
  }
}

/// @nodoc
class _$_EditRoom implements _EditRoom {
  const _$_EditRoom(
      {@required this.number,
      @required this.id,
      @required this.description,
      @required this.price,
      @required this.capacity})
      : assert(number != null),
        assert(id != null),
        assert(description != null),
        assert(price != null),
        assert(capacity != null);

  @override
  final String number;
  @override
  final String id;
  @override
  final String description;
  @override
  final double price;
  @override
  final int capacity;

  @override
  String toString() {
    return 'DashboardEvent.editRoom(number: $number, id: $id, description: $description, price: $price, capacity: $capacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditRoom &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.capacity, capacity) ||
                const DeepCollectionEquality()
                    .equals(other.capacity, capacity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(capacity);

  @override
  _$EditRoomCopyWith<_EditRoom> get copyWith =>
      __$EditRoomCopyWithImpl<_EditRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchRooms(),
    @required
        TResult addRoom(
            String number, String description, double price, int capacity),
    @required
        TResult editRoom(String number, String id, String description,
            double price, int capacity),
    @required TResult roomInFocus(String roomNumber),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(roomInFocus != null);
    return editRoom(number, id, description, price, capacity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult roomInFocus(String roomNumber),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editRoom != null) {
      return editRoom(number, id, description, price, capacity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult roomInFocus(_RoomInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(roomInFocus != null);
    return editRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult roomInFocus(_RoomInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editRoom != null) {
      return editRoom(this);
    }
    return orElse();
  }
}

abstract class _EditRoom implements DashboardEvent {
  const factory _EditRoom(
      {@required String number,
      @required String id,
      @required String description,
      @required double price,
      @required int capacity}) = _$_EditRoom;

  String get number;
  String get id;
  String get description;
  double get price;
  int get capacity;
  _$EditRoomCopyWith<_EditRoom> get copyWith;
}

/// @nodoc
abstract class _$RoomInFocusCopyWith<$Res> {
  factory _$RoomInFocusCopyWith(
          _RoomInFocus value, $Res Function(_RoomInFocus) then) =
      __$RoomInFocusCopyWithImpl<$Res>;
  $Res call({String roomNumber});
}

/// @nodoc
class __$RoomInFocusCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$RoomInFocusCopyWith<$Res> {
  __$RoomInFocusCopyWithImpl(
      _RoomInFocus _value, $Res Function(_RoomInFocus) _then)
      : super(_value, (v) => _then(v as _RoomInFocus));

  @override
  _RoomInFocus get _value => super._value as _RoomInFocus;

  @override
  $Res call({
    Object roomNumber = freezed,
  }) {
    return _then(_RoomInFocus(
      roomNumber == freezed ? _value.roomNumber : roomNumber as String,
    ));
  }
}

/// @nodoc
class _$_RoomInFocus implements _RoomInFocus {
  const _$_RoomInFocus(this.roomNumber) : assert(roomNumber != null);

  @override
  final String roomNumber;

  @override
  String toString() {
    return 'DashboardEvent.roomInFocus(roomNumber: $roomNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomInFocus &&
            (identical(other.roomNumber, roomNumber) ||
                const DeepCollectionEquality()
                    .equals(other.roomNumber, roomNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roomNumber);

  @override
  _$RoomInFocusCopyWith<_RoomInFocus> get copyWith =>
      __$RoomInFocusCopyWithImpl<_RoomInFocus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchRooms(),
    @required
        TResult addRoom(
            String number, String description, double price, int capacity),
    @required
        TResult editRoom(String number, String id, String description,
            double price, int capacity),
    @required TResult roomInFocus(String roomNumber),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(roomInFocus != null);
    return roomInFocus(roomNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult roomInFocus(String roomNumber),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomInFocus != null) {
      return roomInFocus(roomNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult roomInFocus(_RoomInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(roomInFocus != null);
    return roomInFocus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult roomInFocus(_RoomInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomInFocus != null) {
      return roomInFocus(this);
    }
    return orElse();
  }
}

abstract class _RoomInFocus implements DashboardEvent {
  const factory _RoomInFocus(String roomNumber) = _$_RoomInFocus;

  String get roomNumber;
  _$RoomInFocusCopyWith<_RoomInFocus> get copyWith;
}
