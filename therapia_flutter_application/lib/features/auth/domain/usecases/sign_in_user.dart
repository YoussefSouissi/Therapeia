import 'package:dartz/dartz.dart';
import 'package:therapia_flutter_application/core/failures/failures.dart';
import 'package:therapia_flutter_application/features/auth/domain/entities/user_entity.dart';
import 'package:therapia_flutter_application/features/auth/domain/repositories/user_repository.dart';



class SignInUserUseCase {
  final UserRepository userRepository;

  SignInUserUseCase(this.userRepository);

  Future<Either<Failure, Unit>> call(UserEntity user) async {
    return await userRepository.signIn(user);
  }
}
