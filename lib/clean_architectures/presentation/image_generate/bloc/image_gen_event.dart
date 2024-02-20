part of 'image_gen_bloc.dart';

@freezed
class ImageGenEvent with _$ImageGenEvent {
  const factory ImageGenEvent.started() = _Started;
}
