import 'package:dio/src/form_data.dart';
import 'package:iinvestigation/features/new_case/data/data_source/data_source.dart';
import 'package:iinvestigation/features/new_case/domain/repository/new_case_repository.dart';

class NewCaseRepositoryImpl implements NewCaseRepository {
  final NewCaseDataSource _newCaseDataSource;
  NewCaseRepositoryImpl(this._newCaseDataSource);
  @override
  Future createCase({required FormData fd}) async {
    return await _newCaseDataSource.createCase(fd: fd);
  }
}
