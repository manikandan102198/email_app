import 'package:dio/dio.dart';
import 'package:email_app/data/data_source/email_remote_data_source.dart';
import 'package:email_app/data/repositories/email_repository_impl.dart';
import 'package:email_app/domain/repositories/email_repositories.dart';
import 'package:email_app/domain/usecases/get_users_email.dart';
import 'package:email_app/presentation/cubit/get_user_list_cubit/get_user_list_cubit.dart';
import 'package:get_it/get_it.dart';

import '/data/core/api_client.dart';

final getInstance = GetIt.instance;

Future init() async {
  getInstance.registerLazySingleton<Dio>(() => Dio());

  getInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(dio: getInstance()));

  getInstance.registerLazySingleton<EmailRemoteDataSource>(
      () => EmailRemoteDataSourceImpl(client: getInstance()));

  getInstance.registerLazySingleton<EmailRepository>(() => EmailRepositoryImpl(
        remoteDataSource: getInstance(),
      ));

  getInstance.registerLazySingleton<GetUserEmail>(
      () => GetUserEmail(repository: getInstance()));

  getInstance.registerFactory(() => GetUserListCubit(
        getUserEmail: getInstance(),
      ));
}
