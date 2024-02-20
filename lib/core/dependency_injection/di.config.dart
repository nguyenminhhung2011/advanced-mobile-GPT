// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/data/data_source/remote/gpt_api.dart' as _i6;
import '../../clean_architectures/data/model/chat/chat_model.dart' as _i15;
import '../../clean_architectures/data/model/conversation/conversation_model.dart'
    as _i14;
import '../../clean_architectures/data/repositories/chat_repositories_impl.dart'
    as _i17;
import '../../clean_architectures/data/repositories/conversation_repositorie_impl.dart'
    as _i19;
import '../../clean_architectures/domain/repositories/chat_repositories.dart'
    as _i16;
import '../../clean_architectures/domain/repositories/conversation_repositories.dart'
    as _i18;
import '../../clean_architectures/domain/usecase/chat_usecase.dart' as _i22;
import '../../clean_architectures/domain/usecase/conversation_usecase.dart'
    as _i20;
import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i11;
import '../../clean_architectures/presentation/chat_bot/bloc/chat_bloc.dart'
    as _i24;
import '../../clean_architectures/presentation/conversation/bloc/conversation_bloc.dart'
    as _i23;
import '../../clean_architectures/presentation/dashboard/view_model/dashboard_view_model.dart'
    as _i4;
import '../../clean_architectures/presentation/image_generate/bloc/image_gen_bloc.dart'
    as _i8;
import '../../clean_architectures/presentation/input_api/cubit/input_api_cubit.dart'
    as _i10;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i21;
import '../services/cloundinary_service.dart' as _i3;
import '../services/image_pic_service.dart' as _i9;
import '../services/speech_to_text_service.dart' as _i12;
import '../services/text_to_speech_service.dart' as _i13;
import 'modules/data_source_module.dart' as _i25;
import 'modules/storage_module.dart' as _i26;

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
  gh.factory<_i3.CloundinaryService>(() => _i3.CloundinaryService());
  gh.factory<_i4.DashboardViewModel>(() => _i4.DashboardViewModel(gh<int>()));
  gh.factory<_i5.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i6.GPTApi>(() => _i6.GPTApi(gh<_i5.Dio>()));
  await gh.singletonAsync<_i7.HiveInterface>(
    () => hiveModule.init(),
    preResolve: true,
  );
  gh.factory<_i8.ImageGenBloc>(() => _i8.ImageGenBloc());
  gh.factory<_i9.ImagePicService>(() => _i9.ImagePicService());
  gh.factory<_i10.InputApiCubit>(() => _i10.InputApiCubit());
  gh.factory<_i11.SettingUseCase>(() => _i11.SettingUseCase());
  gh.factory<_i12.SpeechToTextService>(() => _i12.SpeechToTextService());
  gh.factory<_i13.TextToSpeechService>(() => _i13.TextToSpeechService());
  gh.singleton<_i7.Box<_i14.ConversationModel>>(
      hiveModule.conversationBox(gh<_i7.HiveInterface>()));
  gh.singleton<_i7.Box<_i15.ChatModel>>(
      hiveModule.chatBox(gh<_i7.HiveInterface>()));
  gh.factory<_i16.ChatRepositories>(
      () => _i17.ChatRepositoriesImpl(gh<_i6.GPTApi>()));
  gh.factory<_i18.ConversationRepositories>(() =>
      _i19.ConversationRepositoriesImpl(gh<_i7.Box<_i14.ConversationModel>>()));
  gh.factory<_i20.ConversationUserCase>(
      () => _i20.ConversationUserCase(gh<_i18.ConversationRepositories>()));
  gh.factory<_i21.SettingBloc>(
      () => _i21.SettingBloc(gh<_i11.SettingUseCase>()));
  gh.factory<_i22.ChatUseCase>(() => _i22.ChatUseCase(
        gh<_i16.ChatRepositories>(),
        gh<_i18.ConversationRepositories>(),
      ));
  gh.factory<_i23.ConversationBloc>(
      () => _i23.ConversationBloc(gh<_i20.ConversationUserCase>()));
  gh.factoryParam<_i24.ChatBloc, int, dynamic>((
    conversationId,
    _,
  ) =>
      _i24.ChatBloc(
        conversationId,
        gh<_i22.ChatUseCase>(),
        gh<_i12.SpeechToTextService>(),
        gh<_i13.TextToSpeechService>(),
      ));
  return getIt;
}

class _$DataSourceModule extends _i25.DataSourceModule {}

class _$HiveModule extends _i26.HiveModule {}
