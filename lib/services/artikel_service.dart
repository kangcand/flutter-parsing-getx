import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/artikel_model.dart';

class ArtikelService {
  static Future<ArtikelModel> fetchArtikelData() async {
    final response = await http
        .get(Uri.parse('https://candra-ujikom.herokuapp.com/api/artikel'));

    if (response.statusCode == 200) {
      var data = response.body;
      return ArtikelModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
