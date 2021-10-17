import 'package:dartz/dartz.dart';

import '../params/no_params.dart';
import '../entities/app_error.dart';
import '../entities/email_entity.dart';
import '../repositories/email_repositories.dart';

import 'usecases.dart';

class GetUserEmail extends UseCase<EmailEntity, NoParams> {
  final EmailRepository repository;

  GetUserEmail({required this.repository});

  @override
  Future<Either<AppError, EmailEntity>> call(NoParams params) async {
    return await repository.getUsersPosts();
  }
}
