// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetcOffers,
    required TResult Function(String? place) saveFromPlace,
    required TResult Function(String? place) saveToPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetcOffers,
    TResult? Function(String? place)? saveFromPlace,
    TResult? Function(String? place)? saveToPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetcOffers,
    TResult Function(String? place)? saveFromPlace,
    TResult Function(String? place)? saveToPlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchEvent value) fetcOffers,
    required TResult Function(HomeSaveFromValueEvent value) saveFromPlace,
    required TResult Function(HomeSaveToValueEvent value) saveToPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeFetchEvent value)? fetcOffers,
    TResult? Function(HomeSaveFromValueEvent value)? saveFromPlace,
    TResult? Function(HomeSaveToValueEvent value)? saveToPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchEvent value)? fetcOffers,
    TResult Function(HomeSaveFromValueEvent value)? saveFromPlace,
    TResult Function(HomeSaveToValueEvent value)? saveToPlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeFetchEventImplCopyWith<$Res> {
  factory _$$HomeFetchEventImplCopyWith(_$HomeFetchEventImpl value,
          $Res Function(_$HomeFetchEventImpl) then) =
      __$$HomeFetchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeFetchEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeFetchEventImpl>
    implements _$$HomeFetchEventImplCopyWith<$Res> {
  __$$HomeFetchEventImplCopyWithImpl(
      _$HomeFetchEventImpl _value, $Res Function(_$HomeFetchEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeFetchEventImpl implements HomeFetchEvent {
  const _$HomeFetchEventImpl();

  @override
  String toString() {
    return 'HomeEvent.fetcOffers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeFetchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetcOffers,
    required TResult Function(String? place) saveFromPlace,
    required TResult Function(String? place) saveToPlace,
  }) {
    return fetcOffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetcOffers,
    TResult? Function(String? place)? saveFromPlace,
    TResult? Function(String? place)? saveToPlace,
  }) {
    return fetcOffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetcOffers,
    TResult Function(String? place)? saveFromPlace,
    TResult Function(String? place)? saveToPlace,
    required TResult orElse(),
  }) {
    if (fetcOffers != null) {
      return fetcOffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchEvent value) fetcOffers,
    required TResult Function(HomeSaveFromValueEvent value) saveFromPlace,
    required TResult Function(HomeSaveToValueEvent value) saveToPlace,
  }) {
    return fetcOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeFetchEvent value)? fetcOffers,
    TResult? Function(HomeSaveFromValueEvent value)? saveFromPlace,
    TResult? Function(HomeSaveToValueEvent value)? saveToPlace,
  }) {
    return fetcOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchEvent value)? fetcOffers,
    TResult Function(HomeSaveFromValueEvent value)? saveFromPlace,
    TResult Function(HomeSaveToValueEvent value)? saveToPlace,
    required TResult orElse(),
  }) {
    if (fetcOffers != null) {
      return fetcOffers(this);
    }
    return orElse();
  }
}

abstract class HomeFetchEvent implements HomeEvent {
  const factory HomeFetchEvent() = _$HomeFetchEventImpl;
}

/// @nodoc
abstract class _$$HomeSaveFromValueEventImplCopyWith<$Res> {
  factory _$$HomeSaveFromValueEventImplCopyWith(
          _$HomeSaveFromValueEventImpl value,
          $Res Function(_$HomeSaveFromValueEventImpl) then) =
      __$$HomeSaveFromValueEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? place});
}

/// @nodoc
class __$$HomeSaveFromValueEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeSaveFromValueEventImpl>
    implements _$$HomeSaveFromValueEventImplCopyWith<$Res> {
  __$$HomeSaveFromValueEventImplCopyWithImpl(
      _$HomeSaveFromValueEventImpl _value,
      $Res Function(_$HomeSaveFromValueEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_$HomeSaveFromValueEventImpl(
      freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeSaveFromValueEventImpl implements HomeSaveFromValueEvent {
  const _$HomeSaveFromValueEventImpl(this.place);

  @override
  final String? place;

  @override
  String toString() {
    return 'HomeEvent.saveFromPlace(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSaveFromValueEventImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSaveFromValueEventImplCopyWith<_$HomeSaveFromValueEventImpl>
      get copyWith => __$$HomeSaveFromValueEventImplCopyWithImpl<
          _$HomeSaveFromValueEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetcOffers,
    required TResult Function(String? place) saveFromPlace,
    required TResult Function(String? place) saveToPlace,
  }) {
    return saveFromPlace(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetcOffers,
    TResult? Function(String? place)? saveFromPlace,
    TResult? Function(String? place)? saveToPlace,
  }) {
    return saveFromPlace?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetcOffers,
    TResult Function(String? place)? saveFromPlace,
    TResult Function(String? place)? saveToPlace,
    required TResult orElse(),
  }) {
    if (saveFromPlace != null) {
      return saveFromPlace(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchEvent value) fetcOffers,
    required TResult Function(HomeSaveFromValueEvent value) saveFromPlace,
    required TResult Function(HomeSaveToValueEvent value) saveToPlace,
  }) {
    return saveFromPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeFetchEvent value)? fetcOffers,
    TResult? Function(HomeSaveFromValueEvent value)? saveFromPlace,
    TResult? Function(HomeSaveToValueEvent value)? saveToPlace,
  }) {
    return saveFromPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchEvent value)? fetcOffers,
    TResult Function(HomeSaveFromValueEvent value)? saveFromPlace,
    TResult Function(HomeSaveToValueEvent value)? saveToPlace,
    required TResult orElse(),
  }) {
    if (saveFromPlace != null) {
      return saveFromPlace(this);
    }
    return orElse();
  }
}

abstract class HomeSaveFromValueEvent implements HomeEvent {
  const factory HomeSaveFromValueEvent(final String? place) =
      _$HomeSaveFromValueEventImpl;

  String? get place;
  @JsonKey(ignore: true)
  _$$HomeSaveFromValueEventImplCopyWith<_$HomeSaveFromValueEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeSaveToValueEventImplCopyWith<$Res> {
  factory _$$HomeSaveToValueEventImplCopyWith(_$HomeSaveToValueEventImpl value,
          $Res Function(_$HomeSaveToValueEventImpl) then) =
      __$$HomeSaveToValueEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? place});
}

/// @nodoc
class __$$HomeSaveToValueEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeSaveToValueEventImpl>
    implements _$$HomeSaveToValueEventImplCopyWith<$Res> {
  __$$HomeSaveToValueEventImplCopyWithImpl(_$HomeSaveToValueEventImpl _value,
      $Res Function(_$HomeSaveToValueEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_$HomeSaveToValueEventImpl(
      freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeSaveToValueEventImpl implements HomeSaveToValueEvent {
  const _$HomeSaveToValueEventImpl(this.place);

  @override
  final String? place;

  @override
  String toString() {
    return 'HomeEvent.saveToPlace(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSaveToValueEventImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSaveToValueEventImplCopyWith<_$HomeSaveToValueEventImpl>
      get copyWith =>
          __$$HomeSaveToValueEventImplCopyWithImpl<_$HomeSaveToValueEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetcOffers,
    required TResult Function(String? place) saveFromPlace,
    required TResult Function(String? place) saveToPlace,
  }) {
    return saveToPlace(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetcOffers,
    TResult? Function(String? place)? saveFromPlace,
    TResult? Function(String? place)? saveToPlace,
  }) {
    return saveToPlace?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetcOffers,
    TResult Function(String? place)? saveFromPlace,
    TResult Function(String? place)? saveToPlace,
    required TResult orElse(),
  }) {
    if (saveToPlace != null) {
      return saveToPlace(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeFetchEvent value) fetcOffers,
    required TResult Function(HomeSaveFromValueEvent value) saveFromPlace,
    required TResult Function(HomeSaveToValueEvent value) saveToPlace,
  }) {
    return saveToPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeFetchEvent value)? fetcOffers,
    TResult? Function(HomeSaveFromValueEvent value)? saveFromPlace,
    TResult? Function(HomeSaveToValueEvent value)? saveToPlace,
  }) {
    return saveToPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeFetchEvent value)? fetcOffers,
    TResult Function(HomeSaveFromValueEvent value)? saveFromPlace,
    TResult Function(HomeSaveToValueEvent value)? saveToPlace,
    required TResult orElse(),
  }) {
    if (saveToPlace != null) {
      return saveToPlace(this);
    }
    return orElse();
  }
}

abstract class HomeSaveToValueEvent implements HomeEvent {
  const factory HomeSaveToValueEvent(final String? place) =
      _$HomeSaveToValueEventImpl;

  String? get place;
  @JsonKey(ignore: true)
  _$$HomeSaveToValueEventImplCopyWith<_$HomeSaveToValueEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? fromPlace, List<Offer> offers) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? fromPlace, List<Offer> offers)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? fromPlace, List<Offer> offers)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeLoadingStateImplCopyWith<$Res> {
  factory _$$HomeLoadingStateImplCopyWith(_$HomeLoadingStateImpl value,
          $Res Function(_$HomeLoadingStateImpl) then) =
      __$$HomeLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingStateImpl>
    implements _$$HomeLoadingStateImplCopyWith<$Res> {
  __$$HomeLoadingStateImplCopyWithImpl(_$HomeLoadingStateImpl _value,
      $Res Function(_$HomeLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingStateImpl implements _HomeLoadingState {
  const _$HomeLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? fromPlace, List<Offer> offers) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? fromPlace, List<Offer> offers)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? fromPlace, List<Offer> offers)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomeState {
  const factory _HomeLoadingState() = _$HomeLoadingStateImpl;
}

/// @nodoc
abstract class _$$HomeLoadedStateImplCopyWith<$Res> {
  factory _$$HomeLoadedStateImplCopyWith(_$HomeLoadedStateImpl value,
          $Res Function(_$HomeLoadedStateImpl) then) =
      __$$HomeLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? fromPlace, List<Offer> offers});
}

/// @nodoc
class __$$HomeLoadedStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadedStateImpl>
    implements _$$HomeLoadedStateImplCopyWith<$Res> {
  __$$HomeLoadedStateImplCopyWithImpl(
      _$HomeLoadedStateImpl _value, $Res Function(_$HomeLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromPlace = freezed,
    Object? offers = null,
  }) {
    return _then(_$HomeLoadedStateImpl(
      fromPlace: freezed == fromPlace
          ? _value.fromPlace
          : fromPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }
}

/// @nodoc

class _$HomeLoadedStateImpl implements _HomeLoadedState {
  const _$HomeLoadedStateImpl(
      {required this.fromPlace, required final List<Offer> offers})
      : _offers = offers;

  @override
  final String? fromPlace;
  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  String toString() {
    return 'HomeState.loaded(fromPlace: $fromPlace, offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadedStateImpl &&
            (identical(other.fromPlace, fromPlace) ||
                other.fromPlace == fromPlace) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fromPlace, const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadedStateImplCopyWith<_$HomeLoadedStateImpl> get copyWith =>
      __$$HomeLoadedStateImplCopyWithImpl<_$HomeLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? fromPlace, List<Offer> offers) loaded,
  }) {
    return loaded(fromPlace, offers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? fromPlace, List<Offer> offers)? loaded,
  }) {
    return loaded?.call(fromPlace, offers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? fromPlace, List<Offer> offers)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(fromPlace, offers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadedState implements HomeState {
  const factory _HomeLoadedState(
      {required final String? fromPlace,
      required final List<Offer> offers}) = _$HomeLoadedStateImpl;

  String? get fromPlace;
  List<Offer> get offers;
  @JsonKey(ignore: true)
  _$$HomeLoadedStateImplCopyWith<_$HomeLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
