import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final int statusCode;

  const Failure({
    required this.message,
    required this.statusCode,
  });

  @override
  List<Object?> get props => [
        message,
        statusCode,
      ];
}

abstract class Success extends Equatable {
  final String message;

  const Success({
    required this.message,
  });

  @override
  List<Object?> get props => [
        message,
      ];
}

class ApiFailure extends Failure {
  const ApiFailure({
    required super.message,
    required super.statusCode,
  });
}

class ApiSuccess extends Success {
  const ApiSuccess({
    required super.message,
  });
}
