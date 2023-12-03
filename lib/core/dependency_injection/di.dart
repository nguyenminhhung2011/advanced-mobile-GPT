import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';
// import 'di.config.dart';

GetIt injector = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
  externalPackageModulesBefore: [],
)
Future<GetIt> configureDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  return init(
    injector,
    environment: environment,
    environmentFilter: environmentFilter,
  );
}
