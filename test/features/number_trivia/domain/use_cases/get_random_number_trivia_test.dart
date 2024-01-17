import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/error/failures.dart';
import 'package:number_trivia/core/use_cases/usecase.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/respositories/number_trivia_repository.dart';
import 'package:number_trivia/features/number_trivia/domain/use_cases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

Future<void> main() async {
  late MockNumberTriviaRepository repository;
  late GetRandomNumberTrivia useCase;

  setUp(() {
    repository = MockNumberTriviaRepository();
    useCase = GetRandomNumberTrivia(repository);
  });

  NumberTrivia mockReturnNumberTrivia =
      const NumberTrivia(text: 'test', number: 1);

  test(
    'should get random number trivia',
    () async {
      // arrange
      when(repository.getRandomNumberTrivia())
          .thenAnswer((_) async => Right(mockReturnNumberTrivia));

      // act
      final Either<Failure, NumberTrivia?>? caseReturnNumberTrivia =
          await useCase(NoParams());

      // assert
      expect(caseReturnNumberTrivia, Right(mockReturnNumberTrivia));
      verify(repository.getRandomNumberTrivia());
      verifyNoMoreInteractions(repository);
    },
  );
}
