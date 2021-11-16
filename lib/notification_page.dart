import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final List item = ['Cat', 'dog' 'mouse', 'lion'];

   NotificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

     title: const Text('Notification'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Container(
              width: 50,
              height: 50,
              decoration: const ShapeDecoration(
                  color: Colors.green,
                  shape: CircleBorder (
                      side: BorderSide(
                          color: Colors.blue,style:BorderStyle.none,
                      )
                  )
              )
          ),

          title: RichText(
            text: TextSpan(
                text: 'John Deo',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),

                children: [
                  TextSpan(
                    text: ' has accepted your lift request.',
                    style: DefaultTextStyle.of(context).style,
                  )
                ]),
          ),

          subtitle: const Text('10 min ago'),
        ),
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: 15,
      ),
    );
  }
}
