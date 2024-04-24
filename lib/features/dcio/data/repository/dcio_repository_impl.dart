import 'package:iinvestigation/features/dcio/data/data_source.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';

import '../../domain/repository/dcio_repository.dart';

class DcioRepositoryImpl implements DcioRepository {
  final DcioDataSource _dataSource;
  DcioRepositoryImpl(this._dataSource);

  @override
  Future<List<Occurence>> getOccurences() async {
    return await _dataSource.getOccurences();
  }
}
