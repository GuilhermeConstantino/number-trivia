import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/error/failures.dart';
import 'package:number_trivia/core/use_cases/usecase.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';

import '../respositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams noParams) async {
    return await repository.getRandomNumberTrivia();
  }
}
