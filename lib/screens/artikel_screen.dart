import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/artikel_controller.dart';

class ArtikelScreen extends StatelessWidget {
  const ArtikelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ArtikelController artikelcontroller = Get.put(ArtikelController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Artikel"),
        centerTitle: true,
      ),
      body: Obx(
        () => artikelcontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: artikelcontroller.artikelList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 400,
                        height: 400,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blueAccent, Colors.redAccent]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                "http://candra-ujikom.herokuapp.com/images/article/" +
                                    artikelcontroller.artikelList[index].foto
                                        .toString(),
                                fit: BoxFit.fitWidth),
                            Text(
                              "Judul : " +
                                  artikelcontroller.artikelList[index].title
                                      .toString(),
                              style: TextStyle(backgroundColor: Colors.amber),
                            ),
                            Text(
                                "Kategori : " +
                                    artikelcontroller
                                        .artikelList[index].kategori
                                        .toString(),
                                style:
                                    TextStyle(backgroundColor: Colors.amber)),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
