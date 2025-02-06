import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  final String msg;

  const Failure(this.msg);

  @override
  List<Object> get props => [msg];
}

class NetworkFailure extends Failure {
 const NetworkFailure(super.msg);
}

class LocalFailure extends Failure {
  const LocalFailure(super.msg);
}