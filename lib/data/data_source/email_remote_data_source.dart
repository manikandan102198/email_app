import 'package:email_app/data/model/email_model.dart';

import '../core/api_client.dart';
import '../core/api_constants.dart';

abstract class EmailRemoteDataSource {
  Future<EmailModel> getUserPosts();
}

class EmailRemoteDataSourceImpl implements EmailRemoteDataSource {
  final ApiClient client;

  EmailRemoteDataSourceImpl({required this.client});

  @override
  Future<EmailModel> getUserPosts() async {
    final response = await client.get(
      ApiConstants.posts,
    );
    final email = EmailModel.fromJson(response[0]);
    return email;
  }
}
