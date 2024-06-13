import 'package:iinvestigation/features/dcio/data/data_source.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/domain/usecases/create_case_file.dart';

import '../../domain/repository/dcio_repository.dart';
import '../models/new_case_file/new_case_file.dart';

class DcioRepositoryImpl implements DcioRepository {
  final DcioDataSource _dataSource;
  DcioRepositoryImpl(this._dataSource);

  @override
  Future<List<Occurence>> getOccurences() async {
    return await _dataSource.getOccurences();
  }

  @override
  Future<List<Users>> getUsers() async {
    return await _dataSource.getUsers();
  }

  @override
  Future<NewCaseFile> createCaseFile({required Map payload}) async {
    return await _dataSource.createCaseFile(payload: payload);
  }
  
  @override
  Future updateCaseOfficers({required int id, required Map payload}) async {
    return await _dataSource.updateCaseOfficers(id: id, payload: payload);
  
  }
}
