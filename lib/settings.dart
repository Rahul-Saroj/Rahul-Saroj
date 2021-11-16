import 'package:flutter/material.dart';
import 'package:untitled/constFile/text_style.dart';
import 'package:untitled/rating_driver.dart';

import 'lift_history.dart';
import 'my_account.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: const Color(0xffFFFFFF),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                buildListTile(
                  'Profile',
                  context,
                ),
                buildDivider(),
                buildListTile('My Account', context),
                // buildDivider(),
                // buildListTile('My Addresses'),
                // buildDivider(),
                // buildListTile('Fashion'),
                // const Divider(
                //   thickness: 8,
                //   color: Color(0xffE7ECF3),
                // ),
                // buildListTile('Rate Application'),
                // buildDivider(),
                // buildListTile('Help'),
                // buildDivider(),
                // buildListTile('Term & Conditions'),
                // buildDivider(),
                // buildListTile('Data Protection'),
                const ListTile(
                  title: InkWell(
                    child: Text(
                      'Sign Out',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFF5353)),
                    ),
                  ),
                ),
                // buildColumn(),
              ],
            ),
          ],
        ));
  }

  Divider buildDivider() {
    return const Divider(
      height: 1,
      indent: 15,
      endIndent: 15,
    );
  }

  ListTile buildListTile(
    String data,
    context,
  ) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
      trailing: const Icon(
        Icons.keyboard_arrow_right_rounded,
        color: Color(0xff5D6470),
      ),
      title: Text(
        data,
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: KColors.darkTextColor,
            fontFamily: 'Inter'),
      ),
      onTap: () {
        showModalBottomSheet<void>(
          // isScrollControlled: true,
          // shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
          context: context,

          builder: (BuildContext context) =>const MyAccountBottomSheet(),
        );
      },
    );
  }

  Column buildColumn() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Virtual Lift Created',
          style: TextStyle(
            color: Color(0xff1D232E),
            fontWeight: FontWeight.w500,
            fontSize: 24,
            fontFamily: 'Inter',
            letterSpacing: -0.5,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 28.0,bottom:30,left: 60,right: 15),
          child: const Text(
            'Your virtual lift is created and available for the drivers to view and accept or reject.',textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff5D6470),
              fontWeight: FontWeight.w400,
              fontSize: 20,
              fontFamily: 'Inter',
              letterSpacing: -0.25,
            ),
          ),
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
            onTap: () {},
          )),
        ),
      ],
    );
  }
}

// Container(
// height: 200,
// color: Colors.amber,
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
//
// children: <Widget>[
// const Text('Modal BottomSheet'),
// ElevatedButton(
// child: const Text('Close BottomSheet'),
// onPressed: () => Navigator.pop(context),
// )
// ],
// ),
// ),
// );
