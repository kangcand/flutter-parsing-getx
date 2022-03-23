import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:parsingujikom/models/kategori_model.dart';

class KategoriController extends GetxController {
  KategoriModel? kategori;
  var isDataLoading = false.obs;
  getKategori() async {
    try {
      http.Response response = await http
          .get(Uri.parse('https://candra-ujikom.herokuapp.com/api/kategori'));

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        kategori = KategoriModel.fromJson(result);
      } else {}
    } catch (e) {
      print("error get data");
    } finally {
      isDataLoading(false);
    }
  }
}
