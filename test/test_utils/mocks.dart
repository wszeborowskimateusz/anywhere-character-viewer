import 'package:anywhere_character_viewer/core/environment/environment_variables.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/data_sources/characters_remote_data_source.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/repositories/characters_repository.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_from_query_response_dto_use_case.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_use_case.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_cubit.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements Dio {}

class CharactersRemoteDataSourceMock extends Mock
    implements CharactersRemoteDataSource {}

class CharactersRepositoryMock extends Mock implements CharactersRepository {}

class EnvironmentVariablesMock extends Mock implements EnvironmentVariables {}

class GetCharactersUseCaseMock extends Mock implements GetCharactersUseCase {}

class GetCharactersFromQueryResponseDtoUseCaseMock extends Mock
    implements GetCharactersFromQueryResponseDtoUseCase {}

class CharactersListCubitMock extends MockCubit<CharactersListState>
    implements CharactersListCubit {}
