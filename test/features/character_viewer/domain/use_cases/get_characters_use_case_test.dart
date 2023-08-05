import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks.dart';
import '../../../../test_utils/test_data.dart';

void main() {
  final getCharactersFromQueryResponseDtoUseCaseMock =
      GetCharactersFromQueryResponseDtoUseCaseMock();
  final charactersRepositoryMock = CharactersRepositoryMock();
  final environmentVariablesMock = EnvironmentVariablesMock();
  late final GetCharactersUseCase useCase;

  setUpAll(() {
    useCase = GetCharactersUseCase(
      getCharactersFromQueryResponseDtoUseCaseMock,
      charactersRepositoryMock,
      environmentVariablesMock,
    );

    when(() => environmentVariablesMock.charactersQuery)
        .thenReturn(tCharacterQuery);
  });

  test('Should properly react to correct value', () async {
    // Arrange
    when(() => charactersRepositoryMock.fetchCharacters(tCharacterQuery))
        .thenAnswer((_) async => const Right(tQueryResponseDto));
    when(() => getCharactersFromQueryResponseDtoUseCaseMock(tQueryResponseDto))
        .thenReturn([tCharacter]);

    // Act
    final response = await useCase();

    // Assert
    expect(response.isRight(), isTrue);
    response.fold((_) {}, (characters) {
      expect(characters.first, tCharacter);
    });

    verify(() => charactersRepositoryMock.fetchCharacters(tCharacterQuery))
        .called(1);
    verify(
      () => getCharactersFromQueryResponseDtoUseCaseMock(tQueryResponseDto),
    ).called(1);
  });

  test('Should properly react to failure', () async {
    // Arrange
    when(() => charactersRepositoryMock.fetchCharacters(tCharacterQuery))
        .thenAnswer((_) async => const Left(tGeneralFailure));

    // Act
    final response = await useCase();

    // Assert
    expect(response.isLeft(), isTrue);

    verify(() => charactersRepositoryMock.fetchCharacters(tCharacterQuery))
        .called(1);
    verifyNever(
      () => getCharactersFromQueryResponseDtoUseCaseMock(tQueryResponseDto),
    );
  });
}
