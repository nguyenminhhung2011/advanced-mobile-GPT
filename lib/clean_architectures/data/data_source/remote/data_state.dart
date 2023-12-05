import 'package:advanced_mobile_gpt/core/components/network/app_exception.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

abstract class DataState<T> {
  final T? data;
  // ignore: deprecated_member_use
  final DioError? dioError;

  const DataState({
    this.data,
    this.dioError,
  });
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess({required super.data});
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({required super.dioError});
}

extension DataStateExtensions<T> on DataState<T> {
  Either<AppException, bool> toBoolResult() {
    if (this is DataFailed) {
      return Left(
        AppException(message: dioError?.message ?? 'Error'),
      );
    }
    return const Right(true);
  }
}
