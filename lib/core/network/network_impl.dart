import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/network/api_endpoints/api_endpoint.dart';
import 'package:on_time/core/network/dio_interceptor.dart';
import 'package:on_time/core/network/network.dart';

class NetworkImpl implements Network {
  NetworkImpl({
    required String baseUrl,
    required this.interceptor,
  }) {
    Network.baseUrl = baseUrl; // Set the base URL in the Network class.
  }

  final DioInterceptor interceptor;

  Dio get dio {
    final dio = Dio(
      BaseOptions(baseUrl: Network.baseUrl!),
    );

    dio.interceptors.add(interceptor);
    return dio;
  }

  @override
  Future<Either<Failure, T>> request<T>({
    required ApiEndpoint endpoint,
    required T Function(dynamic json) parser,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      // Set the request method in options.
      final Options options = Options(method: endpoint.method.title);

      final Response<dynamic> response = await dio.request(
        endpoint.url,
        options: options,
        data: data,
        queryParameters: queryParameters,
      ); // Perform the Dio request.

      dynamic responseData = response.data;

      if (response.data is List) {
        responseData = {'items': response.data};
      }

      final T parsedData = parser(responseData); // Parse the response contacts.

      return Right(parsedData); // Return success with parsed contacts.
    } on DioException catch (e) {
      // Handle Dio-specific exceptions and wrap in a Failure.
      final serverFailure = ServerFailure(
        errorMessage: e.message ?? 'An error occurred.',
      );

      return Left(serverFailure); // Return failure.
    }
  }
}
