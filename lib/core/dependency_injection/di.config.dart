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
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/data/model/chat/chat_model.dart' as _i10;
import '../../clean_architectures/data/model/conversation/conversation_model.dart'
    as _i9;
import '../../clean_architectures/data/repositories/conversation_repositorie_impl.dart'
    as _i12;
import '../../clean_architectures/domain/repositories/conversation_repositories.dart'
    as _i11;
import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i8;
import '../../clean_architectures/presentation/conversation/bloc/conversation_bloc.dart'
    as _i14;
import '../../clean_architectures/presentation/dashboard/view_model/dashboard_view_model.dart'
    as _i4;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i13;
import '../services/cloundinary_service.dart' as _i3;
import '../services/image_pic_service.dart' as _i7;
import 'modules/data_source_module.dart' as _i15;
import 'modules/storage_moduale.dart' as _i16;

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
  await gh.singletonAsync<_i6.HiveInterface>(
    () => hiveModule.init(),
    preResolve: true,
  );
  gh.factory<_i7.ImagePicService>(() => _i7.ImagePicService());
  gh.factory<_i8.SettingUseCase>(() => _i8.SettingUseCase());
  gh.singleton<_i6.Box<_i9.ConversationModel>>(
      hiveModule.conversationBox(gh<_i6.HiveInterface>()));
  gh.singleton<_i6.Box<_i10.ChatModel>>(
      hiveModule.chatBox(gh<_i6.HiveInterface>()));
  gh.factory<_i11.ConversationRepositories>(() =>
      _i12.ConversationRepositoriesImpl(gh<_i6.Box<_i9.ConversationModel>>()));
  gh.factory<_i13.SettingBloc>(
      () => _i13.SettingBloc(gh<_i8.SettingUseCase>()));
  gh.factory<_i14.ConversationBloc>(
      () => _i14.ConversationBloc(gh<_i11.ConversationRepositories>()));
  return getIt;
}

class _$DataSourceModule extends _i15.DataSourceModule {}

class _$HiveModule extends _i16.HiveModule {}
