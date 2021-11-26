///dart@2.9
import 'package:flutter/material.dart';
import 'package:untitled/constFile/text_style.dart';

class DepartureWindow extends StatelessWidget {
  const DepartureWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildHeading('Departure Time', false),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Text(
                  'Start time',
                  style: KTextStyle.f16w5.copyWith(
                    color: KColors.textColor,
                  ),
                ),
                Spacer(),
                Text(
                  '06:00 PM',
                  style: KTextStyle.f16w4.copyWith(
                    color: KColors.textColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
            color: Color(0xffE7ECF3),
          ),
          buildHeading('Lift Frequency', false),
          NewWidgetSubHeading(text: 'Occasional'),
          NewWidgetSubHeading(text: 'Frequent'),
          Container(
            padding: EdgeInsets.only(top: 20),
            height: 10,
            color: Color(0xffE7ECF3),
          ),
          buildHeading('Back and forth lift', true),
          // NewWidgetRow(text: 'Back and forth lift'),
        ],
      ),
    );
  }

  Container buildHeading(String text, bool? show) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: KTextStyle.f18w5.copyWith(
              color: KColors.darkTextColor,
            ),
          ),
          show!
              ? Switch.adaptive(value: true, onChanged: (val) {})
              : SizedBox(),
        ],
      ),
    );
  }
}

class NewWidgetSubHeading extends StatelessWidget {
  final String? text;
  const NewWidgetSubHeading({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(
            text!,
            style: KTextStyle.f18w5.copyWith(
              color: KColors.textColor,
            ),
          ),
          Spacer(),
          Switch.adaptive(value: true, onChanged: (val) {}),
        ],
      ),
    );
  }
}
