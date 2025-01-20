import 'package:go_router/go_router.dart';
import 'package:pokedex/logger.dart';
import 'package:pokedex/src/models/snippet_model.dart';
import 'package:pokedex/src/pages/details_page.dart';
import 'package:pokedex/src/pages/favourites_page.dart';
import 'package:pokedex/src/pages/form_page.dart';
import 'package:pokedex/src/pages/home_page.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
        path: '/details/:id',
        name: 'details',
        builder: (context, state) {
          final param = int.parse(state.pathParameters['id']!);
          return DetailsPage(param);
        }),
    GoRoute(
      path: '/saved',
      name: 'saved',
      builder: (context, state) => const FavouritesPage(),
    ),
    GoRoute(
      path: '/form',
      name: 'form',
      builder: (context, state) {
        final snippetModel = state.extra as SnippetModel;
        return FormPage(snippetModel);
      },
    )
  ],
);
