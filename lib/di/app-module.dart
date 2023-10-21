import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<Dio> getDio() async {
    return Dio();
  }
}
