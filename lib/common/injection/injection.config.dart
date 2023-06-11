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
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../../datasources/auth_datasource.dart' as _i13;
import '../../datasources/user_datasource.dart' as _i12;
import '../../repositories/auth_repository.dart' as _i14;
import '../../repositories/user_repository.dart' as _i11;
import '../../view/screens/login/bloc/login_bloc.dart' as _i15;
import '../../view/screens/splash/cubit/splash_cubit.dart' as _i9;
import '../../view/screens/user/bloc/user_bloc.dart' as _i10;
import '../network/dio_interceptors.dart' as _i6;
import '../network/network_check.dart' as _i7;
import 'register_module.dart' as _i16;

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
    gh.lazySingleton<_i7.NetworkCheck>(
        () => _i7.NetworkCheckImpl(connectivity: gh<_i4.Connectivity>()));
    await gh.lazySingletonAsync<_i8.SharedPreferences>(
      () => registerModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i9.SplashCubit>(
        () => _i9.SplashCubit(gh<_i5.FlutterSecureStorage>()));
    gh.factory<_i10.UserBloc>(
        () => _i10.UserBloc(userRepository: gh<_i11.UserRepository>()));
    gh.lazySingleton<_i12.UserDatasource>(
        () => _i12.UserDatasourceImpl(gh<_i6.HTTPClient>()));
    gh.lazySingleton<_i11.UserRepository>(() => _i11.UserRepositoryImpl(
          networkCheck: gh<_i7.NetworkCheck>(),
          userDatasource: gh<_i12.UserDatasource>(),
        ));
    gh.lazySingleton<_i13.AuthenticationDatasource>(
        () => _i13.AuthenticationDatasourceImpl(gh<_i6.HTTPClient>()));
    gh.lazySingleton<_i14.AuthenticationRepository>(
        () => _i14.AuthenticationRepositoryImpl(
              networkCheck: gh<_i7.NetworkCheck>(),
              authenticationDatasource: gh<_i13.AuthenticationDatasource>(),
            ));
    gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc(
          gh<_i5.FlutterSecureStorage>(),
          gh<_i14.AuthenticationRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
