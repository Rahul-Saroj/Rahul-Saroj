import 'package:flutter/material.dart';
import 'package:untitled/tab_bar.dart';

import 'constFile/text_style.dart';
import 'notification_rider.dart';

class MyVehicle extends StatelessWidget {
  const MyVehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(),
        body: Container(
          // color: Color(0xff289FE1),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              buildPadding(
                'Vehicle No.',
                "LEZ 7848",
              ),
              Divider(),
              buildPadding(
                'Registration No.',
                "8329LEZ",
                colors: KTextStyle.f16w5.copyWith(decoration: TextDecoration.underline,color: KColors.BLUE ),
                onTap : (){Navigator.push(context, MaterialPageRoute(builder:(context) =>TabBarPage()));},
              ),
              Divider(),
              buildPadding(
                'Insurance No.',
                "HDIV7848",
                colors:KTextStyle.f16w5.copyWith(decoration: TextDecoration.underline,color: KColors.BLUE ),
                onTap : (){Navigator.push(context, MaterialPageRoute(builder:(context) =>NotificationRider()));},
              ),
              Divider(),
              buildPadding(
                'Status',
                "Verified",
              ),
            ],
          ),
        ));
  }

  Padding buildPadding(String lead, trail, {colors,onTap}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lead,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        InkWell(
          onTap: onTap ?? null,
          child: Text(
              trail,
              style: colors??TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Color(0xff5D6470)),
            ),
        ),
        ],
      ),
    );
  }
}
//   ListTile buildListTile(String lead, trail, {colors}) {
//     return ListTile(
//       contentPadding: EdgeInsets.zero,
//       leading: Text(
//         lead,
//         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//       ),
//       trailing: Text(
//         trail,
//         style: TextStyle(color: colors),
//       ),
//     );
//   }
// }
