// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'dcio_state.dart';
part 'dcio_cubit.freezed.dart';
part 'dcio_cubit.g.dart';

class DcioCubit extends Cubit<DcioState> {
  DcioCubit()
      : super(const DcioState.initial(
            payload: DcioStatePayload(error: null, page: null)));
}
