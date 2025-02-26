import 'package:dio/dio.dart';

import '../../exceptions/remote_exception.dart';
import '../../useful/network_connectivity.dart';
import 'base_interceptor.dart';

class ConnectivityInterceptor extends BaseInterceptor {
  @override
  int get priority => BaseInterceptor.connectivityPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (NetworkConnectivity.instance.status.isOffline) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: NoInternetException(),
        ),
      );
    }

    super.onRequest(options, handler);
  }
}
