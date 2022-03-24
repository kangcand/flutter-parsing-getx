import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:parsingujikom/services/artikel_service.dart';

import '../models/artikel_model.dart';

class ArtikelController extends GetxController {
  var artikelList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchArtikelData();
  }

  void fetchArtikelData() async {
    try {
      isLoading(true);
      var artikel = await ArtikelService.fetchArtikelData();
      artikelList.value = artikel.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
