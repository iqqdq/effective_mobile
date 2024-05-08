import 'package:effective_mobile/api/models/models.dart';
import 'package:effective_mobile/repositories/local/local.dart';
import 'package:effective_mobile/repositories/tickets/tickets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_event.dart';
part 'tickets_state.dart';
part 'tickets_bloc.freezed.dart';

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  final LocalRepositoryInterface _localRepository;
  final TicketsRepositoryInterface _ticketsRepository;

  TicketsBloc({
    required LocalRepositoryInterface localRepository,
    required TicketsRepositoryInterface ticketsRepository,
  })  : _localRepository = localRepository,
        _ticketsRepository = ticketsRepository,
        super(const TicketsState.loading()) {
    on<TicketsFetchEvent>((event, emit) async {
      emit(const TicketsState.loading());

      emit(TicketsState.loaded(
        fromPlace: _localRepository.getFromPlace(),
        toPlace: _localRepository.getToPlace(),
        comebackDate: _localRepository.getComebackDate(),
        whenDate: _localRepository.getWhenDate(),
        tickets: await _ticketsRepository.getTickets(),
      ));
    });
  }
}
