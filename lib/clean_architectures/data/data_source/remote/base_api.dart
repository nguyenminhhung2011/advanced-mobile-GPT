import 'dart:io';
import 'package:advanced_mobile_gpt/clean_architectures/data/data_source/remote/data_state.dart';
import 'package:advanced_mobile_gpt/core/components/network/app_exception.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:retrofit/dio.dart';

abstract class BaseApi {
  final String dataNullError = "Data null";
  final String baseError = "Error";

  Future<DataState<T>> getStateOf<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(data: httpResponse.data);
      } else {
        return DataFailed(
          // ignore: deprecated_member_use
          dioError: DioError(
            requestOptions: httpResponse.response.requestOptions,
            response: httpResponse.response,
          ),
        );
      }
      // ignore: deprecated_member_use
    } on DioError catch (error) {
      return DataFailed(dioError: error);
    }
  }

  AppException toErrorMessage(DioException? exception) => AppException(
      message: exception?.response?.data["message"]?.toString() ?? baseError);

  Future<SResult<R>> apiCall<T, R>({
    required R Function(T) mapper,
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final response =
          await getStateOf(request: () async => await request.call());
      if (response is DataFailed) {
        return Left(toErrorMessage(response.dioError));
      }
      if (response.data == null) {
        return Left(AppException(message: dataNullError));
      }
      return Right(mapper(response.data as T));
    } catch (e) {
      return Left(AppException(message: e.toString()));
    }
  }
}
