import 'package:advanced_mobile_gpt/clean_architectures/presentation/conversation/bloc/conversation_modal_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'conversation_event.dart';
part 'conversation_state.dart';

part 'conversation_bloc.freezed.dart';

@injectable
class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  ConversationBloc() : super(const _Initial(data: ConversationModalState()));
}
