import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'gpt_api.g.dart';

@RestApi()
@injectable
abstract class GPTApi {
  static const String chatApi = "/chat/completions";

  @factoryMethod
  factory GPTApi(Dio dio) = _GPTApi;

  @POST(chatApi)
  Future<HttpResponse> chat({@Body() required Map<String, dynamic> body});
}
