// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_modal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationModalState {
  List<Conversation> get conversations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationModalStateCopyWith<ConversationModalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationModalStateCopyWith<$Res> {
  factory $ConversationModalStateCopyWith(ConversationModalState value,
          $Res Function(ConversationModalState) then) =
      _$ConversationModalStateCopyWithImpl<$Res, ConversationModalState>;
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class _$ConversationModalStateCopyWithImpl<$Res,
        $Val extends ConversationModalState>
    implements $ConversationModalStateCopyWith<$Res> {
  _$ConversationModalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_value.copyWith(
      conversations: null == conversations
          ? _value.conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConversationViewStateCopyWith<$Res>
    implements $ConversationModalStateCopyWith<$Res> {
  factory _$$_ConversationViewStateCopyWith(_$_ConversationViewState value,
          $Res Function(_$_ConversationViewState) then) =
      __$$_ConversationViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class __$$_ConversationViewStateCopyWithImpl<$Res>
    extends _$ConversationModalStateCopyWithImpl<$Res, _$_ConversationViewState>
    implements _$$_ConversationViewStateCopyWith<$Res> {
  __$$_ConversationViewStateCopyWithImpl(_$_ConversationViewState _value,
      $Res Function(_$_ConversationViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$_ConversationViewState(
      conversations: null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<Conversation>,
    ));
  }
}

/// @nodoc

class _$_ConversationViewState implements _ConversationViewState {
  const _$_ConversationViewState(
      {required final List<Conversation> conversations})
      : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ConversationModalState(conversations: $conversations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationViewState &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationViewStateCopyWith<_$_ConversationViewState> get copyWith =>
      __$$_ConversationViewStateCopyWithImpl<_$_ConversationViewState>(
          this, _$identity);
}

abstract class _ConversationViewState implements ConversationModalState {
  const factory _ConversationViewState(
          {required final List<Conversation> conversations}) =
      _$_ConversationViewState;

  @override
  List<Conversation> get conversations;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationViewStateCopyWith<_$_ConversationViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
