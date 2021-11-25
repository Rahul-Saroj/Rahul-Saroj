import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:untitled/constFile/text_style.dart';

class PickUpPoints extends StatelessWidget {
  const PickUpPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: KColors.MAPCOLOR,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(

            child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(),
                      height: 120,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: KColors.CONCOLOR,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'When a new Flutter app is created, it has a default launcher icon.When a new Flutter app is created, it has a default launcher icon.',
                                style: TextStyle(
                                    color: KColors.darkTextColor,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.25,
                                    height: 1.5),
                              ),
                            ),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.clear))
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    NewWidgetListTile(
                        leading: 'Pick Up Point', trailing: 'Ikeja City Mall'),
                    Divider(),
                    NewWidgetListTile(
                        leading: 'Pick Up Point 1', trailing: 'KS Store'),
                    Divider(),
                    NewWidgetListTile(
                        leading: 'Pick Up Point 2', trailing: 'Penta Square'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewWidgetListTile extends StatelessWidget {
  final String leading, trailing;
  const NewWidgetListTile({
    Key? key,
    required this.leading,
    required this.trailing,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leading,
        style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w500),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w400),
      ),
    );
  }
}
