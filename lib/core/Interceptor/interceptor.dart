import 'dart:io';
import 'package:http_interceptor/http_interceptor.dart';

class Interceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) {
    data.headers[HttpHeaders.contentTypeHeader] = "application/json";
    data.headers[HttpHeaders.acceptHeader] = "application/json";
    throw UnimplementedError();
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) {
    throw UnimplementedError();
  }
}
