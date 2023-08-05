// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anywhere_character_viewer/core/dependency_injection/get_it.dart'
    as _i11;
import 'package:anywhere_character_viewer/core/environment/environment_variables.dart'
    as _i3;
import 'package:anywhere_character_viewer/features/character_viewer/data/data_sources/characters_remote_data_source.dart'
    as _i7;
import 'package:anywhere_character_viewer/features/character_viewer/data/repositories/characters_repository.dart'
    as _i8;
import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_from_query_response_dto_use_case.dart'
    as _i4;
import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_use_case.dart'
    as _i9;
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_cubit.dart'
    as _i10;
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreExternalServices = _$CoreExternalServices();
    await gh.singletonAsync<_i3.EnvironmentVariables>(
      () => _i3.EnvironmentVariables.create(),
      preResolve: true,
    );
    gh.singleton<_i4.GetCharactersFromQueryResponseDtoUseCase>(
        _i4.GetCharactersFromQueryResponseDtoUseCase());
    gh.singleton<_i5.GoRouter>(coreExternalServices.goRouter());
    gh.singleton<_i6.Dio>(
        coreExternalServices.dio(gh<_i3.EnvironmentVariables>()));
    gh.singleton<_i7.CharactersRemoteDataSource>(
        _i7.CharactersRemoteDataSource(gh<_i6.Dio>()));
    gh.singleton<_i8.CharactersRepository>(
        _i8.CharactersRepository(gh<_i7.CharactersRemoteDataSource>()));
    gh.singleton<_i9.GetCharactersUseCase>(_i9.GetCharactersUseCase(
      gh<_i4.GetCharactersFromQueryResponseDtoUseCase>(),
      gh<_i8.CharactersRepository>(),
      gh<_i3.EnvironmentVariables>(),
    ));
    gh.factory<_i10.CharactersListCubit>(
        () => _i10.CharactersListCubit(gh<_i9.GetCharactersUseCase>()));
    return this;
  }
}

class _$CoreExternalServices extends _i11.CoreExternalServices {}
