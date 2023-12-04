// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChat value) getChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChat value)? getChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChat value)? getChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

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
    extends _$ChatEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ChatEvent.started()';
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
    required TResult Function() started,
    required TResult Function() getChat,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChat,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChat,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChat value) getChat,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChat value)? getChat,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChat value)? getChat,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetChatCopyWith<$Res> {
  factory _$$_GetChatCopyWith(
          _$_GetChat value, $Res Function(_$_GetChat) then) =
      __$$_GetChatCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetChatCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_GetChat>
    implements _$$_GetChatCopyWith<$Res> {
  __$$_GetChatCopyWithImpl(_$_GetChat _value, $Res Function(_$_GetChat) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetChat implements _GetChat {
  const _$_GetChat();

  @override
  String toString() {
    return 'ChatEvent.getChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChat,
  }) {
    return getChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChat,
  }) {
    return getChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChat,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChat value) getChat,
  }) {
    return getChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChat value)? getChat,
  }) {
    return getChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChat value)? getChat,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(this);
    }
    return orElse();
  }
}

abstract class _GetChat implements ChatEvent {
  const factory _GetChat() = _$_GetChat;
}

/// @nodoc
mixin _$ChatState {
  ChatModalState get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) lLading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? lLading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? lLading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_Loading value) lLading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_Loading value)? lLading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_Loading value)? lLading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({ChatModalState data});

  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

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
              as ChatModalState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatModalStateCopyWith<$Res> get data {
    return $ChatModalStateCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Initial>
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
              as ChatModalState,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final ChatModalState data;

  @override
  String toString() {
    return 'ChatState.initial(data: $data)';
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
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) lLading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? lLading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? lLading,
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
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_Loading value) lLading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_Loading value)? lLading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_Loading value)? lLading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ChatState {
  const factory _Initial({required final ChatModalState data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  ChatModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetChatSuccessCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_GetChatSuccessCopyWith(
          _$_GetChatSuccess value, $Res Function(_$_GetChatSuccess) then) =
      __$$_GetChatSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetChatSuccessCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_GetChatSuccess>
    implements _$$_GetChatSuccessCopyWith<$Res> {
  __$$_GetChatSuccessCopyWithImpl(
      _$_GetChatSuccess _value, $Res Function(_$_GetChatSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetChatSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModalState,
    ));
  }
}

/// @nodoc

class _$_GetChatSuccess extends _GetChatSuccess {
  const _$_GetChatSuccess({required this.data}) : super._();

  @override
  final ChatModalState data;

  @override
  String toString() {
    return 'ChatState.getChatSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetChatSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetChatSuccessCopyWith<_$_GetChatSuccess> get copyWith =>
      __$$_GetChatSuccessCopyWithImpl<_$_GetChatSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) lLading,
  }) {
    return getChatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? lLading,
  }) {
    return getChatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? lLading,
    required TResult orElse(),
  }) {
    if (getChatSuccess != null) {
      return getChatSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_Loading value) lLading,
  }) {
    return getChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_Loading value)? lLading,
  }) {
    return getChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_Loading value)? lLading,
    required TResult orElse(),
  }) {
    if (getChatSuccess != null) {
      return getChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetChatSuccess extends ChatState {
  const factory _GetChatSuccess({required final ChatModalState data}) =
      _$_GetChatSuccess;
  const _GetChatSuccess._() : super._();

  @override
  ChatModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetChatSuccessCopyWith<_$_GetChatSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetChatFailedCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_GetChatFailedCopyWith(
          _$_GetChatFailed value, $Res Function(_$_GetChatFailed) then) =
      __$$_GetChatFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data, String message});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetChatFailedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_GetChatFailed>
    implements _$$_GetChatFailedCopyWith<$Res> {
  __$$_GetChatFailedCopyWithImpl(
      _$_GetChatFailed _value, $Res Function(_$_GetChatFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetChatFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModalState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetChatFailed extends _GetChatFailed {
  const _$_GetChatFailed({required this.data, required this.message})
      : super._();

  @override
  final ChatModalState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.getChatFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetChatFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetChatFailedCopyWith<_$_GetChatFailed> get copyWith =>
      __$$_GetChatFailedCopyWithImpl<_$_GetChatFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) lLading,
  }) {
    return getChatFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? lLading,
  }) {
    return getChatFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? lLading,
    required TResult orElse(),
  }) {
    if (getChatFailed != null) {
      return getChatFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_Loading value) lLading,
  }) {
    return getChatFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_Loading value)? lLading,
  }) {
    return getChatFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_Loading value)? lLading,
    required TResult orElse(),
  }) {
    if (getChatFailed != null) {
      return getChatFailed(this);
    }
    return orElse();
  }
}

abstract class _GetChatFailed extends ChatState {
  const factory _GetChatFailed(
      {required final ChatModalState data,
      required final String message}) = _$_GetChatFailed;
  const _GetChatFailed._() : super._();

  @override
  ChatModalState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetChatFailedCopyWith<_$_GetChatFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Loading>
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
              as ChatModalState,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final ChatModalState data;

  @override
  String toString() {
    return 'ChatState.lLading(data: $data)';
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
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) lLading,
  }) {
    return lLading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? lLading,
  }) {
    return lLading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? lLading,
    required TResult orElse(),
  }) {
    if (lLading != null) {
      return lLading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_Loading value) lLading,
  }) {
    return lLading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_Loading value)? lLading,
  }) {
    return lLading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_Loading value)? lLading,
    required TResult orElse(),
  }) {
    if (lLading != null) {
      return lLading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ChatState {
  const factory _Loading({required final ChatModalState data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  ChatModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
