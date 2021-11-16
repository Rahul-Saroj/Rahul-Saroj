import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled/constFile/text_style.dart';
class CustomLift extends StatefulWidget {
  final String title;
  final bool isLift;
  CustomLift({
    required this.title,
    required  this.isLift,
  });

  @override
  _CustomLiftState createState() => _CustomLiftState();
}

class _CustomLiftState extends State<CustomLift> {
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
    return ListView.separated(
      padding: const EdgeInsets.only(
        top: 40,
        left: 26,
        right: 22,
      ),
      itemCount: 1,
      itemBuilder: (context, snapshot) {
        return Container(
          padding: EdgeInsets.all(20),
          // margin: EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.account_circle),
                   SizedBox(
                    width: width40,
                  ),
                  Expanded(
                    // 60% of space => (6/(6 + 4))
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff1D232E),
                              fontWeight: FontWeight.w400),
                        ),
                         SizedBox(height: height10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.people_outline,
                            ),
                            const SizedBox(
                              width: 8.47,
                            ),
                            const Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff5D6470),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: width16),
                            RichText(
                              text: const TextSpan(
                                  text: '\$ 25',
                                  style: TextStyle(
                                      color: Color(0xff5D6470),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                        text: ' per passenger.',
                                        // style: DefaultTextStyle.of(context).style,
                                        style: TextStyle(
                                          color: Color(0xff5D6470),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ))
                                  ]),
                            ),
                            // const Text(
                            //   '\$25 per passenger',
                            //   style: TextStyle(
                            //     fontSize: 12,
                            //     color: Color(0xff5D6470),
                            //   ),
                            // ),
                          ],
                        ),
                         SizedBox(height: height10),
                        const Text(
                          'MM Alam Road',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff1D232E)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
             widget.isLift ? const Divider() : SizedBox(height: width20,),
              widget.isLift
                  ? Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  width: width60,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                title:  Text('John Deo',
                                    style: KTextStyle.f16w5,),
                                subtitle: const Text('LEZ 20485',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                trailing: const Text(
                                  '\$25',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              itemSize: 14,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Color(0xff289FE1),
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            const Text(
                              '4.0',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff5D6470),
                                  fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            const Text('04/07/2021 , 8:30pm',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffA7B0C0),
                                    fontWeight: FontWeight.w500))
                          ],
                        )
                      ],
                    )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:  [
                        Container(height: 20, decoration: BoxDecoration( color: Color(0xffE3F4EE),
        borderRadius: BorderRadius.circular(20), // Creates border
        ),
                          child: InkWell(
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff12B163),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        // Spacer(),
                        Text('04/07/2021 , 8:30pm',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffA7B0C0),
                                fontWeight: FontWeight.w500))
                      ],
                    )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
