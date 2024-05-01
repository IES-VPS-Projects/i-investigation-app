import 'package:dio/src/form_data.dart';
import 'package:iinvestigation/features/inbox/data/data_source/inbox_data_source.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file_suspect/case_file.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file_suspect/case_file_suspect.dart';
import 'package:iinvestigation/features/inbox/data/models/iprs_model/iprs_model.dart';
import 'package:iinvestigation/features/inbox/data/models/new_witness_response/new_witness_response.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/data/models/penal_code_response/penal_code_response.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart'
    as caseFIle;

class InboxRepositoryImpl implements InboxRepository {
  final InboxDataSource _inboxDataSource;
  InboxRepositoryImpl(this._inboxDataSource);
  @override
  Future<List<OpenCases>> getOpenCases() async {
    return await _inboxDataSource.getOpenCases();
  }

  @override
  Future<IprsModel> searchIPrs({required String idNo}) async {
    return await _inboxDataSource.searchIPrs(idNo: idNo);
  }

  @override
  Future<CaseFileSuspect> createSuspect({required FormData fd}) async {
    return await _inboxDataSource.createSuspect(fd: fd);
  }

  @override
  Future<caseFIle.CaseFile> getCaseFile({required int id}) async {
    return await _inboxDataSource.getCaseFile(id: id);
  }

  @override
  Future<NewWitnessResponse> createWitness({required FormData fd}) async {
    return await _inboxDataSource.createWitness(fd: fd);
  }

  @override
  Future createCaseNote({required FormData fd}) async {
    return await _inboxDataSource.createCaseNote(fd: fd);
  }

  @override
  Future createCaseMaterial({required FormData fd}) async {
    return await _inboxDataSource.createCaseMaterial(fd: fd);
  }

  @override
  Future<List<PenalCodeResponse>> getPenalCodes() async {
    return await _inboxDataSource.getPenalCodes();
  }

  @override
  Future createOffence({required FormData fd}) async {
    return await _inboxDataSource.createOffence(fd: fd);
  }

  @override
  Future createSummary({required FormData fd}) async {
    return await _inboxDataSource.createSummary(fd: fd);
  }
}
