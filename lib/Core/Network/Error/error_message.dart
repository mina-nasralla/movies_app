import 'package:equatable/equatable.dart';

class ErrorMessage extends Equatable {
  final int code;
  final String msg;
  final bool success;

  const ErrorMessage({
    required this.code,
    required this.msg,
    required this.success,
  });

  factory ErrorMessage.fromJson(Map<String, dynamic> json) {
    return ErrorMessage(
      code: json['status_code'] as int,
      msg: json['status_message'] as String,
      success: json['success'] as bool,
    );
  }

  @override
  List<Object?> get props => [code, msg, success];
}
