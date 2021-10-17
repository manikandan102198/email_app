import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:email_app/common/message_constants.dart';
import 'package:email_app/data/data_source/email_remote_data_source.dart';
import 'package:email_app/domain/entities/email_entity.dart';
import 'package:email_app/domain/entities/app_error.dart';

import '/domain/repositories/email_repositories.dart';

class EmailRepositoryImpl implements EmailRepository {
  final EmailRemoteDataSource remoteDataSource;

  EmailRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<AppError, EmailEntity>> getUsersPosts() async {
    try {
      final response = await remoteDataSource.getUserPosts();
      return Right(response);
    } on DioError catch (e) {
      final appError = _exception(e);
      return Left(appError);
    }
  }

  AppError _exception(DioError e) {
    if (e.error is SocketException) {
      return const AppError(
          appErrorType: MessageConstants.noInternet, statusCode: 1);
    } else if (e.type == DioErrorType.response) {
      return AppError(
          appErrorType: e.response!.data['msg'],
          statusCode: e.response!.statusCode);
    } else {
      return const AppError(
          statusCode: 404, appErrorType: MessageConstants.inValid);
    }
  }
}
