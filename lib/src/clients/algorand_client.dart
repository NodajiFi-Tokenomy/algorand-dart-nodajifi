import 'package:dio/dio.dart';

abstract class AlgorandClient {
  /// The HTTP client
  late final Dio client;

  AlgorandClient({
    required String apiUrl,
    required String apiKey,
    required String tokenKey,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
    Duration sendTimeout = const Duration(seconds: 30),
    bool debug = false,
    bool enableGzip = true,
    Interceptor? logInterceptor,
    Transformer? transformer,
  }) {
    final headers = <String, dynamic>{tokenKey: apiKey};
    if (enableGzip) {
      headers.putIfAbsent(
        'Accept-Encoding',
        () => 'gzip',
      );
    }
    headers.removeWhere((k, v) => k.isEmpty);

    final options = BaseOptions(
      baseUrl: apiUrl,
      connectTimeout: connectTimeout, // Now accepts Duration directly
      receiveTimeout: receiveTimeout, // Now accepts Duration directly
      sendTimeout: sendTimeout, // Now accepts Duration directly
      headers: headers,
    );

    client = Dio(options);

    if (transformer != null) {
      client.transformer = transformer;
    }

    if (debug) {
      client.interceptors.add(logInterceptor ?? LogInterceptor());
    }
  }

  /// Create a new Algorand Client with the given Dio instance.
  AlgorandClient.dio(Dio dio) : client = dio;
}
