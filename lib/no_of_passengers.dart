import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/constFile/text_style.dart';

class NumberOfPassengers extends StatefulWidget {
  const NumberOfPassengers({Key? key}) : super(key: key);

  @override
  _NumberOfPassengersState createState() => _NumberOfPassengersState();
}

class _NumberOfPassengersState extends State<NumberOfPassengers> {
  @override
  Widget build(BuildContext context) {
    double width20 = MediaQuery.of(context).size.width / 17;
    double width16 = MediaQuery.of(context).size.width / 25;
    double width10 = MediaQuery.of(context).size.width / 40;
    double height10 = MediaQuery.of(context).size.height / 40;
    double height50 = MediaQuery.of(context).size.height / 16;
    double width30 = width10 + width20;
    double width50 = MediaQuery.of(context).size.width / 9;
    double width40 = width50 - width10;
    double width80 = width40 + width40;
    double width260 = width80 + width80 + width80 + width20;
    double width380 = width80 + width260 + width80;
    double width60 = width50 + width10;
    bool _state =true;


    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(width20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  // margin: EdgeInsets.only(top: 10),
                  height: 4,
                  width: width80,
                  color: Color(0xffE7ECF3),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: width16, bottom: width20),
                child: Text('No Of Passenger' ,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildInkWellButton('-'),
                  Container(
                    width: width260,
                    height: height50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffE7ECF3),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(width10)),
                          borderSide: BorderSide(
                              color: Color(0xff0072B0).withOpacity(0.1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(width10)),
                          borderSide: BorderSide(
                              color: Color(0xff0072B0).withOpacity(0.1),
                              width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  buildInkWellButton('+'),
                ],
              ),
              Divider(height: height50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Schedule Lift'),
                  Switch.adaptive(value: true, onChanged: (void bool) {}),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Text('Date',style: TextStyle(color: KColors.textColor),),
                trailing: Text('20 Sep 2021',style: TextStyle(color: KColors.textColor),),
              ),
              Divider(height: 24,),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Text('Time',style: TextStyle(color: KColors.textColor),),
                trailing: Text('20:12 P M',style: TextStyle(color: KColors.textColor),),
              ),
              Divider(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pick References',),
                  Switch.adaptive(value: _state, onChanged: ( bool val) {
                    setState(() {
                      _state = val;

                    });
                  }),
                ],
              ),
              Spacer(),
              Container(
                height: height50,
                width: width380,
                decoration: const BoxDecoration(
                    color: Color(0xff0072B0),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Center(
                    child: InkWell(
                      child: const Text(
                        'Search Lift',
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
      ),
    );
  }

  InkWell buildInkWellButton(String icon) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: KColors.mainBlueColor),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              icon,
              style: TextStyle(fontSize: 24, color: Colors.white),
            )),
      ),
    );
  }
}
