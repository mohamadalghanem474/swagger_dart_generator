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

  /// Gets the request class name (e.g., `LoginPostRequest`).
  String get requestClassName {
    final cleanName = _cleanEndpointName(name);
    final methodName = method.value[0].toUpperCase() + method.value.substring(1);
    return '${cleanName}${methodName}Request';
  }

  /// Gets the response class name (e.g., `LoginPostResponse`).
  String get responseClassName {
    final cleanName = _cleanEndpointName(name);
    final methodName = method.value[0].toUpperCase() + method.value.substring(1);
    return '${cleanName}${methodName}Response';
  }

  /// Gets the entity class name (e.g., `LoginPostEntity`).
  String get entityClassName {
    final cleanName = _cleanEndpointName(name);
    final methodName = method.value[0].toUpperCase() + method.value.substring(1);
    return '${cleanName}${methodName}Entity';
  }

  /// Removes method suffix (_post, _get, etc.) and converts to PascalCase.
  String _cleanEndpointName(String endpointName) {
    // Remove method suffix (_post, _get, _put, _delete, etc.)
    final suffixes = ['_post', '_get', '_put', '_delete', '_patch'];
    var clean = endpointName;
    for (final suffix in suffixes) {
      if (clean.toLowerCase().endsWith(suffix)) {
        clean = clean.substring(0, clean.length - suffix.length);
        break;
      }
    }

    // Convert to PascalCase
    return clean.split('_').map((part) {
      if (part.isEmpty) return '';
      return part[0].toUpperCase() + part.substring(1);
    }).join();
  }

  /// Gets the method name matching the class name pattern (e.g., `getTokenForCustomerApiPost`).
  String get methodName {
    final cleanName = _cleanEndpointName(name);
    final methodName = method.value[0].toUpperCase() + method.value.substring(1);
    // Convert first char to lowercase for method name
    final fullName = '${cleanName}${methodName}';
    if (fullName.isEmpty) return fullName;
    return fullName[0].toLowerCase() + fullName.substring(1);
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
