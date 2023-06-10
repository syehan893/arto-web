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

import '../../datasources/auth_datasource.dart' as _i9;
import '../../repositories/auth_repository.dart' as _i10;
import '../../view/screens/login/bloc/login_bloc.dart' as _i11;
import '../network/dio_interceptors.dart' as _i6;
import '../network/network_check.dart' as _i7;
import 'register_module.dart' as _i12;

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
    gh.lazySingleton<_i9.AuthenticationDatasource>(
        () => _i9.AuthenticationDatasourceImpl(gh<_i6.HTTPClient>()));
    gh.lazySingleton<_i10.AuthenticationRepository>(
        () => _i10.AuthenticationRepositoryImpl(
              networkCheck: gh<_i7.NetworkCheck>(),
              authenticationDatasource: gh<_i9.AuthenticationDatasource>(),
            ));
    gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(
          gh<_i5.FlutterSecureStorage>(),
          gh<_i10.AuthenticationRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
