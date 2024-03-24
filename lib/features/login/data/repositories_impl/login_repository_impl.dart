import 'package:injectable/injectable.dart';
import 'package:tik_tok_app/features/login/domain/repositories/login_repository.dart';

@LazySingleton()
class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<void> login() {
    throw UnimplementedError();
  }
}
