enum HttpMethods {
  get('GET'),
  put('PUT'),
  delete('DELETE'),
  post('POST');

  const HttpMethods(this.title);

  final String title;
}

class ApiEndpoint {
  const ApiEndpoint({
    required this.url,
    required this.method,
  });

  final String url;

  final HttpMethods method;

  ApiEndpoint copyWith({
    String? url,
    HttpMethods? method,
  }) {
    return ApiEndpoint(
      url: url ?? this.url,
      method: method ?? this.method,
    );
  }
}
