import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/rating_driver.dart';

import 'constFile/text_style.dart';

class MyAccountBottomSheet extends StatelessWidget {
  const MyAccountBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        // padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            // color: Color(0xFF737373),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(left: 55.0),
                child: Text(
                  'My Accounts',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xff1D232E),
                      letterSpacing: -0.25,
                      fontFamily: 'Inter'),
                ),
              ),
              leading: const Icon(
                Icons.clear,
                color: Color(0xff5D6470),
                size: 30,
              ),
              onTap: () => Navigator.pop(context),
            ),
            const SizedBox(
              height: 30,
            ),
            buildListTile('1234 888 6461', 'MTN Mobile Money ', Icons.person),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 15,
            ),
            buildListTile(
                '2244 777 6561', 'Orange Money ', Icons.account_circle),
            const Divider(
              height: 1,
              indent: 15,
              endIndent: 15,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 327,
              decoration: const BoxDecoration(
                  color: Color(0xff0072B0),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                  child: InkWell(
                child: const Text(
                  'Add New Account',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Inter'),
                ),
                onTap: ()=>  Navigator.pushNamed(context, '/Rating'),
              )),
            ),

          ],
        ),
      ),
    ));
  }

  ListTile buildListTile(String data, data1, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      subtitle: Text(
        data,
        style: const TextStyle(
            fontWeight: FontWeight.w400, color: Color(0xff5D6470)),
      ),
      title: Text(
        data1,
        style: const TextStyle(
            fontWeight: FontWeight.w500, color: Color(0xff1D232E)),
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Color(0xff5D6470),
      ),
    );
  }



}
