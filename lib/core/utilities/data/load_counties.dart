import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../data/models/generated/counties_model.dart';
import '../logging_utils.dart';

class LoadJsonData {
  static Future getCountiesFromJson() async {
    logger.e("loading Json");

    final String response =
        await rootBundle.loadString('assets/json/kenya_counties.json');
    return await json.decode(response);
  }
}

class LoadJsonDataNotifier extends ChangeNotifier {
  List<CountiesModel> counties = <CountiesModel>[];
  getJson() async {
    var data = await LoadJsonData.getCountiesFromJson();

    counties = List<CountiesModel>.from(
        data["data"].map((x) => CountiesModel.fromJson(x)));
    notifyListeners();
  }
}
