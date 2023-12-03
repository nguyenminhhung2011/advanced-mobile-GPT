// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stated,
    required TResult Function() getConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stated,
    TResult? Function()? getConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stated,
    TResult Function()? getConversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) stated,
    required TResult Function(_GetConversation value) getConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? stated,
    TResult? Function(_GetConversation value)? getConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? stated,
    TResult Function(_GetConversation value)? getConversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventCopyWith<$Res> {
  factory $ConversationEventCopyWith(
          ConversationEvent value, $Res Function(ConversationEvent) then) =
      _$ConversationEventCopyWithImpl<$Res, ConversationEvent>;
}

/// @nodoc
class _$ConversationEventCopyWithImpl<$Res, $Val extends ConversationEvent>
    implements $ConversationEventCopyWith<$Res> {
  _$ConversationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ConversationEvent.stated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stated,
    required TResult Function() getConversation,
  }) {
    return stated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stated,
    TResult? Function()? getConversation,
  }) {
    return stated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stated,
    TResult Function()? getConversation,
    required TResult orElse(),
  }) {
    if (stated != null) {
      return stated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) stated,
    required TResult Function(_GetConversation value) getConversation,
  }) {
    return stated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? stated,
    TResult? Function(_GetConversation value)? getConversation,
  }) {
    return stated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? stated,
    TResult Function(_GetConversation value)? getConversation,
    required TResult orElse(),
  }) {
    if (stated != null) {
      return stated(this);
    }
    return orElse();
  }
}

abstract class _Started implements ConversationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetConversationCopyWith<$Res> {
  factory _$$_GetConversationCopyWith(
          _$_GetConversation value, $Res Function(_$_GetConversation) then) =
      __$$_GetConversationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetConversationCopyWithImpl<$Res>
    extends _$ConversationEventCopyWithImpl<$Res, _$_GetConversation>
    implements _$$_GetConversationCopyWith<$Res> {
  __$$_GetConversationCopyWithImpl(
      _$_GetConversation _value, $Res Function(_$_GetConversation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetConversation implements _GetConversation {
  const _$_GetConversation();

  @override
  String toString() {
    return 'ConversationEvent.getConversation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetConversation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stated,
    required TResult Function() getConversation,
  }) {
    return getConversation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? stated,
    TResult? Function()? getConversation,
  }) {
    return getConversation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stated,
    TResult Function()? getConversation,
    required TResult orElse(),
  }) {
    if (getConversation != null) {
      return getConversation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) stated,
    required TResult Function(_GetConversation value) getConversation,
  }) {
    return getConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? stated,
    TResult? Function(_GetConversation value)? getConversation,
  }) {
    return getConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? stated,
    TResult Function(_GetConversation value)? getConversation,
    required TResult orElse(),
  }) {
    if (getConversation != null) {
      return getConversation(this);
    }
    return orElse();
  }
}

abstract class _GetConversation implements ConversationEvent {
  const factory _GetConversation() = _$_GetConversation;
}

/// @nodoc
mixin _$ConversationState {
  ConversationModalState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationModalState data) initial,
    required TResult Function(ConversationModalState data)
        getConversationSuccess,
    required TResult Function(ConversationModalState data, String message)
        getConversationFailed,
    required TResult Function(ConversationModalState data) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationModalState data)? initial,
    TResult? Function(ConversationModalState data)? getConversationSuccess,
    TResult? Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult? Function(ConversationModalState data)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationModalState data)? initial,
    TResult Function(ConversationModalState data)? getConversationSuccess,
    TResult Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult Function(ConversationModalState data)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFailed,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFailed,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationStateCopyWith<ConversationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateCopyWith<$Res> {
  factory $ConversationStateCopyWith(
          ConversationState value, $Res Function(ConversationState) then) =
      _$ConversationStateCopyWithImpl<$Res, ConversationState>;
  @useResult
  $Res call({ConversationModalState data});

  $ConversationModalStateCopyWith<$Res> get data;
}

/// @nodoc
class _$ConversationStateCopyWithImpl<$Res, $Val extends ConversationState>
    implements $ConversationStateCopyWith<$Res> {
  _$ConversationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationModalState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationModalStateCopyWith<$Res> get data {
    return $ConversationModalStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationModalState data});

  @override
  $ConversationModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationModalState,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

  @override
  final ConversationModalState data;

  @override
  String toString() {
    return 'ConversationState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationModalState data) initial,
    required TResult Function(ConversationModalState data)
        getConversationSuccess,
    required TResult Function(ConversationModalState data, String message)
        getConversationFailed,
    required TResult Function(ConversationModalState data) loading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationModalState data)? initial,
    TResult? Function(ConversationModalState data)? getConversationSuccess,
    TResult? Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult? Function(ConversationModalState data)? loading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationModalState data)? initial,
    TResult Function(ConversationModalState data)? getConversationSuccess,
    TResult Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult Function(ConversationModalState data)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConversationState {
  const factory _Initial({required final ConversationModalState data}) =
      _$_Initial;

  @override
  ConversationModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetConversationSuccessCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_GetConversationSuccessCopyWith(_$_GetConversationSuccess value,
          $Res Function(_$_GetConversationSuccess) then) =
      __$$_GetConversationSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationModalState data});

  @override
  $ConversationModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetConversationSuccessCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_GetConversationSuccess>
    implements _$$_GetConversationSuccessCopyWith<$Res> {
  __$$_GetConversationSuccessCopyWithImpl(_$_GetConversationSuccess _value,
      $Res Function(_$_GetConversationSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetConversationSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationModalState,
    ));
  }
}

/// @nodoc

class _$_GetConversationSuccess implements _GetConversationSuccess {
  const _$_GetConversationSuccess({required this.data});

  @override
  final ConversationModalState data;

  @override
  String toString() {
    return 'ConversationState.getConversationSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetConversationSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetConversationSuccessCopyWith<_$_GetConversationSuccess> get copyWith =>
      __$$_GetConversationSuccessCopyWithImpl<_$_GetConversationSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationModalState data) initial,
    required TResult Function(ConversationModalState data)
        getConversationSuccess,
    required TResult Function(ConversationModalState data, String message)
        getConversationFailed,
    required TResult Function(ConversationModalState data) loading,
  }) {
    return getConversationSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationModalState data)? initial,
    TResult? Function(ConversationModalState data)? getConversationSuccess,
    TResult? Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult? Function(ConversationModalState data)? loading,
  }) {
    return getConversationSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationModalState data)? initial,
    TResult Function(ConversationModalState data)? getConversationSuccess,
    TResult Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult Function(ConversationModalState data)? loading,
    required TResult orElse(),
  }) {
    if (getConversationSuccess != null) {
      return getConversationSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return getConversationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return getConversationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (getConversationSuccess != null) {
      return getConversationSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetConversationSuccess implements ConversationState {
  const factory _GetConversationSuccess(
      {required final ConversationModalState data}) = _$_GetConversationSuccess;

  @override
  ConversationModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetConversationSuccessCopyWith<_$_GetConversationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetConversationFailedCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_GetConversationFailedCopyWith(_$_GetConversationFailed value,
          $Res Function(_$_GetConversationFailed) then) =
      __$$_GetConversationFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationModalState data, String message});

  @override
  $ConversationModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetConversationFailedCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_GetConversationFailed>
    implements _$$_GetConversationFailedCopyWith<$Res> {
  __$$_GetConversationFailedCopyWithImpl(_$_GetConversationFailed _value,
      $Res Function(_$_GetConversationFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetConversationFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationModalState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetConversationFailed implements _GetConversationFailed {
  const _$_GetConversationFailed({required this.data, required this.message});

  @override
  final ConversationModalState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ConversationState.getConversationFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetConversationFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetConversationFailedCopyWith<_$_GetConversationFailed> get copyWith =>
      __$$_GetConversationFailedCopyWithImpl<_$_GetConversationFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationModalState data) initial,
    required TResult Function(ConversationModalState data)
        getConversationSuccess,
    required TResult Function(ConversationModalState data, String message)
        getConversationFailed,
    required TResult Function(ConversationModalState data) loading,
  }) {
    return getConversationFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationModalState data)? initial,
    TResult? Function(ConversationModalState data)? getConversationSuccess,
    TResult? Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult? Function(ConversationModalState data)? loading,
  }) {
    return getConversationFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationModalState data)? initial,
    TResult Function(ConversationModalState data)? getConversationSuccess,
    TResult Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult Function(ConversationModalState data)? loading,
    required TResult orElse(),
  }) {
    if (getConversationFailed != null) {
      return getConversationFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return getConversationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return getConversationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (getConversationFailed != null) {
      return getConversationFailed(this);
    }
    return orElse();
  }
}

abstract class _GetConversationFailed implements ConversationState {
  const factory _GetConversationFailed(
      {required final ConversationModalState data,
      required final String message}) = _$_GetConversationFailed;

  @override
  ConversationModalState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetConversationFailedCopyWith<_$_GetConversationFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ConversationStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConversationModalState data});

  @override
  $ConversationModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationModalState,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.data});

  @override
  final ConversationModalState data;

  @override
  String toString() {
    return 'ConversationState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ConversationModalState data) initial,
    required TResult Function(ConversationModalState data)
        getConversationSuccess,
    required TResult Function(ConversationModalState data, String message)
        getConversationFailed,
    required TResult Function(ConversationModalState data) loading,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ConversationModalState data)? initial,
    TResult? Function(ConversationModalState data)? getConversationSuccess,
    TResult? Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult? Function(ConversationModalState data)? loading,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ConversationModalState data)? initial,
    TResult Function(ConversationModalState data)? getConversationSuccess,
    TResult Function(ConversationModalState data, String message)?
        getConversationFailed,
    TResult Function(ConversationModalState data)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ConversationState {
  const factory _Loading({required final ConversationModalState data}) =
      _$_Loading;

  @override
  ConversationModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
