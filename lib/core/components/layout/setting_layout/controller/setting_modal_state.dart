import 'dart:ui';

import 'package:advanced_mobile_gpt/clean_architectures/domain/entities/user/user.dart';
import 'package:advanced_mobile_gpt/core/components/layout/setting_layout/controller/setting_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'setting_modal_state.freezed.dart';

@freezed
class SettingModalState with _$SettingModalState {
  const factory SettingModalState({
    @Default(Appearance.light) Appearance appearance,
    @Default(Currencies.usd) Currencies currencies,
    @Default('en') String langCode,
    @Default(Locale('en', '')) Locale currentLocale,
    @Default('') String passCode,
    User? currentUser,
  }) = _SettingModalState;
}
