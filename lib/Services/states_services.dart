import 'dart:convert';

import 'package:covid19_project/Services/Utillities/app_url.dart';
import 'package:http/http.dart' as http;

import '../Model/WorldStatesModell.dart';

class StatesServices {
  Future<WorldStatesModell> fecthWorldStatesRecords() async{
    final response = await http.get(Uri.parse(AppUrl.worldStateApi));
    if(response.statusCode==200){
      var data = jsonDecode(response.body);
      return WorldStatesModell.fromJson(data);
    }else{
      throw Exception('Error');
    }
  }
  Future<List<dynamic>> ContriesListAppi() async{
    var data;
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    if(response.statusCode==200){
       data = jsonDecode(response.body);
      return data;
    }else{
      throw Exception('Error');
    }
  }
}