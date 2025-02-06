import 'package:untitled2/Core/Network/Error/error_message.dart';

class ServerException implements Exception {
  final ErrorMessage errorMessage;

  const ServerException({required this.errorMessage});
}

class LocalException implements Exception{
  final String errorMessage;

  const LocalException({required this.errorMessage});
}