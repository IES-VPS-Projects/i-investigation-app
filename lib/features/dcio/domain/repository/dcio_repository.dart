import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';

abstract class DcioRepository {
  Future<List<Occurence>> getOccurences();
}
