import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled/constFile/text_style.dart';

class LiftReqScreen89 extends StatelessWidget {
  const LiftReqScreen89({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Screen 89 Lift Request"),
      ),
      body: Column(
        children: [
          ListTile(
            // contentPadding: EdgeInsets.zero,
            leading: Stack(
              // alignment: Alignment.centerLeft,
              children: [
                CircleAvatar(
                  radius: 25,
                ),
                Positioned(
                  top: KDynamicWidth.width30,
                  height: KDynamicWidth.width20,
                  child: Container(
                    width: KDynamicWidth.width60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(KDynamicWidth.width10),
                        ),
                        color: Color(0xffD9F1FF)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, size: 16, color: KColors.BLUE),
                          Text(
                            '4.0',
                            style:
                                kTextStyle.f12w4.copyWith(color: KColors.BLUE),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              'John Deo',
              style: kTextStyle.f18w5.copyWith(color: KColors.darkTextColor),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: KDynamicWidth.width10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.people_outline, color: KColors.textColor),
                  SizedBox(width: KDynamicWidth.width5),
                  Text('1',
                      style:
                          kTextStyle.f16w5.copyWith(color: KColors.textColor)),
                  SizedBox(width: KDynamicWidth.width16),
                  Icon(
                    Icons.add_location,
                    color: KColors.textColor,
                  ),
                  Text('0.25km',
                      style:
                          kTextStyle.f16w5.copyWith(color: KColors.textColor)),
                ],
              ),
            ),
            trailing: Text(
              '\$25',
              style: kTextStyle.f20w5.copyWith(color: KColors.darkTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
