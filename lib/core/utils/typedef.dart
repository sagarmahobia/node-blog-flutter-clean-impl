import 'package:clean_blog_flutter/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

typedef ResultValue<T> = Future<Either<Failure, T>>;

typedef ResultSuccess = ResultValue<Success>;
