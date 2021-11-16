import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Map;
    final name = todo['name'];
    final phone = todo['phone'];
    final email = todo['email'];

    return  Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text('Name :$name'),
                  const SizedBox(height: 20.0,),
                  Text('Phone :$phone'),
                  const SizedBox(height: 20.0,),
                   Text('Email :$email'),
                  const SizedBox(height: 20.0,),
                  InkWell(child: const Text('Go Back'),onTap: ()=> Navigator.pop(context),),
                ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
      onPressed: () async {
        final _url = 'tel : $phone';
        await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
      },
      child: const Icon(Icons.call),
      backgroundColor: Colors.green,
    ),
    );
  }
}
