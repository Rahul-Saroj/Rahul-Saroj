import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/constFile/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyNewLift extends StatelessWidget {
  final String title;
  MyNewLift(this.title, {Key? key}) : super(key: key);

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
      appBar: AppBar(elevation: 0.0,),
      body: Container(
        padding: EdgeInsets.all(KDynamicWidth.width20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Row(
          children: [
            const Icon(Icons.account_circle),
            SizedBox(
              width: KDynamicWidth.width40,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kTextStyle.f16w4.copyWith(color: KColors.darkTextColor),
                  ),
                  SizedBox(height: height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.people_outline,
                          color: KColors.textColor
                      ),
                      const SizedBox(
                        width: 8.47,
                      ),
                      Text(
                        '3',
                        style: kTextStyle.f16w4.copyWith(color: KColors.textColor),
                      ),
                      SizedBox(width: width16),
                      RichText(
                        text: TextSpan(
                            text: '\$ 25',
                            style: kTextStyle.f16w5.copyWith(color: KColors.textColor),
                            children: [
                              TextSpan(
                                text: ' per passenger.',
                                // style: DefaultTextStyle.of(context).style,
                                style: kTextStyle.f14w4.copyWith(color: KColors.textColor),
                              )
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(height: height10),
                   Text(
                    'MM Alam Road',
                    style: kTextStyle.f16w4.copyWith(color: KColors.darkTextColor),
                  ),
                ],
              ),
            ),
            Expanded(child: CupertinoSwitch(activeColor: KColors.BLUE,value: true, onChanged: (val) {}))
          ],
        ),
      ),
    );
  }
}
