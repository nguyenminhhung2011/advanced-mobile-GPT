// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_modal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatModalState {
  List<Chat> get chats => throw _privateConstructorUsedError;
  Conversation? get conversation => throw _privateConstructorUsedError;
  int? get messageId => throw _privateConstructorUsedError;
  bool get micAvailable => throw _privateConstructorUsedError;
  bool get textAnimation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatModalStateCopyWith<ChatModalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModalStateCopyWith<$Res> {
  factory $ChatModalStateCopyWith(
          ChatModalState value, $Res Function(ChatModalState) then) =
      _$ChatModalStateCopyWithImpl<$Res, ChatModalState>;
  @useResult
  $Res call(
      {List<Chat> chats,
      Conversation? conversation,
      int? messageId,
      bool micAvailable,
      bool textAnimation});

  $ConversationCopyWith<$Res>? get conversation;
}

/// @nodoc
class _$ChatModalStateCopyWithImpl<$Res, $Val extends ChatModalState>
    implements $ChatModalStateCopyWith<$Res> {
  _$ChatModalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? conversation = freezed,
    Object? messageId = freezed,
    Object? micAvailable = null,
    Object? textAnimation = null,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      micAvailable: null == micAvailable
          ? _value.micAvailable
          : micAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      textAnimation: null == textAnimation
          ? _value.textAnimation
          : textAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res>? get conversation {
    if (_value.conversation == null) {
      return null;
    }

    return $ConversationCopyWith<$Res>(_value.conversation!, (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatModalStateCopyWith<$Res>
    implements $ChatModalStateCopyWith<$Res> {
  factory _$$_ChatModalStateCopyWith(
          _$_ChatModalState value, $Res Function(_$_ChatModalState) then) =
      __$$_ChatModalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Chat> chats,
      Conversation? conversation,
      int? messageId,
      bool micAvailable,
      bool textAnimation});

  @override
  $ConversationCopyWith<$Res>? get conversation;
}

/// @nodoc
class __$$_ChatModalStateCopyWithImpl<$Res>
    extends _$ChatModalStateCopyWithImpl<$Res, _$_ChatModalState>
    implements _$$_ChatModalStateCopyWith<$Res> {
  __$$_ChatModalStateCopyWithImpl(
      _$_ChatModalState _value, $Res Function(_$_ChatModalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? conversation = freezed,
    Object? messageId = freezed,
    Object? micAvailable = null,
    Object? textAnimation = null,
  }) {
    return _then(_$_ChatModalState(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      micAvailable: null == micAvailable
          ? _value.micAvailable
          : micAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      textAnimation: null == textAnimation
          ? _value.textAnimation
          : textAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatModalState implements _ChatModalState {
  const _$_ChatModalState(
      {required final List<Chat> chats,
      this.conversation,
      this.messageId,
      this.micAvailable = false,
      this.textAnimation = false})
      : _chats = chats;

  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final Conversation? conversation;
  @override
  final int? messageId;
  @override
  @JsonKey()
  final bool micAvailable;
  @override
  @JsonKey()
  final bool textAnimation;

  @override
  String toString() {
    return 'ChatModalState(chats: $chats, conversation: $conversation, messageId: $messageId, micAvailable: $micAvailable, textAnimation: $textAnimation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatModalState &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.micAvailable, micAvailable) ||
                other.micAvailable == micAvailable) &&
            (identical(other.textAnimation, textAnimation) ||
                other.textAnimation == textAnimation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chats),
      conversation,
      messageId,
      micAvailable,
      textAnimation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatModalStateCopyWith<_$_ChatModalState> get copyWith =>
      __$$_ChatModalStateCopyWithImpl<_$_ChatModalState>(this, _$identity);
}

abstract class _ChatModalState implements ChatModalState {
  const factory _ChatModalState(
      {required final List<Chat> chats,
      final Conversation? conversation,
      final int? messageId,
      final bool micAvailable,
      final bool textAnimation}) = _$_ChatModalState;

  @override
  List<Chat> get chats;
  @override
  Conversation? get conversation;
  @override
  int? get messageId;
  @override
  bool get micAvailable;
  @override
  bool get textAnimation;
  @override
  @JsonKey(ignore: true)
  _$$_ChatModalStateCopyWith<_$_ChatModalState> get copyWith =>
      throw _privateConstructorUsedError;
}
