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
    required TResult Function(String content) sendChat,
    required TResult Function() getConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChat,
    TResult? Function(String content)? sendChat,
    TResult? Function()? getConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChat,
    TResult Function(String content)? sendChat,
    TResult Function()? getConversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChat value) getChat,
    required TResult Function(_SendChat value) sendChat,
    required TResult Function(_GetConversation value) getConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChat value)? getChat,
    TResult? Function(_SendChat value)? sendChat,
    TResult? Function(_GetConversation value)? getConversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendChat value)? sendChat,
    TResult Function(_GetConversation value)? getConversation,
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
    required TResult Function(String content) sendChat,
    required TResult Function() getConversation,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChat,
    TResult? Function(String content)? sendChat,
    TResult? Function()? getConversation,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChat,
    TResult Function(String content)? sendChat,
    TResult Function()? getConversation,
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
    required TResult Function(_SendChat value) sendChat,
    required TResult Function(_GetConversation value) getConversation,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChat value)? getChat,
    TResult? Function(_SendChat value)? sendChat,
    TResult? Function(_GetConversation value)? getConversation,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendChat value)? sendChat,
    TResult Function(_GetConversation value)? getConversation,
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
    required TResult Function(String content) sendChat,
    required TResult Function() getConversation,
  }) {
    return getChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChat,
    TResult? Function(String content)? sendChat,
    TResult? Function()? getConversation,
  }) {
    return getChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChat,
    TResult Function(String content)? sendChat,
    TResult Function()? getConversation,
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
    required TResult Function(_SendChat value) sendChat,
    required TResult Function(_GetConversation value) getConversation,
  }) {
    return getChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChat value)? getChat,
    TResult? Function(_SendChat value)? sendChat,
    TResult? Function(_GetConversation value)? getConversation,
  }) {
    return getChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendChat value)? sendChat,
    TResult Function(_GetConversation value)? getConversation,
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
abstract class _$$_SendChatCopyWith<$Res> {
  factory _$$_SendChatCopyWith(
          _$_SendChat value, $Res Function(_$_SendChat) then) =
      __$$_SendChatCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$_SendChatCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_SendChat>
    implements _$$_SendChatCopyWith<$Res> {
  __$$_SendChatCopyWithImpl(
      _$_SendChat _value, $Res Function(_$_SendChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$_SendChat(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendChat implements _SendChat {
  const _$_SendChat(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'ChatEvent.sendChat(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendChat &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendChatCopyWith<_$_SendChat> get copyWith =>
      __$$_SendChatCopyWithImpl<_$_SendChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getChat,
    required TResult Function(String content) sendChat,
    required TResult Function() getConversation,
  }) {
    return sendChat(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChat,
    TResult? Function(String content)? sendChat,
    TResult? Function()? getConversation,
  }) {
    return sendChat?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChat,
    TResult Function(String content)? sendChat,
    TResult Function()? getConversation,
    required TResult orElse(),
  }) {
    if (sendChat != null) {
      return sendChat(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChat value) getChat,
    required TResult Function(_SendChat value) sendChat,
    required TResult Function(_GetConversation value) getConversation,
  }) {
    return sendChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChat value)? getChat,
    TResult? Function(_SendChat value)? sendChat,
    TResult? Function(_GetConversation value)? getConversation,
  }) {
    return sendChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendChat value)? sendChat,
    TResult Function(_GetConversation value)? getConversation,
    required TResult orElse(),
  }) {
    if (sendChat != null) {
      return sendChat(this);
    }
    return orElse();
  }
}

abstract class _SendChat implements ChatEvent {
  const factory _SendChat(final String content) = _$_SendChat;

  String get content;
  @JsonKey(ignore: true)
  _$$_SendChatCopyWith<_$_SendChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetConversationCopyWith<$Res> {
  factory _$$_GetConversationCopyWith(
          _$_GetConversation value, $Res Function(_$_GetConversation) then) =
      __$$_GetConversationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetConversationCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_GetConversation>
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
    return 'ChatEvent.getConversation()';
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
    required TResult Function() started,
    required TResult Function() getChat,
    required TResult Function(String content) sendChat,
    required TResult Function() getConversation,
  }) {
    return getConversation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getChat,
    TResult? Function(String content)? sendChat,
    TResult? Function()? getConversation,
  }) {
    return getConversation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getChat,
    TResult Function(String content)? sendChat,
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
    required TResult Function(_Started value) started,
    required TResult Function(_GetChat value) getChat,
    required TResult Function(_SendChat value) sendChat,
    required TResult Function(_GetConversation value) getConversation,
  }) {
    return getConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChat value)? getChat,
    TResult? Function(_SendChat value)? sendChat,
    TResult? Function(_GetConversation value)? getConversation,
  }) {
    return getConversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendChat value)? sendChat,
    TResult Function(_GetConversation value)? getConversation,
    required TResult orElse(),
  }) {
    if (getConversation != null) {
      return getConversation(this);
    }
    return orElse();
  }
}

abstract class _GetConversation implements ChatEvent {
  const factory _GetConversation() = _$_GetConversation;
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
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
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
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
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
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
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
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return getChatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return getChatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
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
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return getChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return getChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
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
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return getChatFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return getChatFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
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
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return getChatFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return getChatFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
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
abstract class _$$_SendChatSuccessCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_SendChatSuccessCopyWith(
          _$_SendChatSuccess value, $Res Function(_$_SendChatSuccess) then) =
      __$$_SendChatSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SendChatSuccessCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_SendChatSuccess>
    implements _$$_SendChatSuccessCopyWith<$Res> {
  __$$_SendChatSuccessCopyWithImpl(
      _$_SendChatSuccess _value, $Res Function(_$_SendChatSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SendChatSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModalState,
    ));
  }
}

/// @nodoc

class _$_SendChatSuccess extends _SendChatSuccess {
  const _$_SendChatSuccess({required this.data}) : super._();

  @override
  final ChatModalState data;

  @override
  String toString() {
    return 'ChatState.sendChatSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendChatSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendChatSuccessCopyWith<_$_SendChatSuccess> get copyWith =>
      __$$_SendChatSuccessCopyWithImpl<_$_SendChatSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return sendChatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return sendChatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
    required TResult orElse(),
  }) {
    if (sendChatSuccess != null) {
      return sendChatSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return sendChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return sendChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
    required TResult orElse(),
  }) {
    if (sendChatSuccess != null) {
      return sendChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendChatSuccess extends ChatState {
  const factory _SendChatSuccess({required final ChatModalState data}) =
      _$_SendChatSuccess;
  const _SendChatSuccess._() : super._();

  @override
  ChatModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_SendChatSuccessCopyWith<_$_SendChatSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendChatFailedCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_SendChatFailedCopyWith(
          _$_SendChatFailed value, $Res Function(_$_SendChatFailed) then) =
      __$$_SendChatFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data, String message});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SendChatFailedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_SendChatFailed>
    implements _$$_SendChatFailedCopyWith<$Res> {
  __$$_SendChatFailedCopyWithImpl(
      _$_SendChatFailed _value, $Res Function(_$_SendChatFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SendChatFailed(
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

class _$_SendChatFailed extends _SendChatFailed {
  const _$_SendChatFailed({required this.data, required this.message})
      : super._();

  @override
  final ChatModalState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.sendChatFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendChatFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendChatFailedCopyWith<_$_SendChatFailed> get copyWith =>
      __$$_SendChatFailedCopyWithImpl<_$_SendChatFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return sendChatFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return sendChatFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
    required TResult orElse(),
  }) {
    if (sendChatFailed != null) {
      return sendChatFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return sendChatFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return sendChatFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
    required TResult orElse(),
  }) {
    if (sendChatFailed != null) {
      return sendChatFailed(this);
    }
    return orElse();
  }
}

abstract class _SendChatFailed extends ChatState {
  const factory _SendChatFailed(
      {required final ChatModalState data,
      required final String message}) = _$_SendChatFailed;
  const _SendChatFailed._() : super._();

  @override
  ChatModalState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SendChatFailedCopyWith<_$_SendChatFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetConversationSuccessCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_GetConversationSuccessCopyWith(_$_GetConversationSuccess value,
          $Res Function(_$_GetConversationSuccess) then) =
      __$$_GetConversationSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetConversationSuccessCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_GetConversationSuccess>
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
              as ChatModalState,
    ));
  }
}

/// @nodoc

class _$_GetConversationSuccess extends _GetConversationSuccess {
  const _$_GetConversationSuccess({required this.data}) : super._();

  @override
  final ChatModalState data;

  @override
  String toString() {
    return 'ChatState.getConversationSuccess(data: $data)';
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
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return getConversationSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return getConversationSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
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
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return getConversationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return getConversationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
    required TResult orElse(),
  }) {
    if (getConversationSuccess != null) {
      return getConversationSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetConversationSuccess extends ChatState {
  const factory _GetConversationSuccess({required final ChatModalState data}) =
      _$_GetConversationSuccess;
  const _GetConversationSuccess._() : super._();

  @override
  ChatModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetConversationSuccessCopyWith<_$_GetConversationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetConversationFailedCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_GetConversationFailedCopyWith(_$_GetConversationFailed value,
          $Res Function(_$_GetConversationFailed) then) =
      __$$_GetConversationFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data, String message});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetConversationFailedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_GetConversationFailed>
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
              as ChatModalState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetConversationFailed extends _GetConversationFailed {
  const _$_GetConversationFailed({required this.data, required this.message})
      : super._();

  @override
  final ChatModalState data;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.getConversationFalied(data: $data, message: $message)';
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
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return getConversationFalied(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return getConversationFalied?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
    required TResult orElse(),
  }) {
    if (getConversationFalied != null) {
      return getConversationFalied(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return getConversationFalied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return getConversationFalied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
    required TResult orElse(),
  }) {
    if (getConversationFalied != null) {
      return getConversationFalied(this);
    }
    return orElse();
  }
}

abstract class _GetConversationFailed extends ChatState {
  const factory _GetConversationFailed(
      {required final ChatModalState data,
      required final String message}) = _$_GetConversationFailed;
  const _GetConversationFailed._() : super._();

  @override
  ChatModalState get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetConversationFailedCopyWith<_$_GetConversationFailed> get copyWith =>
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
    return 'ChatState.loading(data: $data)';
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
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
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
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
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

/// @nodoc
abstract class _$$_LoadingSendCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$_LoadingSendCopyWith(
          _$_LoadingSend value, $Res Function(_$_LoadingSend) then) =
      __$$_LoadingSendCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatModalState data});

  @override
  $ChatModalStateCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingSendCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_LoadingSend>
    implements _$$_LoadingSendCopyWith<$Res> {
  __$$_LoadingSendCopyWithImpl(
      _$_LoadingSend _value, $Res Function(_$_LoadingSend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadingSend(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatModalState,
    ));
  }
}

/// @nodoc

class _$_LoadingSend extends _LoadingSend {
  const _$_LoadingSend({required this.data}) : super._();

  @override
  final ChatModalState data;

  @override
  String toString() {
    return 'ChatState.loadingSend(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingSend &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingSendCopyWith<_$_LoadingSend> get copyWith =>
      __$$_LoadingSendCopyWithImpl<_$_LoadingSend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatModalState data) initial,
    required TResult Function(ChatModalState data) getChatSuccess,
    required TResult Function(ChatModalState data, String message)
        getChatFailed,
    required TResult Function(ChatModalState data) sendChatSuccess,
    required TResult Function(ChatModalState data, String message)
        sendChatFailed,
    required TResult Function(ChatModalState data) getConversationSuccess,
    required TResult Function(ChatModalState data, String message)
        getConversationFalied,
    required TResult Function(ChatModalState data) loading,
    required TResult Function(ChatModalState data) loadingSend,
  }) {
    return loadingSend(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatModalState data)? initial,
    TResult? Function(ChatModalState data)? getChatSuccess,
    TResult? Function(ChatModalState data, String message)? getChatFailed,
    TResult? Function(ChatModalState data)? sendChatSuccess,
    TResult? Function(ChatModalState data, String message)? sendChatFailed,
    TResult? Function(ChatModalState data)? getConversationSuccess,
    TResult? Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult? Function(ChatModalState data)? loading,
    TResult? Function(ChatModalState data)? loadingSend,
  }) {
    return loadingSend?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatModalState data)? initial,
    TResult Function(ChatModalState data)? getChatSuccess,
    TResult Function(ChatModalState data, String message)? getChatFailed,
    TResult Function(ChatModalState data)? sendChatSuccess,
    TResult Function(ChatModalState data, String message)? sendChatFailed,
    TResult Function(ChatModalState data)? getConversationSuccess,
    TResult Function(ChatModalState data, String message)?
        getConversationFalied,
    TResult Function(ChatModalState data)? loading,
    TResult Function(ChatModalState data)? loadingSend,
    required TResult orElse(),
  }) {
    if (loadingSend != null) {
      return loadingSend(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_GetChatFailed value) getChatFailed,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_SendChatFailed value) sendChatFailed,
    required TResult Function(_GetConversationSuccess value)
        getConversationSuccess,
    required TResult Function(_GetConversationFailed value)
        getConversationFalied,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingSend value) loadingSend,
  }) {
    return loadingSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetChatSuccess value)? getChatSuccess,
    TResult? Function(_GetChatFailed value)? getChatFailed,
    TResult? Function(_SendChatSuccess value)? sendChatSuccess,
    TResult? Function(_SendChatFailed value)? sendChatFailed,
    TResult? Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult? Function(_GetConversationFailed value)? getConversationFalied,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingSend value)? loadingSend,
  }) {
    return loadingSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_GetChatFailed value)? getChatFailed,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_SendChatFailed value)? sendChatFailed,
    TResult Function(_GetConversationSuccess value)? getConversationSuccess,
    TResult Function(_GetConversationFailed value)? getConversationFalied,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingSend value)? loadingSend,
    required TResult orElse(),
  }) {
    if (loadingSend != null) {
      return loadingSend(this);
    }
    return orElse();
  }
}

abstract class _LoadingSend extends ChatState {
  const factory _LoadingSend({required final ChatModalState data}) =
      _$_LoadingSend;
  const _LoadingSend._() : super._();

  @override
  ChatModalState get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingSendCopyWith<_$_LoadingSend> get copyWith =>
      throw _privateConstructorUsedError;
}
