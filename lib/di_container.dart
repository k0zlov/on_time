import 'package:get_it/get_it.dart';
import 'package:on_time/core/network/dio_interceptor.dart';
import 'package:on_time/core/network/network.dart';
import 'package:on_time/core/network/network_impl.dart';
import 'package:on_time/core/services/auth_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> registerDependencies() async {
  _services();

  _network();

  await getIt.allReady();
}

void _services() {
  getIt.registerLazySingleton<AuthService>(
    AuthServiceImpl.new,
  );
}

void _network() {
  const String serverBaseUrl = String.fromEnvironment('BASE_URL');

  getIt
    ..registerLazySingleton<DioInterceptor>(
      () => DioInterceptor(authService: getIt()),
    )
    ..registerLazySingleton<Network>(
      () => NetworkImpl(baseUrl: serverBaseUrl, interceptor: getIt()),
    );
}
