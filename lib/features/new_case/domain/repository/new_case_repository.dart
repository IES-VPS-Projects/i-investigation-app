import 'package:dio/dio.dart';

abstract class NewCaseRepository {
  Future<dynamic> createCase({required FormData fd});
}
