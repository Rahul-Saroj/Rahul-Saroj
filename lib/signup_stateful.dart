import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form With Validation')),
      body: const SingleChildScrollView(child: SingUpPage()),
    );
  }
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
    content: Text('Successfull'),
    actions: [
      TextButton(
        // Fl
        onPressed: null, // function used to perform after pressing the button
        child: Text('CANCEL'),
      ),
      TextButton(
        onPressed: null,
        child: Text('ACCEPT'),
      ),
    ],
  );
  showDialog(context: context, builder: (context) => alertMan);
}

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final emailController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  final passwordCtrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool _state = false;
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 280.0,
            child:
                SvgPicture.asset('assets/images/wel.svg', fit: BoxFit.contain),
          ),
          const Center(
            child: Text(
              'Sign In ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text('Email Address'),
          TextFormField(
            controller: emailController,
            validator: (String? value) {
              bool val = !emailValid.hasMatch(value!);
              if (value.isEmpty) {
                return 'please enter some text';
              } else if (val) {
                return 'Please enter valid email';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text('Password'),
          TextFormField(
            controller: passwordCtrl,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  book(context);
                }
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                onSurface: Colors.grey,
              ),
              child: const Center(
                  child: Text(
                'Sign In',
                style: TextStyle(fontSize: 20.0),
              )),
            ),
          ),
          Center(
            child: RichText(
              text: const TextSpan(
                text: "I'm already member?",
                style: TextStyle(color: Colors.deepPurple),
                children: [
                  TextSpan(
                    text: ' Sign In',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Switch.adaptive(activeColor: Colors.purpleAccent,
            value: _state,
            onChanged: (val) {
              setState(() {
                _state = val;
                print(_state);
              });
            },
          )
        ],
      ),
    );
  }
}
