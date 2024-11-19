import 'package:get_it/get_it.dart';
import 'package:on_time/core/network/dio_interceptor.dart';
import 'package:on_time/core/network/network.dart';
import 'package:on_time/core/network/network_impl.dart';
import 'package:on_time/core/services/auth_service.dart';
import 'package:on_time/features/auth/data/providers/remote/auth_remote_provider.dart';
import 'package:on_time/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:on_time/features/auth/domain/repositories/auth_repository.dart';
import 'package:on_time/features/auth/domain/use_cases/get_user_use_case/get_user_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/login_use_case/login_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/logout_use_case/logout_use_case.dart';
import 'package:on_time/features/auth/domain/use_cases/register_use_case/register_use_case.dart';
import 'package:on_time/features/auth/view/cubit/auth_cubit.dart';
import 'package:on_time/features/timetables/data/providers/remote/timetables_remote_provider.dart';
import 'package:on_time/features/timetables/data/repositories/timetables_repository_impl.dart';
import 'package:on_time/features/timetables/domain/repositories/timetables_repository.dart';
import 'package:on_time/features/timetables/domain/use_cases/add_event_host_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/connect_socket_use_case/connect_socket_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_event_use_case/create_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_timetable_use_case/create_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_event_use_case/delete_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_timetable_use_case/delete_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/disconnect_socket_use_case/disconnect_socket_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/invitation_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/leave_timetable_use_case/leave_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/remove_event_host_use_case/remove_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_event_use_case/update_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_member_use_case/update_member_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_timetable_use_case/update_timetable_use_case.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';

/// GetIt instance
final GetIt getIt = GetIt.instance;
const String _serverBaseUrl = 'on-time-server.onrender.com';

Future<void> registerDependencies() async {
  print(_serverBaseUrl);
  _services();

  _network();
  _remoteProviders();

  _repositories();

  _useCases();

  _cubits();

  await getIt.allReady();
}

void _services() {
  getIt.registerLazySingleton<AuthService>(
    AuthServiceImpl.new,
  );
}

void _network() {
  getIt
    ..registerLazySingleton<DioInterceptor>(
      () => DioInterceptor(authService: getIt()),
    )
    ..registerLazySingleton<Network>(
      () => NetworkImpl(
        baseUrl: 'https://$_serverBaseUrl',
        interceptor: getIt(),
      ),
    );
}

void _remoteProviders() {
  getIt
    ..registerLazySingleton<AuthRemoteProvider>(
      () => AuthRemoteProviderImpl(network: getIt()),
    )
    ..registerLazySingleton<TimetablesRemoteProvider>(
      () => TimetablesRemoteProviderImpl(
        baseUrl: 'wss://$_serverBaseUrl',
        network: getIt(),
      ),
    );
}

void _repositories() {
  getIt
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteProvider: getIt(),
        authService: getIt(),
      ),
    )
    ..registerLazySingleton<TimetablesRepository>(
      () => TimetablesRepositoryImpl(
        authService: getIt(),
        remoteProvider: getIt(),
      ),
    );
}

void _useCases() {
  getIt
    ..registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(repository: getIt()),
    )
    ..registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(repository: getIt()),
    )
    ..registerLazySingleton<LogoutUseCase>(
      () => LogoutUseCase(repository: getIt()),
    )
    ..registerLazySingleton<GetUserUseCase>(
      () => GetUserUseCase(repository: getIt()),
    )
    ..registerLazySingleton<AddEventHostUseCase>(
      () => AddEventHostUseCase(repository: getIt()),
    )
    ..registerLazySingleton<CreateEventUseCase>(
      () => CreateEventUseCase(repository: getIt()),
    )
    ..registerLazySingleton<CreateTimetableUseCase>(
      () => CreateTimetableUseCase(repository: getIt()),
    )
    ..registerLazySingleton<DeleteEventUseCase>(
      () => DeleteEventUseCase(repository: getIt()),
    )
    ..registerLazySingleton<DeleteTimetableUseCase>(
      () => DeleteTimetableUseCase(repository: getIt()),
    )
    ..registerLazySingleton<LeaveTimetableUseCase>(
      () => LeaveTimetableUseCase(repository: getIt()),
    )
    ..registerLazySingleton<RemoveEventHostUseCase>(
      () => RemoveEventHostUseCase(repository: getIt()),
    )
    ..registerLazySingleton<UpdateEventUseCase>(
      () => UpdateEventUseCase(repository: getIt()),
    )
    ..registerLazySingleton<DisconnectSocketUseCase>(
      () => DisconnectSocketUseCase(repository: getIt()),
    )
    ..registerLazySingleton<ConnectSocketUseCase>(
      () => ConnectSocketUseCase(repository: getIt()),
    )
    ..registerLazySingleton<InvitationUseCase>(
      () => InvitationUseCase(repository: getIt()),
    )
    ..registerLazySingleton<UpdateMemberUseCase>(
      () => UpdateMemberUseCase(repository: getIt()),
    )
    ..registerLazySingleton<UpdateTimetableUseCase>(
      () => UpdateTimetableUseCase(repository: getIt()),
    );
}

void _cubits() {
  getIt
    ..registerLazySingleton<TimetablesCubit>(
      () => TimetablesCubit(
        updateMemberUseCase: getIt(),
        invitationUseCase: getIt(),
        addEventHostUseCase: getIt(),
        createEventUseCase: getIt(),
        createTimetableUseCase: getIt(),
        deleteEventUseCase: getIt(),
        deleteTimetableUseCase: getIt(),
        leaveTimetableUseCase: getIt(),
        removeEventHostUseCase: getIt(),
        updateEventUseCase: getIt(),
        updateTimetableUseCase: getIt(),
        connectSocketUseCase: getIt(),
        disconnectSocketUseCase: getIt(),
      ),
    )
    ..registerSingletonAsync<AuthCubit>(
      signalsReady: true,
      () async => AuthCubit(
        loginUseCase: getIt(),
        registerUseCase: getIt(),
        logoutUseCase: getIt(),
        getUserUseCase: getIt(),
        onLoginCallback: () async {
          await getIt<TimetablesCubit>().onLogin();
        },
        onLogoutCallback: () async {
          getIt<TimetablesCubit>().onLogout();
        },
      ),
    );
}
