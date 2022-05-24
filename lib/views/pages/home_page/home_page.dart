import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing/style/custom_color.dart';
import 'package:healing/views/pages/home_page/item_untuk_anda.dart';
import 'package:healing/views/pages/home_page/item_kategori.dart';
import 'package:healing/views/pages/home_page/item_lokasi.dart';
import 'package:healing/views/pages/home_page/item_popular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController myController;
  @override
  void initState() {
    myController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          title: new Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Telusuri",
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          backgroundColor: red,
                        )),
                    prefixIcon:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search))),
              ),
            ),
          ),
          bottom: TabBar(
              controller: myController,
              labelColor: black,
              unselectedLabelColor: greyText,
              indicatorColor: blue,
              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: "Untuk Anda",
                ),
                Tab(
                  text: "Populer",
                ),
                Tab(
                  text: "Lokasi",
                ),
                Tab(
                  text: "Kategori",
                ),
              ]),
        ),
        body: TabBarView(controller: myController, children: <Widget>[
          ItemUntukAnda(),
          ItemPopuler(),
          ItemLokasi(),
          ItemKategori()
        ]));
  }
}
