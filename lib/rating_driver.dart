import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DriverRating extends StatelessWidget {
  const DriverRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 466,
          width: 343,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Center(
                  child: Text(
                'Rate This Driver',
                style: TextStyle(
                    color: Color(0xff1D232E),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,fontFamily: 'Inter',letterSpacing: -0.5),
              )),
              const CircleAvatar(
                radius: 60.0,
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
                backgroundColor: Colors.transparent,
              ),
              const Text('John Deo',
                  style: TextStyle(
                      color: Color(0xff1D232E),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter')),
              const Text('4.0',
                  style: TextStyle(
                      color: Color(0xff289FE1),
                      fontSize: 32,
                      fontWeight: FontWeight.w500)),
              RatingBar.builder(
                itemSize: 32,
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 9.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Color(0xff289FE1),
                ),
                onRatingUpdate: (rating) {},
              ),
              Container(
                height: 51,
                width: 311,
                decoration: const BoxDecoration(
                  color: Color(0xff0072B0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              InkWell(
                onTap: ()=>Navigator.pop(context),
                child: const Center(
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xff0072B0),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.25,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
