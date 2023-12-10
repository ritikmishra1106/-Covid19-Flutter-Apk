// To parse this JSON data, do
//
//     final worldStatesModel = worldStatesModelFromJson(jsonString);

import 'dart:convert';

Map<String, double> worldStatesModelFromJson(String str) =>
    Map.from(json.decode(str))
        .map((k, v) => MapEntry<String, double>(k, v?.toDouble()));

String worldStatesModelToJson(Map<String, double> data) =>
    json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v)));
