import 'package:dartz/dartz.dart';

import '../entities/email_entity.dart';
import '../entities/app_error.dart';

abstract class EmailRepository {
  Future<Either<AppError, EmailEntity>> getUsersPosts();
}
