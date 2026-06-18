import 'package:bookly_clean_architecture_app/core/errors/failure.dart';
import 'package:bookly_clean_architecture_app/feature/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_architecture_app/feature/home/domain/repos/home_repo.dart';
import 'package:bookly_clean_architecture_app/feature/home/domain/use_cases/no_param_use_case.dart';

import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
