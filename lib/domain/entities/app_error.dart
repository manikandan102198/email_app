class AppError {
  final String? appErrorType;
  final int? statusCode;

  const AppError({
    required this.statusCode,
    required this.appErrorType,
  });
}
