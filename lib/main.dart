import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:effective_mobile/api/api.dart';
import 'package:effective_mobile/router/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'repositories/local/local.dart';
import 'repositories/offers/offers.dart';
import 'repositories/ticket_offers/tickets_offers.dart';
import 'repositories/tickets/tickets.dart';

import 'features/home/bloc/home_bloc.dart';
import 'features/ticket_offers/bloc/ticket_offers_bloc.dart';
import 'features/tickets/bloc/tickets_bloc.dart';

import 'ui/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  runApp(EffectiveMobileApp(sharedPreferences: sharedPreferences));
}

class EffectiveMobileApp extends StatefulWidget {
  final SharedPreferences sharedPreferences;

  const EffectiveMobileApp({
    super.key,
    required this.sharedPreferences,
  });

  @override
  State<EffectiveMobileApp> createState() => _EffectiveMobileAppState();
}

class _EffectiveMobileAppState extends State<EffectiveMobileApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final apiClient = ApiClient(Dio());

    final localRepository =
        LocalRepository(sharedPreferences: widget.sharedPreferences);

    final offersRepository = OffersRepository(apiClient: apiClient);

    final ticketsRepository = TicketsRepository(apiClient: apiClient);

    final ticketOffersRepository = TicketOffersRepository(apiClient: apiClient);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(
            localRepository: localRepository,
            offersRepository: offersRepository,
          ),
        ),
        BlocProvider(
          create: (context) => TicketOffersBloc(
            localRepository: localRepository,
            ticketOffersRepository: ticketOffersRepository,
          ),
        ),
        BlocProvider(
          create: (context) => TicketsBloc(
            localRepository: localRepository,
            ticketsRepository: ticketsRepository,
          ),
        ),
      ],
      child: MaterialApp.router(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ru', ''),
        ],
        theme: themeData,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
