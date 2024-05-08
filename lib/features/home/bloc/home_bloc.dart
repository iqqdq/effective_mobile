import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/repositories/local/local.dart';
import 'package:effective_mobile/repositories/offers/offers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final LocalRepositoryInterface _localRepository;
  final OffersRepositoryInterface _offersRepository;

  HomeBloc({
    required LocalRepositoryInterface localRepository,
    required OffersRepositoryInterface offersRepository,
  })  : _localRepository = localRepository,
        _offersRepository = offersRepository,
        super(const HomeState.loading()) {
    on<HomeFetchEvent>((event, emit) async {
      emit(const HomeState.loading());

      emit(HomeState.loaded(
        fromPlace: _localRepository.getFromPlace(),
        offers: await _offersRepository.getOffers(),
      ));
    });

    on<HomeSaveFromValueEvent>((event, emit) async {
      _localRepository.setFromPlace(event.place);

      emit(HomeState.loaded(
        fromPlace: _localRepository.getFromPlace(),
        offers: await _offersRepository.getOffers(),
      ));
    });

    on<HomeSaveToValueEvent>(
        (event, emit) => _localRepository.setToPlace(event.place));
  }
}
