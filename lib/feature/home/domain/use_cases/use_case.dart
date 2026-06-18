import 'package:bookly_clean_architecture_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, NoParam> {
  Future<Either<Failure, Type>> call([NoParam param]);
}
