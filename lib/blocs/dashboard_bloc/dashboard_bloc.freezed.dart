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
      {List<Map<String, dynamic>> rooms,
      Map<String, dynamic> roomInFocus,
      Map<String, dynamic> guestInFocus}) {
    return _DashboardState(
      rooms: rooms,
      roomInFocus: roomInFocus,
      guestInFocus: guestInFocus,
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
  Map<String, dynamic> get guestInFocus;

  $DashboardStateCopyWith<DashboardState> get copyWith;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call(
      {List<Map<String, dynamic>> rooms,
      Map<String, dynamic> roomInFocus,
      Map<String, dynamic> guestInFocus});
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
    Object guestInFocus = freezed,
  }) {
    return _then(_value.copyWith(
      rooms:
          rooms == freezed ? _value.rooms : rooms as List<Map<String, dynamic>>,
      roomInFocus: roomInFocus == freezed
          ? _value.roomInFocus
          : roomInFocus as Map<String, dynamic>,
      guestInFocus: guestInFocus == freezed
          ? _value.guestInFocus
          : guestInFocus as Map<String, dynamic>,
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
      {List<Map<String, dynamic>> rooms,
      Map<String, dynamic> roomInFocus,
      Map<String, dynamic> guestInFocus});
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
    Object guestInFocus = freezed,
  }) {
    return _then(_DashboardState(
      rooms:
          rooms == freezed ? _value.rooms : rooms as List<Map<String, dynamic>>,
      roomInFocus: roomInFocus == freezed
          ? _value.roomInFocus
          : roomInFocus as Map<String, dynamic>,
      guestInFocus: guestInFocus == freezed
          ? _value.guestInFocus
          : guestInFocus as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
class _$_DashboardState implements _DashboardState {
  const _$_DashboardState({this.rooms, this.roomInFocus, this.guestInFocus});

  @override
  final List<Map<String, dynamic>> rooms;
  @override
  final Map<String, dynamic> roomInFocus;
  @override
  final Map<String, dynamic> guestInFocus;

  @override
  String toString() {
    return 'DashboardState(rooms: $rooms, roomInFocus: $roomInFocus, guestInFocus: $guestInFocus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardState &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)) &&
            (identical(other.roomInFocus, roomInFocus) ||
                const DeepCollectionEquality()
                    .equals(other.roomInFocus, roomInFocus)) &&
            (identical(other.guestInFocus, guestInFocus) ||
                const DeepCollectionEquality()
                    .equals(other.guestInFocus, guestInFocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rooms) ^
      const DeepCollectionEquality().hash(roomInFocus) ^
      const DeepCollectionEquality().hash(guestInFocus);

  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {List<Map<String, dynamic>> rooms,
      Map<String, dynamic> roomInFocus,
      Map<String, dynamic> guestInFocus}) = _$_DashboardState;

  @override
  List<Map<String, dynamic>> get rooms;
  @override
  Map<String, dynamic> get roomInFocus;
  @override
  Map<String, dynamic> get guestInFocus;
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
  _AddGuest addGuest(
      {@required String name,
      @required int duration,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture}) {
    return _AddGuest(
      name: name,
      duration: duration,
      from: from,
      until: until,
      extraBed: extraBed,
      members: members,
      contact: contact,
      picture: picture,
    );
  }

// ignore: unused_element
  _EditGuest editGuest(
      {@required String id,
      @required String name,
      @required int duration,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture}) {
    return _EditGuest(
      id: id,
      name: name,
      duration: duration,
      from: from,
      until: until,
      extraBed: extraBed,
      members: members,
      contact: contact,
      picture: picture,
    );
  }

// ignore: unused_element
  _UploadPicture uploadPicture(PickedFile file) {
    return _UploadPicture(
      file,
    );
  }

// ignore: unused_element
  _DeleteUnsavedPicture deleteUnsavedPicture(String picture) {
    return _DeleteUnsavedPicture(
      picture,
    );
  }

// ignore: unused_element
  _RoomInFocus roomInFocus(String roomNumber) {
    return _RoomInFocus(
      roomNumber,
    );
  }

// ignore: unused_element
  _GuestInFocus guestInFocus(String guestID) {
    return _GuestInFocus(
      guestID,
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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
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
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
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
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return fetchRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
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
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
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
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return addRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
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
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
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
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return editRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
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
abstract class _$AddGuestCopyWith<$Res> {
  factory _$AddGuestCopyWith(_AddGuest value, $Res Function(_AddGuest) then) =
      __$AddGuestCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int duration,
      DateTime from,
      DateTime until,
      int extraBed,
      int members,
      String contact,
      String picture});
}

/// @nodoc
class __$AddGuestCopyWithImpl<$Res> extends _$DashboardEventCopyWithImpl<$Res>
    implements _$AddGuestCopyWith<$Res> {
  __$AddGuestCopyWithImpl(_AddGuest _value, $Res Function(_AddGuest) _then)
      : super(_value, (v) => _then(v as _AddGuest));

  @override
  _AddGuest get _value => super._value as _AddGuest;

  @override
  $Res call({
    Object name = freezed,
    Object duration = freezed,
    Object from = freezed,
    Object until = freezed,
    Object extraBed = freezed,
    Object members = freezed,
    Object contact = freezed,
    Object picture = freezed,
  }) {
    return _then(_AddGuest(
      name: name == freezed ? _value.name : name as String,
      duration: duration == freezed ? _value.duration : duration as int,
      from: from == freezed ? _value.from : from as DateTime,
      until: until == freezed ? _value.until : until as DateTime,
      extraBed: extraBed == freezed ? _value.extraBed : extraBed as int,
      members: members == freezed ? _value.members : members as int,
      contact: contact == freezed ? _value.contact : contact as String,
      picture: picture == freezed ? _value.picture : picture as String,
    ));
  }
}

/// @nodoc
class _$_AddGuest implements _AddGuest {
  const _$_AddGuest(
      {@required this.name,
      @required this.duration,
      @required this.from,
      @required this.until,
      @required this.extraBed,
      @required this.members,
      @required this.contact,
      @required this.picture})
      : assert(name != null),
        assert(duration != null),
        assert(from != null),
        assert(until != null),
        assert(extraBed != null),
        assert(members != null),
        assert(contact != null),
        assert(picture != null);

  @override
  final String name;
  @override
  final int duration;
  @override
  final DateTime from;
  @override
  final DateTime until;
  @override
  final int extraBed;
  @override
  final int members;
  @override
  final String contact;
  @override
  final String picture;

  @override
  String toString() {
    return 'DashboardEvent.addGuest(name: $name, duration: $duration, from: $from, until: $until, extraBed: $extraBed, members: $members, contact: $contact, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddGuest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.until, until) ||
                const DeepCollectionEquality().equals(other.until, until)) &&
            (identical(other.extraBed, extraBed) ||
                const DeepCollectionEquality()
                    .equals(other.extraBed, extraBed)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(until) ^
      const DeepCollectionEquality().hash(extraBed) ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(picture);

  @override
  _$AddGuestCopyWith<_AddGuest> get copyWith =>
      __$AddGuestCopyWithImpl<_AddGuest>(this, _$identity);

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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return addGuest(
        name, duration, from, until, extraBed, members, contact, picture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addGuest != null) {
      return addGuest(
          name, duration, from, until, extraBed, members, contact, picture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return addGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addGuest != null) {
      return addGuest(this);
    }
    return orElse();
  }
}

abstract class _AddGuest implements DashboardEvent {
  const factory _AddGuest(
      {@required String name,
      @required int duration,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture}) = _$_AddGuest;

  String get name;
  int get duration;
  DateTime get from;
  DateTime get until;
  int get extraBed;
  int get members;
  String get contact;
  String get picture;
  _$AddGuestCopyWith<_AddGuest> get copyWith;
}

/// @nodoc
abstract class _$EditGuestCopyWith<$Res> {
  factory _$EditGuestCopyWith(
          _EditGuest value, $Res Function(_EditGuest) then) =
      __$EditGuestCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int duration,
      DateTime from,
      DateTime until,
      int extraBed,
      int members,
      String contact,
      String picture});
}

/// @nodoc
class __$EditGuestCopyWithImpl<$Res> extends _$DashboardEventCopyWithImpl<$Res>
    implements _$EditGuestCopyWith<$Res> {
  __$EditGuestCopyWithImpl(_EditGuest _value, $Res Function(_EditGuest) _then)
      : super(_value, (v) => _then(v as _EditGuest));

  @override
  _EditGuest get _value => super._value as _EditGuest;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object duration = freezed,
    Object from = freezed,
    Object until = freezed,
    Object extraBed = freezed,
    Object members = freezed,
    Object contact = freezed,
    Object picture = freezed,
  }) {
    return _then(_EditGuest(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      duration: duration == freezed ? _value.duration : duration as int,
      from: from == freezed ? _value.from : from as DateTime,
      until: until == freezed ? _value.until : until as DateTime,
      extraBed: extraBed == freezed ? _value.extraBed : extraBed as int,
      members: members == freezed ? _value.members : members as int,
      contact: contact == freezed ? _value.contact : contact as String,
      picture: picture == freezed ? _value.picture : picture as String,
    ));
  }
}

/// @nodoc
class _$_EditGuest implements _EditGuest {
  const _$_EditGuest(
      {@required this.id,
      @required this.name,
      @required this.duration,
      @required this.from,
      @required this.until,
      @required this.extraBed,
      @required this.members,
      @required this.contact,
      @required this.picture})
      : assert(id != null),
        assert(name != null),
        assert(duration != null),
        assert(from != null),
        assert(until != null),
        assert(extraBed != null),
        assert(members != null),
        assert(contact != null),
        assert(picture != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final int duration;
  @override
  final DateTime from;
  @override
  final DateTime until;
  @override
  final int extraBed;
  @override
  final int members;
  @override
  final String contact;
  @override
  final String picture;

  @override
  String toString() {
    return 'DashboardEvent.editGuest(id: $id, name: $name, duration: $duration, from: $from, until: $until, extraBed: $extraBed, members: $members, contact: $contact, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditGuest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.until, until) ||
                const DeepCollectionEquality().equals(other.until, until)) &&
            (identical(other.extraBed, extraBed) ||
                const DeepCollectionEquality()
                    .equals(other.extraBed, extraBed)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(until) ^
      const DeepCollectionEquality().hash(extraBed) ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(picture);

  @override
  _$EditGuestCopyWith<_EditGuest> get copyWith =>
      __$EditGuestCopyWithImpl<_EditGuest>(this, _$identity);

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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return editGuest(
        id, name, duration, from, until, extraBed, members, contact, picture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editGuest != null) {
      return editGuest(
          id, name, duration, from, until, extraBed, members, contact, picture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return editGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editGuest != null) {
      return editGuest(this);
    }
    return orElse();
  }
}

abstract class _EditGuest implements DashboardEvent {
  const factory _EditGuest(
      {@required String id,
      @required String name,
      @required int duration,
      @required DateTime from,
      @required DateTime until,
      @required int extraBed,
      @required int members,
      @required String contact,
      @required String picture}) = _$_EditGuest;

  String get id;
  String get name;
  int get duration;
  DateTime get from;
  DateTime get until;
  int get extraBed;
  int get members;
  String get contact;
  String get picture;
  _$EditGuestCopyWith<_EditGuest> get copyWith;
}

/// @nodoc
abstract class _$UploadPictureCopyWith<$Res> {
  factory _$UploadPictureCopyWith(
          _UploadPicture value, $Res Function(_UploadPicture) then) =
      __$UploadPictureCopyWithImpl<$Res>;
  $Res call({PickedFile file});
}

/// @nodoc
class __$UploadPictureCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$UploadPictureCopyWith<$Res> {
  __$UploadPictureCopyWithImpl(
      _UploadPicture _value, $Res Function(_UploadPicture) _then)
      : super(_value, (v) => _then(v as _UploadPicture));

  @override
  _UploadPicture get _value => super._value as _UploadPicture;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(_UploadPicture(
      file == freezed ? _value.file : file as PickedFile,
    ));
  }
}

/// @nodoc
class _$_UploadPicture implements _UploadPicture {
  const _$_UploadPicture(this.file) : assert(file != null);

  @override
  final PickedFile file;

  @override
  String toString() {
    return 'DashboardEvent.uploadPicture(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadPicture &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @override
  _$UploadPictureCopyWith<_UploadPicture> get copyWith =>
      __$UploadPictureCopyWithImpl<_UploadPicture>(this, _$identity);

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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return uploadPicture(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadPicture != null) {
      return uploadPicture(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return uploadPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadPicture != null) {
      return uploadPicture(this);
    }
    return orElse();
  }
}

abstract class _UploadPicture implements DashboardEvent {
  const factory _UploadPicture(PickedFile file) = _$_UploadPicture;

  PickedFile get file;
  _$UploadPictureCopyWith<_UploadPicture> get copyWith;
}

/// @nodoc
abstract class _$DeleteUnsavedPictureCopyWith<$Res> {
  factory _$DeleteUnsavedPictureCopyWith(_DeleteUnsavedPicture value,
          $Res Function(_DeleteUnsavedPicture) then) =
      __$DeleteUnsavedPictureCopyWithImpl<$Res>;
  $Res call({String picture});
}

/// @nodoc
class __$DeleteUnsavedPictureCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$DeleteUnsavedPictureCopyWith<$Res> {
  __$DeleteUnsavedPictureCopyWithImpl(
      _DeleteUnsavedPicture _value, $Res Function(_DeleteUnsavedPicture) _then)
      : super(_value, (v) => _then(v as _DeleteUnsavedPicture));

  @override
  _DeleteUnsavedPicture get _value => super._value as _DeleteUnsavedPicture;

  @override
  $Res call({
    Object picture = freezed,
  }) {
    return _then(_DeleteUnsavedPicture(
      picture == freezed ? _value.picture : picture as String,
    ));
  }
}

/// @nodoc
class _$_DeleteUnsavedPicture implements _DeleteUnsavedPicture {
  const _$_DeleteUnsavedPicture(this.picture) : assert(picture != null);

  @override
  final String picture;

  @override
  String toString() {
    return 'DashboardEvent.deleteUnsavedPicture(picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteUnsavedPicture &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(picture);

  @override
  _$DeleteUnsavedPictureCopyWith<_DeleteUnsavedPicture> get copyWith =>
      __$DeleteUnsavedPictureCopyWithImpl<_DeleteUnsavedPicture>(
          this, _$identity);

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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return deleteUnsavedPicture(picture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteUnsavedPicture != null) {
      return deleteUnsavedPicture(picture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return deleteUnsavedPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteUnsavedPicture != null) {
      return deleteUnsavedPicture(this);
    }
    return orElse();
  }
}

abstract class _DeleteUnsavedPicture implements DashboardEvent {
  const factory _DeleteUnsavedPicture(String picture) = _$_DeleteUnsavedPicture;

  String get picture;
  _$DeleteUnsavedPictureCopyWith<_DeleteUnsavedPicture> get copyWith;
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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
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
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
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
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return roomInFocus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
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

/// @nodoc
abstract class _$GuestInFocusCopyWith<$Res> {
  factory _$GuestInFocusCopyWith(
          _GuestInFocus value, $Res Function(_GuestInFocus) then) =
      __$GuestInFocusCopyWithImpl<$Res>;
  $Res call({String guestID});
}

/// @nodoc
class __$GuestInFocusCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res>
    implements _$GuestInFocusCopyWith<$Res> {
  __$GuestInFocusCopyWithImpl(
      _GuestInFocus _value, $Res Function(_GuestInFocus) _then)
      : super(_value, (v) => _then(v as _GuestInFocus));

  @override
  _GuestInFocus get _value => super._value as _GuestInFocus;

  @override
  $Res call({
    Object guestID = freezed,
  }) {
    return _then(_GuestInFocus(
      guestID == freezed ? _value.guestID : guestID as String,
    ));
  }
}

/// @nodoc
class _$_GuestInFocus implements _GuestInFocus {
  const _$_GuestInFocus(this.guestID) : assert(guestID != null);

  @override
  final String guestID;

  @override
  String toString() {
    return 'DashboardEvent.guestInFocus(guestID: $guestID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GuestInFocus &&
            (identical(other.guestID, guestID) ||
                const DeepCollectionEquality().equals(other.guestID, guestID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(guestID);

  @override
  _$GuestInFocusCopyWith<_GuestInFocus> get copyWith =>
      __$GuestInFocusCopyWithImpl<_GuestInFocus>(this, _$identity);

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
    @required
        TResult addGuest(
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required
        TResult editGuest(
            String id,
            String name,
            int duration,
            DateTime from,
            DateTime until,
            int extraBed,
            int members,
            String contact,
            String picture),
    @required TResult uploadPicture(PickedFile file),
    @required TResult deleteUnsavedPicture(String picture),
    @required TResult roomInFocus(String roomNumber),
    @required TResult guestInFocus(String guestID),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return guestInFocus(guestID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRooms(),
    TResult addRoom(
        String number, String description, double price, int capacity),
    TResult editRoom(String number, String id, String description, double price,
        int capacity),
    TResult addGuest(String name, int duration, DateTime from, DateTime until,
        int extraBed, int members, String contact, String picture),
    TResult editGuest(
        String id,
        String name,
        int duration,
        DateTime from,
        DateTime until,
        int extraBed,
        int members,
        String contact,
        String picture),
    TResult uploadPicture(PickedFile file),
    TResult deleteUnsavedPicture(String picture),
    TResult roomInFocus(String roomNumber),
    TResult guestInFocus(String guestID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (guestInFocus != null) {
      return guestInFocus(guestID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRooms(_fetchRooms value),
    @required TResult addRoom(_AddRoom value),
    @required TResult editRoom(_EditRoom value),
    @required TResult addGuest(_AddGuest value),
    @required TResult editGuest(_EditGuest value),
    @required TResult uploadPicture(_UploadPicture value),
    @required TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    @required TResult roomInFocus(_RoomInFocus value),
    @required TResult guestInFocus(_GuestInFocus value),
  }) {
    assert(fetchRooms != null);
    assert(addRoom != null);
    assert(editRoom != null);
    assert(addGuest != null);
    assert(editGuest != null);
    assert(uploadPicture != null);
    assert(deleteUnsavedPicture != null);
    assert(roomInFocus != null);
    assert(guestInFocus != null);
    return guestInFocus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRooms(_fetchRooms value),
    TResult addRoom(_AddRoom value),
    TResult editRoom(_EditRoom value),
    TResult addGuest(_AddGuest value),
    TResult editGuest(_EditGuest value),
    TResult uploadPicture(_UploadPicture value),
    TResult deleteUnsavedPicture(_DeleteUnsavedPicture value),
    TResult roomInFocus(_RoomInFocus value),
    TResult guestInFocus(_GuestInFocus value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (guestInFocus != null) {
      return guestInFocus(this);
    }
    return orElse();
  }
}

abstract class _GuestInFocus implements DashboardEvent {
  const factory _GuestInFocus(String guestID) = _$_GuestInFocus;

  String get guestID;
  _$GuestInFocusCopyWith<_GuestInFocus> get copyWith;
}
