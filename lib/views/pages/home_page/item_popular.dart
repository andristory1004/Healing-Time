import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:healing/style/custom_color.dart';

class ItemPopuler extends StatelessWidget {
  const ItemPopuler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listDestination = [
      {
        "image": "images/sample2.png",
        "name": "Pantai Santolo",
        "lokasi": "Garut Selatan"
      },
      {
        "image": "images/sample.png",
        "name": "Pantai Sayang Heulang",
        "lokasi": "Garut Selatan"
      },
      {
        "image": "images/sample2.png",
        "name": "Pantai Santolo",
        "lokasi": "Garut Selatan"
      },
      {
        "image": "images/sample.png",
        "name": "Pantai Sayang Heulang",
        "lokasi": "Garut Selatan"
      },
      {
        "image": "images/sample2.png",
        "name": "Pantai Santolo",
        "lokasi": "Garut Selatan"
      },
      {
        "image": "images/sample.png",
        "name": "Pantai Sayang Heulang",
        "lokasi": "Garut Selatan"
      },
    ];
    return Container(
        child: ListView(
      children: [
        // Column(
        //   children: listDestination.map((data) {
        //     return Container(
        //         margin: EdgeInsets.only(bottom: 7, top: 7, left: 20, right: 20),
        //         padding: EdgeInsets.all(10),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             GestureDetector(
        //               onTap: () {
        //                 Get.toNamed('/DetailPage');
        //               },
        //               child: Row(
        //                 children: [
        //                   Container(
        //                     width: 150,
        //                     height: 100,
        //                     decoration: BoxDecoration(
        //                       color: white,
        //                       borderRadius: BorderRadius.circular(10),
        //                       boxShadow: [
        //                         BoxShadow(
        //                             color: Colors.grey.shade300,
        //                             spreadRadius: 2,
        //                             blurRadius: 5,
        //                             offset: Offset(1, 3))
        //                       ],
        //                       image: DecorationImage(
        //                           image: AssetImage("${data['image']}"),
        //                           fit: BoxFit.cover),
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     width: 16,
        //                   ),
        //                   Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("${data['title']}",
        //                           style: TextStyle(
        //                               fontSize: 18,
        //                               fontWeight: FontWeight.w500)),
        //                       Text("${data['lokasi']}",
        //                           style: TextStyle(
        //                               fontSize: 14,
        //                               fontWeight: FontWeight.w300)),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Row(
        //               children: [
        //                 Icon(
        //                   Icons.star,
        //                   color: orage,
        //                 ),
        //                 Text("4.5",
        //                     style: TextStyle(
        //                         fontSize: 14, fontWeight: FontWeight.w500)),
        //               ],
        //             )
        //           ],
        //         ));
        //   }).toList(),
        // ),
        Column(
            children: listDestination.map((data) {
          return GFListTile(
              avatar: Container(
                width: 128,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(
                        "${data['image']}",
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
              titleText: "${data['name']}",
              subTitleText: "${data['lokasi']}",
              icon: Icon(Icons.favorite));
        }).toList())
      ],
    ));
  }
}
