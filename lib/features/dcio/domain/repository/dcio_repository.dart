import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/domain/usecases/create_case_file.dart';

import '../../data/models/new_case_file/new_case_file.dart';

abstract class DcioRepository {
  Future<List<Occurence>> getOccurences();
  Future<List<Users>> getUsers();
  Future<NewCaseFile> createCaseFile({required Map payload});
}
