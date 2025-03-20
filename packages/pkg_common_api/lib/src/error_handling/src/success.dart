import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

class Success extends Equatable {
  const Success();

  static Either<L, Success> either<L>() {
    return Either.right(const Success());
  }

  @override
  List<Object> get props => [];
}
