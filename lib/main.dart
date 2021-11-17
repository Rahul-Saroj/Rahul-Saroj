// import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/settings.dart';
import 'package:untitled/sign_up_page.dart';
import 'package:untitled/signup_stateful.dart';
import 'package:untitled/tab_bar.dart';
import 'package:untitled/where_to_go.dart';
import 'lift_history.dart';
import 'my_vehicle.dart';
import 'no_of_passengers.dart';
import 'notification_page.dart';
import 'notification_rider.dart';

class Todo {
  final String title;
  final String description;
  Todo(this.title, this.description);
}

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MyApp(), enabled: false));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:MyVehicle() ,);
      ScreenUtilInit(
      // designSize: Size(320,1280),
      builder: () => MaterialApp(

        locale: DevicePreview.locale(context),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Inter',
          brightness: Brightness.light,
          primaryColor: Colors.purpleAccent,
          // colorScheme: ColorScheme.fromSwatcsh(primarySwatch: Colors.green)
          //     .copyWith(secondary: Color(0xff0072B0)),
        ),
        home:  MyVehicle(),// CALL KROO
        // RoutingWithDataPassing(
        //   todos : List.generate(20, (index) => Todo('Welcome $index', 'Hello Ibyte@infomatics$index')),
        // ),

        // initialRoute: '/',
        routes: const {
/*

          '/' : (context)=> const DriverRating(),
          '/Rating' : (context)=> const DriverRating(),
          '/' : (context)=> const MyAccountBottomSheet(),
          '/' : (context)=> const SettingsPage(),
          '/' : (context) => NewPage(),
        '/second' : (context) => const DetailPage(),
*/
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
        child: Column(
          children: [
            Container(
                height: 300.0,
                color: Colors.blue,

                // decoration: const BoxDecoration(color: Color(0xFFFF80E4F)),
                child: Column(children: <Widget>[
                  Row(
                    children: const [
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.menu),
                        tooltip: 'Menu Bar',
                      ),
                      Expanded(
                        child: Text(
                          'Welcome to Flutter World',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                        ),
                      ),
                      IconButton(
                          onPressed: null, icon: Icon(Icons.access_alarms))
                    ],
                  ),
                  Row(
                    children: const [
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.menu),
                        tooltip: 'Menu Bar',
                      ),
                      Expanded(
                        child: Text(
                          'Hello Rahul ! How Are You.',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.account_box_outlined,
                          ))
                    ],
                  ),
                  const MyButton()
                ])),
            Container(
                height: 300.0,
                padding: const EdgeInsets.symmetric(
                    vertical: 50.0, horizontal: 30.0),
                color: Colors.blue,
                margin: EdgeInsets.all(15.0),
                // decoration: const BoxDecoration(color: Color(0xFFFF80E4F)),
                child: Column(children: <Widget>[
                  Row(
                    children: const [
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.menu),
                        tooltip: 'Menu Bar',
                      ),
                      Expanded(
                        child: Text(
                          'Welcome to Flutter World',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                        ),
                      ),
                      IconButton(
                          onPressed: null, icon: Icon(Icons.access_alarms))
                    ],
                  ),
                  Row(
                    children: const [
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.menu),
                        tooltip: 'Menu Bar',
                      ),
                      Expanded(
                        child: Text(
                          'Hello Rahul ! How Are You.',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.account_box_outlined,
                          ))
                    ],
                  ),
                  const MyButton()
                ])),
            Container(
                height: 300.0,
                padding: const EdgeInsets.symmetric(
                    vertical: 50.0, horizontal: 30.0),
                color: Colors.blue,
                margin: EdgeInsets.all(15.0),
                // decoration: const BoxDecoration(color: Color(0xFFFF80E4F)),
                child: Column(children: <Widget>[
                  Row(
                    children: const [
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.menu),
                        tooltip: 'Menu Bar',
                      ),
                      Expanded(
                        child: Text(
                          'Welcome to Flutter World',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                        ),
                      ),
                      IconButton(
                          onPressed: null, icon: Icon(Icons.access_alarms))
                    ],
                  ),
                  Row(
                    children: const [
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.menu),
                        tooltip: 'Menu Bar',
                      ),
                      Expanded(
                        child: Text(
                          'Hello Rahul ! How Are You.',
                          style:
                              TextStyle(color: Color.fromARGB(255, 0, 255, 0)),
                        ),
                      ),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.account_box_outlined,
                          ))
                    ],
                  ),
                  const MyButton()
                ])),
            // const Chapter()
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const Text('Click Me',
          style: TextStyle(color: Color.fromARGB(255, 248, 220, 0))),
      onTap: () async {
        await book(context);
      },
    );
  }

  book(BuildContext context) {
    // var setVal = Center(
    //     child : Container(
    //         // width: MediaQuery.of(context).size.width /2,
    //         // padding: const EdgeInsets.all(20),
    //         // color: Colors.white,
    //         // child : const Expanded( child: Text('Yeh you Click Me again!.',style: TextStyle(color: Colors.blueAccent),))
    //     )
    // );
    var alertMan = const AlertDialog(
      title: Text("Any One is Here"),
      content: Text('Welcome To New World'),
    );
    showDialog(context: context, builder: (context) => alertMan);
  }
}
