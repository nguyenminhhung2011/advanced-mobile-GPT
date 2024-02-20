part of 'image_gen_bloc.dart';

@freezed
class ImageGenState with _$ImageGenState {
  const factory ImageGenState.initial({required ImageGenModalState data}) =
      _Initial;
}
