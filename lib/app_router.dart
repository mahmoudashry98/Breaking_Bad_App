import 'package:breaking_bad/constants/strings.dart';
import 'package:breaking_bad/presentation/screens/characters.dart';
import 'package:breaking_bad/presentation/screens/characters_details.dart';
import 'package:flutter/material.dart';

class AppRouter
{
  // ignore: missing_return
  Route generateRoute(RouteSettings settings)
  {
    switch(settings.name)
    {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());

      case charactersDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharactersDetailsScreen());
    }
  }
}