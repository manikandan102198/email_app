import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:email_app/domain/entities/app_error.dart';

import 'package:email_app/domain/entities/email_entity.dart';
import 'package:email_app/domain/params/no_params.dart';
import 'package:email_app/domain/usecases/get_users_email.dart';
import 'package:meta/meta.dart';

part 'get_user_list_state.dart';

class GetUserListCubit extends Cubit<GetUserListState> {
  GetUserListCubit({required this.getUserEmail}) : super(GetUserListInitial());

  final GetUserEmail getUserEmail;

  void getUsersEmail() async {
    emit(GetUserListLoading());
    final Either<AppError, EmailEntity> res = await getUserEmail(NoParams());
    emit(res.fold(
        (l) => GetUserListFailure(
              appErrorType: l.appErrorType,
              statusCode: l.statusCode,
            ),
        (email) => GetUserListSuccess(emailEntity: email)));
  }
}
