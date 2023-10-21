import 'package:clean_blog_flutter/core/utils/typedef.dart';

abstract class UseCaseWithParam<Type, Params> {
  const UseCaseWithParam();

  ResultValue<Type> call(Params params);
}

abstract class UseCaseWithoutParam<Type> {
  const UseCaseWithoutParam();

  ResultValue<Type> call();
}
