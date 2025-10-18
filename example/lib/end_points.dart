class EndPoints {
  static const auth = _Auth();
  static const user = _User();
  static const product = _Product();
}

class _Auth {
  const _Auth();
  final String authlogin = "/auth/login";
}

class _User {
  const _User();
  final String useruserId = "/user/{userId}";
}

class _Product {
  const _Product();
  final String products = "/products";
  final String productsid = "/products/{id}";
}

