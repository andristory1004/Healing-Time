import 'package:flutter/material.dart';
import 'package:healing/style/custom_color.dart';

class ItemLokasi extends StatelessWidget {
  const ItemLokasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListTile(
        // leading: Row(
        //   children: [
        //     Text("1."),
        //     Container(
        //       width: 150,
        //       height: 100,
        //       decoration: BoxDecoration(
        //         color: white,
        //         borderRadius: BorderRadius.circular(10),
        //         boxShadow: [
        //           BoxShadow(
        //               color: Colors.grey.shade300,
        //               spreadRadius: 2,
        //               blurRadius: 5,
        //               offset: Offset(1, 3))
        //         ],
        //         image: DecorationImage(
        //             image: AssetImage("images/sample2.png"), fit: BoxFit.cover),
        //       ),
        //     ),
        //   ],
        // ),

        leading: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(1, 3))
            ],
            image: DecorationImage(
                image: AssetImage("images/sample2.png"), fit: BoxFit.cover),
          ),
        ),
        title: Text("Garut Selatan"),
        subtitle: Text("Pantai Santolo"),
      ),
    );
  }
}
