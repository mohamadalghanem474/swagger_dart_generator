import 'package:dio/dio.dart';
import 'package:example/example.dart';
import 'package:example/data/models/auth/requests/authlogin_req.dart';

void main() async {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));
  final api = Example.init(dio);
  final loginResult = await api.repository.auth.authlogin(AuthloginReq());
  loginResult.fold(
    (failure) => print('❌ ${failure.message}'),
    (success) => print('✅ Logged in: $success'),
  );
}
