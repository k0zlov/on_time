import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/network/api_endpoints/api_endpoint.dart';

/// Defines the contract for network operations within the application.
///
/// This abstract class provides a template for implementing network requests,
/// including setting a base URL and performing GET and POST requests. It leverages
/// the Either type from the dartz package to handle the results and potential failures
/// of network operations, ensuring that failures are managed in a functional way.
abstract interface class Network {
  /// A static variable to hold the base URL for all network requests.
  static String? baseUrl;

  Future<Either<Failure, T>> request<T>({
    required ApiEndpoint endpoint,
    required T Function(dynamic json) parser,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  });
}
