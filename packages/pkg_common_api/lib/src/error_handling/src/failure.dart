import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

class Failure extends Equatable {
  const Failure([this.error, this.stackTrace]);

  final Object? error;
  final StackTrace? stackTrace;

  static Either<Failure, R> either<R>([Object? error, StackTrace? stackTrace]) {
    return Either.left(Failure(error, stackTrace));
  }

  @override
  List<Object?> get props => [error, stackTrace];
}
