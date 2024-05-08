import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/repositories/local/local.dart';
import 'package:effective_mobile/repositories/ticket_offers/tickets_offers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_offers_event.dart';
part 'ticket_offers_state.dart';
part 'ticket_offers_bloc.freezed.dart';

class TicketOffersBloc extends Bloc<TicketOffersEvent, TicketOffersState> {
  final LocalRepositoryInterface _localRepository;
  final TicketOffersRepositoryInterface _ticketOffersRepository;

  TicketOffersBloc({
    required LocalRepositoryInterface localRepository,
    required TicketOffersRepositoryInterface ticketOffersRepository,
  })  : _localRepository = localRepository,
        _ticketOffersRepository = ticketOffersRepository,
        super(const TicketOffersState.loading()) {
    on<TicketOffersFetchEvent>((event, emit) async {
      emit(const TicketOffersState.loading());

      emit(TicketOffersState.loaded(
        fromPlace: _localRepository.getFromPlace(),
        toPlace: _localRepository.getToPlace(),
        comebackDate: _localRepository.getComebackDate(),
        whenDate: _localRepository.getWhenDate(),
        ticketOffers: await _ticketOffersRepository.getTicketOffers(),
      ));
    });

    on<TicketOffersSaveComebackDateEvent>(
        (event, emit) => _localRepository.setComebackDate(event.date));

    on<TicketOffersDeleteComebackDateEvent>(
        (event, emit) => _localRepository.clearComebackDate());

    on<TicketOffersSaveWhenDateEvent>(
        (event, emit) => _localRepository.setWhenDate(event.date));
  }
}
