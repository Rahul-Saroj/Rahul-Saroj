import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/constFile/text_style.dart';

class NotificationRider extends StatelessWidget {
  const NotificationRider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width20 = MediaQuery.of(context).size.width / 17;
    double width16 = MediaQuery.of(context).size.width / 25;
    double width10 = MediaQuery.of(context).size.width / 40;
    double height10 = MediaQuery.of(context).size.height / 40;
    double height30 = MediaQuery.of(context).size.height / 20;
    double width30 = width10 + width20;
    double width50 = MediaQuery.of(context).size.width / 9;
    double width40 = width50 - width10;
    double width60 = width50 + width10;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ContainerBox( first: 'General', second: 'View All'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width20),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: Color(0xffD9F1FF).withOpacity(0.5),
                radius: 20,
                child: Icon(
                  Icons.shield,
                  color: KColors.BLUE,
                ),
              ),
              title: Text('Your account is verified'),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('10 min ago'),
              ),
            ),
          ),
          ContainerBox( first: 'Lift Request(05)', second: 'View All'),
        ],
      ),
    );
  }

  // Container buildContainer(String first, second) {
  //   return Container(
  //       height: 40,
  //       width: width50,
  //       color: KColors.borderColor,
  //       padding: EdgeInsets.symmetric(horizontal: 20),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Text(first),
  //           Text(
  //             second,
  //             style: TextStyle(color: Color(0xff289FE1)),
  //           ),
  //         ],
  //       ));
  // }
}


class ContainerBox extends StatelessWidget {
  final String first;
  final String second;
  const ContainerBox( {Key? key ,required this.first, required this.second}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    double width20 = size / 17;
    double width16 = size / 25;
    double width10 = size / 40;
    double height10 = height / 40;
    double height50 = height / 16;
    double width30 = width10 + width20;
    double width50 = size / 9;
    double width40 = width50 - width10;
    double width80 = width40 + width40;
    double width260 = width80 + width80 + width80 + width20;
    double width380 = width80 + width260 + width80+width30;
    double width60 = width50 + width10;
    return Container(
        height: height50,
        width: width380,
        color: KColors.borderColor,
        padding: EdgeInsets.symmetric(horizontal: width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(first),
            Text(
              second,
              style: TextStyle(color: Color(0xff289FE1)),
            ),
          ],
        ));
  }
}
