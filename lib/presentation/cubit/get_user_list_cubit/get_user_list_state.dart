part of 'get_user_list_cubit.dart';

@immutable
abstract class GetUserListState {}

class GetUserListInitial extends GetUserListState {}

class GetUserListLoading extends GetUserListState {}

class GetUserListFailure extends GetUserListState {
  final String? appErrorType;
  final int? statusCode;
  GetUserListFailure(
      {required this.appErrorType, required this.statusCode, String? appError});
}

class GetUserListSuccess extends GetUserListState {
  final EmailEntity? emailEntity;
  GetUserListSuccess({required this.emailEntity});
}
