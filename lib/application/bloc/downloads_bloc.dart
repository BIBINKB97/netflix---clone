import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/downloads/models/i_downloads_repo.dart';
part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;

  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<DownloadsEvent>((event, emit) async {
      emit(state.copyWith(
        isloading: true,
        downloadsFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await downloadsRepo.getDownloadsImages();

      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isloading: false,
              downloadsFailureOrSuccessOption: some(
                Left(failure),
              )),
          (success) => state.copyWith(
              isloading: false,
              downloads: success,
              downloadsFailureOrSuccessOption: some(Right(success)))));
    });
  }
}
