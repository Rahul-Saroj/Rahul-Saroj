import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constFile/text_style.dart';

class WhereToGo extends StatelessWidget {
  const WhereToGo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width20 = MediaQuery.of(context).size.width / 17;
    double width16 = MediaQuery.of(context).size.width / 25;
    double width10 = MediaQuery.of(context).size.width / 40;
    double height10 = MediaQuery.of(context).size.height / 40;
    double width30 = width10 + width20;
    double width50 = MediaQuery.of(context).size.width / 9;
    double width40 = width50 - width10;
    double width60 = width50 + width10;

    return Scaffold(
      appBar: AppBar(
        title: Text('Where To Go'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Icon(
                  Icons.description_rounded,
                  color: Color(0xffA7B0C0),
                ),
                padding: EdgeInsets.all(width20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Delhi',
                    style: TextStyle(color: KColors.textColor),
                  ),
                  Divider(
                    height: 5,
                  ),
                  Text(
                    'Mumbai',
                    style: TextStyle(color: KColors.textColor),
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(width20),
            color: KColors.borderColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'My Address',
                  style: TextStyle(
                      color: Color(0xff1D232E), fontWeight: FontWeight.w500),
                ),
                Text('Add Address', style: TextStyle(color: Color(0xff289FE1))),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Color(0xffA7B0C0)),
            title: Text('Home', style: TextStyle(fontWeight: FontWeight.w400)),
            subtitle: Text('Sector 63 Noida U P'),
          ),
          Container(
            padding: EdgeInsets.all(width20),
            width: MediaQuery.of(context).size.width,
            color: KColors.borderColor,
            child: Text('My Recent Location',style: TextStyle(fontWeight: FontWeight.w500),),
          ),
          Expanded(
            // height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.location_on, color: Color(0xffA7B0C0)),
                    subtitle: Text(
                      'Varanasi Cantonment',
                    ),
                    title: Text('IP Mall'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
