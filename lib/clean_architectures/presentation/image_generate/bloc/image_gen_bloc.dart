import 'package:advanced_mobile_gpt/clean_architectures/presentation/image_generate/bloc/image_gen_modal_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'image_gen_event.dart';
part 'image_gen_state.dart';

part 'image_gen_bloc.freezed.dart';

@injectable
class ImageGenBloc extends Bloc<ImageGenEvent, ImageGenState> {
  ImageGenBloc() : super(const _Initial(data: ImageGenModalState()));
}
