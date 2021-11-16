import 'package:flutter/material.dart';
import 'package:untitled/constFile/text_style.dart';

//
// import 'constFile/text_style.dart';
//
class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width20 = MediaQuery.of(context).size.width / 17;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: const Text('Tab Bar View'),
          centerTitle: true,
        ),
        body: Column(
          children: const [
            TabBarWidget(),
            TabBarWidget(),
            TabBarWidget(),
            TabBarWidget(),
          ],
        ));
  }
}

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,),
          child: TabBar(

              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: KColors.BLUE,
              padding: EdgeInsets.all(10),
              indicatorColor: Colors.black,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffF8FAFD),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(2, 4.0), // changes position of shadow
                  ),
                ],
              ),
              tabs: const [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("All",),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Accepted"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Rejected"),
                  ),
                ),
              ]),
        ));
  }
}
