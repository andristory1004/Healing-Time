import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:healing/Style/custom_color.dart';

class ItemUntukAnda extends StatelessWidget {
  const ItemUntukAnda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listDestination = [
      {
        "image": "images/sample2.png",
        "title": "Danau Beratan",
        "lokasi": "Singajaya"
      },
      {
        "image": "images/sample2.png",
        "title": "Danau Beratan",
        "lokasi": "Singajaya"
      },
      {
        "image": "images/sample2.png",
        "title": "Danau Beratan",
        "lokasi": "Singajaya"
      },
      {
        "image": "images/sample2.png",
        "title": "Danau Beratan",
        "lokasi": "Singajaya"
      },
      {
        "image": "images/sample2.png",
        "title": "Danau Beratan",
        "lokasi": "Singajaya"
      },
      {
        "image": "images/sample2.png",
        "title": "Danau Beratan",
        "lokasi": "Singajaya"
      },
    ];
    Widget content(String imageUrl) {
      return Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(2, 5))
            ]),
        child: Column(
          children: [
            Container(
              width: 125,
              height: 155,
              margin: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  color: purple,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover)),
            ),
            Text(
              "Pantai Santolo",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, color: purpleText),
            ),
            Text("Garut",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w300, color: greyText))
          ],
        ),
      );
    }

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

    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Wisata Alam indonesia",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
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
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Recomend",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 15, left: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Terbaru",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 15, left: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Populer",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 15, left: 10, right: 10),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                          SizedBox(
                            width: 10,
                          ),
                          content("images/sample.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
