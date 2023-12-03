// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/data/model/chat/chat_model.dart' as _i11;
import '../../clean_architectures/data/model/conversation/conversation_model.dart'
    as _i10;
import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i9;
import '../../clean_architectures/presentation/conversation/bloc/conversation_bloc.dart'
    as _i4;
import '../../clean_architectures/presentation/dashboard/view_model/dashboard_view_model.dart'
    as _i5;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i12;
import '../services/cloundinary_service.dart' as _i3;
import '../services/image_pic_service.dart' as _i8;
import 'modules/data_source_module.dart' as _i13;
import 'modules/storage_moduale.dart' as _i14;

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
  gh.factory<_i4.ConversationBloc>(() => _i4.ConversationBloc());
  gh.factory<_i5.DashboardViewModel>(() => _i5.DashboardViewModel(gh<int>()));
  gh.factory<_i6.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  await gh.singletonAsync<_i7.HiveInterface>(
    () => hiveModule.init(),
    preResolve: true,
  );
  gh.factory<_i8.ImagePicService>(() => _i8.ImagePicService());
  gh.factory<_i9.SettingUseCase>(() => _i9.SettingUseCase());
  gh.singleton<_i7.Box<_i10.ConversationModel>>(
      hiveModule.conversationBox(gh<_i7.HiveInterface>()));
  gh.singleton<_i7.Box<_i11.ChatModel>>(
      hiveModule.chatBox(gh<_i7.HiveInterface>()));
  gh.factory<_i12.SettingBloc>(
      () => _i12.SettingBloc(gh<_i9.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i13.DataSourceModule {}

class _$HiveModule extends _i14.HiveModule {}
