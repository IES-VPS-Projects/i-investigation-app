// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../data/network_datasource/network_service_impl.dart';

class Failure {
  final String message;
  final dynamic data;
  const Failure(this.message, {this.data});

  @override
  String toString() => message;
}

class ApiFailure extends Failure {
  final ApiErrors errorCode;
  ApiFailure(this.errorCode, String message) : super(message);

  @override
  bool operator ==(covariant ApiFailure other) {
    if (identical(this, other)) return true;

    return other.errorCode == errorCode && other.message == message;
  }

  @override
  int get hashCode => errorCode.hashCode;
}

class NetworkFailure extends Failure {
  final String message;
  NetworkFailure(this.message) : super(message);

  @override
  bool operator ==(covariant NetworkFailure other) {
    if (identical(this, other)) return true;

    return other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class UIError extends Equatable {
  final String message;
  const UIError(this.message);

  @override
  List<Object?> get props => [message];
}
