import 'package:equatable/equatable.dart';

/// Represents an HTTP method.
enum HttpMethod {
  get('get'),
  post('post'),
  put('put'),
  delete('delete'),
  patch('patch'),
  head('head'),
  options('options');

  final String value;
  const HttpMethod(this.value);

  static HttpMethod fromString(String method) {
    return HttpMethod.values.firstWhere(
      (e) => e.value == method.toLowerCase(),
      orElse: () => HttpMethod.get,
    );
  }
}

/// Represents a single endpoint parameter.
class EndpointParameter extends Equatable {
  final String name;
  final String type;
  final bool isRequired;
  final String? description;

  const EndpointParameter({
    required this.name,
    required this.type,
    this.isRequired = false,
    this.description,
  });

  @override
  List<Object?> get props => [name, type, isRequired, description];
}

/// Represents an endpoint extracted from Swagger/OpenAPI.
class EndpointModel extends Equatable {
  final String name;
  final String path;
  final HttpMethod method;
  final String category;
  final List<EndpointParameter> queryParams;
  final List<EndpointParameter> pathParams;
  final Map<String, dynamic>? requestBody;
  final Map<String, dynamic>? responseBody;
  final String? description;

  const EndpointModel({
    required this.name,
    required this.path,
    required this.method,
    required this.category,
    this.queryParams = const [],
    this.pathParams = const [],
    this.requestBody,
    this.responseBody,
    this.description,
  });

  /// Gets the request class name (e.g., `LoginReq`).
  String get requestClassName => '${name}Req';

  /// Gets the response class name (e.g., `LoginRes`).
  String get responseClassName => '${name}Res';

  /// Gets the method name in camelCase (e.g., `authLogin`).
  String get methodName {
    final parts = name.split('_');
    if (parts.isEmpty) return name;
    return parts.first.toLowerCase() + parts.skip(1).map((p) => p[0].toUpperCase() + p.substring(1).toLowerCase()).join();
  }

  /// Checks if this endpoint has a request body.
  bool get hasRequestBody => requestBody != null && requestBody!.isNotEmpty;

  /// Checks if this endpoint has a response body.
  bool get hasResponseBody => responseBody != null && responseBody!.isNotEmpty;

  /// Checks if this is a DELETE request (has different parameters).
  bool get isDelete => method == HttpMethod.delete;

  @override
  List<Object?> get props => [
        name,
        path,
        method,
        category,
        queryParams,
        pathParams,
        requestBody,
        responseBody,
        description,
      ];
}

/// Represents a category of endpoints.
class EndpointCategory extends Equatable {
  final String name;
  final List<EndpointModel> endpoints;

  const EndpointCategory({
    required this.name,
    required this.endpoints,
  });

  @override
  List<Object?> get props => [name, endpoints];
}
