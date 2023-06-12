// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../../datasources/auth_datasource.dart' as _i15;
import '../../datasources/history_datasource.dart' as _i7;
import '../../datasources/transaction_datasource.dart' as _i11;
import '../../datasources/user_datasource.dart' as _i13;
import '../../repositories/auth_repository.dart' as _i16;
import '../../repositories/history_repository.dart' as _i17;
import '../../repositories/transaction_repository.dart' as _i12;
import '../../repositories/user_repository.dart' as _i14;
import '../../view/screens/login/bloc/login_bloc.dart' as _i18;
import '../../view/screens/splash/cubit/splash_cubit.dart' as _i10;
import '../../view/screens/user/cubit/user_cubit.dart' as _i19;
import '../network/dio_interceptors.dart' as _i6;
import '../network/network_check.dart' as _i8;
import 'register_module.dart' as _i20;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.BaseOptions>(() => registerModule.artoDioOptions);
    gh.lazySingleton<_i4.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.FlutterSecureStorage>(
        () => registerModule.secureStorage);
    gh.lazySingleton<_i6.HTTPClient>(() => registerModule.apiCaller);
    gh.lazySingleton<_i7.HistoryDatasource>(
        () => _i7.HistoryDatasourceImpl(gh<_i6.HTTPClient>()));
    gh.lazySingleton<_i8.NetworkCheck>(
        () => _i8.NetworkCheckImpl(connectivity: gh<_i4.Connectivity>()));
    await gh.lazySingletonAsync<_i9.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i10.SplashCubit>(
        () => _i10.SplashCubit(gh<_i5.FlutterSecureStorage>()));
    gh.lazySingleton<_i11.TransactionDatasource>(
        () => _i11.TransactionRepositoryImpl(gh<_i6.HTTPClient>()));
    gh.lazySingleton<_i12.TransactionRepository>(
        () => _i12.TransactionRepositoryImpl(
              networkCheck: gh<_i8.NetworkCheck>(),
              transactionDatasource: gh<_i11.TransactionDatasource>(),
            ));
    gh.lazySingleton<_i13.UserDatasource>(
        () => _i13.UserDatasourceImpl(gh<_i6.HTTPClient>()));
    gh.lazySingleton<_i14.UserRepository>(() => _i14.UserRepositoryImpl(
          networkCheck: gh<_i8.NetworkCheck>(),
          userDatasource: gh<_i13.UserDatasource>(),
        ));
    gh.lazySingleton<_i15.AuthenticationDatasource>(
        () => _i15.AuthenticationDatasourceImpl(gh<_i6.HTTPClient>()));
    gh.lazySingleton<_i16.AuthenticationRepository>(
        () => _i16.AuthenticationRepositoryImpl(
              networkCheck: gh<_i8.NetworkCheck>(),
              authenticationDatasource: gh<_i15.AuthenticationDatasource>(),
            ));
    gh.lazySingleton<_i17.HistoryRepository>(() => _i17.HistoryRepositoryImpl(
          networkCheck: gh<_i8.NetworkCheck>(),
          historyDatasource: gh<_i7.HistoryDatasource>(),
        ));
    gh.factory<_i18.LoginBloc>(() => _i18.LoginBloc(
          gh<_i5.FlutterSecureStorage>(),
          gh<_i16.AuthenticationRepository>(),
        ));
    gh.factory<_i19.UserCubit>(() => _i19.UserCubit(
          gh<_i14.UserRepository>(),
          gh<_i5.FlutterSecureStorage>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i20.RegisterModule {}
