// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/data/data_source/remote/gpt_api.dart' as _i4;
import '../../clean_architectures/data/model/chat/chat_model.dart' as _i11;
import '../../clean_architectures/data/model/conversation/conversation_model.dart'
    as _i10;
import '../../clean_architectures/data/repositories/chat_repositories_impl.dart'
    as _i13;
import '../../clean_architectures/data/repositories/conversation_repositorie_impl.dart'
    as _i15;
import '../../clean_architectures/domain/repositories/chat_repositories.dart'
    as _i12;
import '../../clean_architectures/domain/repositories/conversation_repositories.dart'
    as _i14;
import '../../clean_architectures/domain/usecase/chat_usecase.dart' as _i18;
import '../../clean_architectures/domain/usecase/conversation_usecase.dart'
    as _i16;
import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i7;
import '../../clean_architectures/presentation/chat_bot/bloc/chat_bloc.dart'
    as _i20;
import '../../clean_architectures/presentation/conversation/bloc/conversation_bloc.dart'
    as _i19;
import '../../clean_architectures/presentation/input_api/cubit/input_api_cubit.dart'
    as _i6;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i17;
import '../services/speech_to_text_service.dart' as _i8;
import '../services/text_to_speech_service.dart' as _i9;
import 'modules/data_source_module.dart' as _i21;
import 'modules/storage_module.dart' as _i22;

const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataSourceModule = _$DataSourceModule();
  final hiveModule = _$HiveModule();
  gh.factory<_i3.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i4.GPTApi>(() => _i4.GPTApi(gh<_i3.Dio>()));
  await gh.singletonAsync<_i5.HiveInterface>(
    () => hiveModule.init(),
    preResolve: true,
  );
  gh.factory<_i6.InputApiCubit>(() => _i6.InputApiCubit());
  gh.factory<_i7.SettingUseCase>(() => _i7.SettingUseCase());
  gh.factory<_i8.SpeechToTextService>(() => _i8.SpeechToTextService());
  gh.factory<_i9.TextToSpeechService>(() => _i9.TextToSpeechService());
  gh.singleton<_i5.Box<_i10.ConversationModel>>(
      hiveModule.conversationBox(gh<_i5.HiveInterface>()));
  gh.singleton<_i5.Box<_i11.ChatModel>>(
      hiveModule.chatBox(gh<_i5.HiveInterface>()));
  gh.factory<_i12.ChatRepositories>(
      () => _i13.ChatRepositoriesImpl(gh<_i4.GPTApi>()));
  gh.factory<_i14.ConversationRepositories>(() =>
      _i15.ConversationRepositoriesImpl(gh<_i5.Box<_i10.ConversationModel>>()));
  gh.factory<_i16.ConversationUserCase>(
      () => _i16.ConversationUserCase(gh<_i14.ConversationRepositories>()));
  gh.factory<_i17.SettingBloc>(
      () => _i17.SettingBloc(gh<_i7.SettingUseCase>()));
  gh.factory<_i18.ChatUseCase>(() => _i18.ChatUseCase(
        gh<_i12.ChatRepositories>(),
        gh<_i14.ConversationRepositories>(),
      ));
  gh.factory<_i19.ConversationBloc>(
      () => _i19.ConversationBloc(gh<_i16.ConversationUserCase>()));
  gh.factoryParam<_i20.ChatBloc, int, dynamic>((
    conversationId,
    _,
  ) =>
      _i20.ChatBloc(
        conversationId,
        gh<_i18.ChatUseCase>(),
        gh<_i8.SpeechToTextService>(),
        gh<_i9.TextToSpeechService>(),
      ));
  return getIt;
}

class _$DataSourceModule extends _i21.DataSourceModule {}

class _$HiveModule extends _i22.HiveModule {}
