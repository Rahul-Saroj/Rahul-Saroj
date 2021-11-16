import 'package:flutter/material.dart';

class TotalEarning extends StatelessWidget {
  const TotalEarning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomRight,
      children: [
        buildContainer(),
        buildContainer2()
      ],
    );
  }

  Container buildContainer2() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        padding: const EdgeInsets.all(20.0),
        height: 130.0,
        width: 260.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Total Earning:', style: TextStyle(fontSize: 20.0,)),
            const SizedBox(height: 10.0,),
            Row(
              children: const [
                Text('\$960', style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),),
                SizedBox(width: 15.0,),
                Text('960 Booking',
                    style: TextStyle(fontSize: 20, color: Colors.blue))
              ],
            )
          ],
        ),
      );
  }

  Container buildContainer() {
    return Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: const EdgeInsets.all(30.0),
          height: 120.0,
          width: 360.0,
          // color: Colors.grey,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: const Align(
              alignment: Alignment.centerRight, child: Icon(Icons.panorama))
      );
  }
}