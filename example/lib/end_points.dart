class EndPoints {
  static const auth = _Auth();
  static const user = _User();
  static const product = _Product();
}

class _Auth {
  const _Auth();
  final String loginPost = "/auth/login";
}

class _User {
  const _User();
  final String userGet = "/user/{userId}";
}

class _Product {
  const _Product();
  final String productsGet = "/products";
  final String productsPost = "/products";
  final String productsDelete = "/products/{id}";
}

