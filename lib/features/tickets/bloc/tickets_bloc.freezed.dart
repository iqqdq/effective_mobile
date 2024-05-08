// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsFetchEvent value) fetchTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsFetchEvent value)? fetchTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsFetchEvent value)? fetchTickets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketsFetchEventImplCopyWith<$Res> {
  factory _$$TicketsFetchEventImplCopyWith(_$TicketsFetchEventImpl value,
          $Res Function(_$TicketsFetchEventImpl) then) =
      __$$TicketsFetchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsFetchEventImplCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$TicketsFetchEventImpl>
    implements _$$TicketsFetchEventImplCopyWith<$Res> {
  __$$TicketsFetchEventImplCopyWithImpl(_$TicketsFetchEventImpl _value,
      $Res Function(_$TicketsFetchEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsFetchEventImpl implements TicketsFetchEvent {
  const _$TicketsFetchEventImpl();

  @override
  String toString() {
    return 'TicketsEvent.fetchTickets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketsFetchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTickets,
  }) {
    return fetchTickets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTickets,
  }) {
    return fetchTickets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTickets,
    required TResult orElse(),
  }) {
    if (fetchTickets != null) {
      return fetchTickets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsFetchEvent value) fetchTickets,
  }) {
    return fetchTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsFetchEvent value)? fetchTickets,
  }) {
    return fetchTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsFetchEvent value)? fetchTickets,
    required TResult orElse(),
  }) {
    if (fetchTickets != null) {
      return fetchTickets(this);
    }
    return orElse();
  }
}

abstract class TicketsFetchEvent implements TicketsEvent {
  const factory TicketsFetchEvent() = _$TicketsFetchEventImpl;
}

/// @nodoc
mixin _$TicketsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? fromPlace, String? toPlace,
            DateTime? comebackDate, DateTime? whenDate, List<Ticket> tickets)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? fromPlace, String? toPlace,
            DateTime? comebackDate, DateTime? whenDate, List<Ticket> tickets)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? fromPlace, String? toPlace, DateTime? comebackDate,
            DateTime? whenDate, List<Ticket> tickets)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsLoadingState value) loading,
    required TResult Function(_TicketsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsLoadingState value)? loading,
    TResult? Function(_TicketsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsLoadingState value)? loading,
    TResult Function(_TicketsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketsLoadingStateImplCopyWith<$Res> {
  factory _$$TicketsLoadingStateImplCopyWith(_$TicketsLoadingStateImpl value,
          $Res Function(_$TicketsLoadingStateImpl) then) =
      __$$TicketsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsLoadingStateImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsLoadingStateImpl>
    implements _$$TicketsLoadingStateImplCopyWith<$Res> {
  __$$TicketsLoadingStateImplCopyWithImpl(_$TicketsLoadingStateImpl _value,
      $Res Function(_$TicketsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsLoadingStateImpl implements _TicketsLoadingState {
  const _$TicketsLoadingStateImpl();

  @override
  String toString() {
    return 'TicketsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? fromPlace, String? toPlace,
            DateTime? comebackDate, DateTime? whenDate, List<Ticket> tickets)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? fromPlace, String? toPlace,
            DateTime? comebackDate, DateTime? whenDate, List<Ticket> tickets)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? fromPlace, String? toPlace, DateTime? comebackDate,
            DateTime? whenDate, List<Ticket> tickets)?
        loaded,
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
    required TResult Function(_TicketsLoadingState value) loading,
    required TResult Function(_TicketsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsLoadingState value)? loading,
    TResult? Function(_TicketsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsLoadingState value)? loading,
    TResult Function(_TicketsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TicketsLoadingState implements TicketsState {
  const factory _TicketsLoadingState() = _$TicketsLoadingStateImpl;
}

/// @nodoc
abstract class _$$TicketsLoadedStateImplCopyWith<$Res> {
  factory _$$TicketsLoadedStateImplCopyWith(_$TicketsLoadedStateImpl value,
          $Res Function(_$TicketsLoadedStateImpl) then) =
      __$$TicketsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? fromPlace,
      String? toPlace,
      DateTime? comebackDate,
      DateTime? whenDate,
      List<Ticket> tickets});
}

/// @nodoc
class __$$TicketsLoadedStateImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsLoadedStateImpl>
    implements _$$TicketsLoadedStateImplCopyWith<$Res> {
  __$$TicketsLoadedStateImplCopyWithImpl(_$TicketsLoadedStateImpl _value,
      $Res Function(_$TicketsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromPlace = freezed,
    Object? toPlace = freezed,
    Object? comebackDate = freezed,
    Object? whenDate = freezed,
    Object? tickets = null,
  }) {
    return _then(_$TicketsLoadedStateImpl(
      fromPlace: freezed == fromPlace
          ? _value.fromPlace
          : fromPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      toPlace: freezed == toPlace
          ? _value.toPlace
          : toPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      comebackDate: freezed == comebackDate
          ? _value.comebackDate
          : comebackDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      whenDate: freezed == whenDate
          ? _value.whenDate
          : whenDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$TicketsLoadedStateImpl implements _TicketsLoadedState {
  const _$TicketsLoadedStateImpl(
      {required this.fromPlace,
      required this.toPlace,
      required this.comebackDate,
      required this.whenDate,
      required final List<Ticket> tickets})
      : _tickets = tickets;

  @override
  final String? fromPlace;
  @override
  final String? toPlace;
  @override
  final DateTime? comebackDate;
  @override
  final DateTime? whenDate;
  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketsState.loaded(fromPlace: $fromPlace, toPlace: $toPlace, comebackDate: $comebackDate, whenDate: $whenDate, tickets: $tickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsLoadedStateImpl &&
            (identical(other.fromPlace, fromPlace) ||
                other.fromPlace == fromPlace) &&
            (identical(other.toPlace, toPlace) || other.toPlace == toPlace) &&
            (identical(other.comebackDate, comebackDate) ||
                other.comebackDate == comebackDate) &&
            (identical(other.whenDate, whenDate) ||
                other.whenDate == whenDate) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromPlace, toPlace, comebackDate,
      whenDate, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsLoadedStateImplCopyWith<_$TicketsLoadedStateImpl> get copyWith =>
      __$$TicketsLoadedStateImplCopyWithImpl<_$TicketsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String? fromPlace, String? toPlace,
            DateTime? comebackDate, DateTime? whenDate, List<Ticket> tickets)
        loaded,
  }) {
    return loaded(fromPlace, toPlace, comebackDate, whenDate, tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String? fromPlace, String? toPlace,
            DateTime? comebackDate, DateTime? whenDate, List<Ticket> tickets)?
        loaded,
  }) {
    return loaded?.call(fromPlace, toPlace, comebackDate, whenDate, tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String? fromPlace, String? toPlace, DateTime? comebackDate,
            DateTime? whenDate, List<Ticket> tickets)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(fromPlace, toPlace, comebackDate, whenDate, tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsLoadingState value) loading,
    required TResult Function(_TicketsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsLoadingState value)? loading,
    TResult? Function(_TicketsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsLoadingState value)? loading,
    TResult Function(_TicketsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TicketsLoadedState implements TicketsState {
  const factory _TicketsLoadedState(
      {required final String? fromPlace,
      required final String? toPlace,
      required final DateTime? comebackDate,
      required final DateTime? whenDate,
      required final List<Ticket> tickets}) = _$TicketsLoadedStateImpl;

  String? get fromPlace;
  String? get toPlace;
  DateTime? get comebackDate;
  DateTime? get whenDate;
  List<Ticket> get tickets;
  @JsonKey(ignore: true)
  _$$TicketsLoadedStateImplCopyWith<_$TicketsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
