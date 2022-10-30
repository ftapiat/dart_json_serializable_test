import 'dart:convert';
import 'dart:io';

import 'package:dart_json_coverter_test/models/api-response/api_response.dart';
import 'package:dart_json_coverter_test/models/data/data.dart';

void main(List<String> arguments) async {
  final fileData = await _getDataFromFile();

  // Requerido para poder convertir información dinámica dentro de la misma key
  fromJsonData(json) => Data.fromJson(json as Map<String, dynamic>);

  // El factory ya entiende que el tipo dinámico es Data porque se le pasa a través
  //  de la función "fromJsonData"
  final apiResponse = ApiResponseModel.fromJson(fileData, fromJsonData);

  // Por lo tanto la función d.toJson() es autocompletada por el IDE
  print(apiResponse.toJson((d) => d.toJson()));
  print(apiResponse.data.template.steps[0].name); // TODO Utf-8
}

Future<Map<String, dynamic>> _getDataFromFile() async {
  const path = "lib/resources/data.json";
  final input = await File(path).readAsString();
  return jsonDecode(input);
}
