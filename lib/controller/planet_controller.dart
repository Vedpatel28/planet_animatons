// ignore_for_file: camel_case_types

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:planet_animatons/models/planets_model.dart';

class planet_Provider extends ChangeNotifier {
  List<PlanetInfo> allPlanets = [];

  planet_Provider() {
    loadJSON();
    print("++++++++++++++++============");
    print("$allPlanets");
    print("++++++++++++++++============");
    notifyListeners();
  }

  void loadJSON() async {
    String res = await rootBundle.loadString('assets/json/planet.json');

    List allPlanet = jsonDecode(res);

    print("+++++++++++++++++=======================================");
    print("+++++++++++++++++=======================================");
    print("+++++++++++++++++=======================================");
    print(allPlanet);
    print("+++++++++++++===========++++++++++++====================");
    print("+++++++++++++===========++++++++++++====================");
    print("+++++++++++++===========++++++++++++====================");

    allPlanets = allPlanet.map((e) => PlanetInfo.fromMap(planet: e)).toList();

    // allPlanets = allPlanet.map((e) => PlanetInfo.fromMap(planet: e)).toList();
    notifyListeners();
  }
}
