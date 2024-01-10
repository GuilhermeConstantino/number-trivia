import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([List properties = const <dynamic>[]]) : super();
}

// General failures
class ServerFailure implements Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];

  @override
  // TODO: implement stringify
  bool? get stringify => false;
}

class CacheFailure implements Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];

  @override
  // TODO: implement stringify
  bool? get stringify => false;
}
