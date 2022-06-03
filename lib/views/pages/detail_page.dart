import 'package:flutter/material.dart';
import 'package:healing/style/custom_color.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Widget iklan(Color aku) {
      return Container(
        width: 350,
        height: 150,
        decoration: BoxDecoration(
            color: aku,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(2, 5))
            ]),
        child: Center(
            child: Text(
          "Iklan",
          style: TextStyle(fontSize: 25),
        )),
      );
    }

    Widget SubTitle(
      String name,
    ) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: BackButton(color: black),
        title: Text("Pameungpeuk",
            style: TextStyle(
                color: black, fontSize: 18, fontWeight: FontWeight.w600)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: black,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search), color: black),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              height: 180,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("images/sample.png"),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(1, 3)),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Wisata Alam indonesia",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                        top: 20, bottom: 15, left: 10, right: 10),
                    child: Row(
                      children: [
                        iklan(Colors.red),
                        SizedBox(
                          width: 10,
                        ),
                        iklan(Colors.yellow),
                        SizedBox(
                          width: 10,
                        ),
                        iklan(Colors.green),
                        SizedBox(
                          width: 10,
                        ),
                        iklan(Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubTitle("Deskripsi"),
                  Text(
                    "Papandayan Resort and Leisure Park memiliki panorama yang indah karena berlokasi di kaki Gunung Papandayan. Pengunjung yang datang bisa berburu selfie, seperti di gardu pandang dan saung-saung dari kayu dan bambu",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubTitle("Harga Tiket"),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubTitle("Lokasi"),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubTitle("Ratting & Ulasan"),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("5,0",
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w500)),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: orage,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: orage,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: orage,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: orage,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: orage,
                                size: 15,
                              ),
                            ],
                          ),
                          Text("8.366.454")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
