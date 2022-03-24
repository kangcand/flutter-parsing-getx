import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parsingujikom/screens/artikel_screen.dart';
import 'package:parsingujikom/screens/user_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Parsing Ujikom"), centerTitle: true),
      body: Container(
        // width: width / 1,
        height: height / 1,
        color: Colors.blue,
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(ArtikelScreen());
              },
              child: Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.yellowAccent, Colors.redAccent]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Artikel"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.to(UserScreen());
              },
              child: Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.yellowAccent, Colors.redAccent]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("User"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
