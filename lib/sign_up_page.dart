import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/rating_driver.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    double width20 = size / 17;
    double width16 = size / 25;
    double width10 = size / 40;
    double height10 = height / 40;
    double height50 = height / 16;
    double width30 = width10 + width20;
    double width50 = size / 9;
    double width40 = width50 - width10;
    double width80 = width40 + width40;
    double width260 = width80 + width80 + width80 + width20;
    double width380 = width80 + width260 + width80;
    double width60 = width50 + width10;
    final _formKey = GlobalKey<FormState>();
    final _sca = GlobalKey<ScaffoldState>();
    final firstNameTextController = TextEditingController();
    String? _validateName(String? value) {
      if (value!.isEmpty) {
        return '*Required Field';
      } else if (value.length < 3) {
        return 'Name is too short';
      } else {
        return null;
      }
    }

    String? _validateEmail(String? value) {
      String pattern =
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
      RegExp regExp = RegExp(pattern);
      if (value!.isEmpty) {
        return '*Required Field';
      } else if (!regExp.hasMatch(value)) {
        return 'Email should be Valid';
      } else {
        return null;
      }
    }

    // final myNameController = TextEditingController();
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Scaffold(
        key: _sca,
          appBar: AppBar(
            title: Text("Sign Up"),
            elevation: 0.0,
            backgroundColor: Color(0xffF64234).withOpacity(0.6),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                    child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1.jpg'),
                  radius: 40,
                )),
                SizedBox(height: 5),
                Center(
                  child: Text('User Name '),
                ),
                SizedBox(height: height10),
                BuildContainerTextField(
                    fieldName: 'Enter Your Name',
                    icon: Icons.person,
                    validator: _validateName),
                SizedBox(height: height10),
                BuildContainerTextField(
                    fieldName: 'Enter Your Last Name',
                    icon: Icons.person,
                    validator: _validateName),
                SizedBox(height: height10),
                BuildContainerTextField(
                    fieldName: 'Enter Your Email ',
                    icon: Icons.email_outlined,
                    validator: _validateEmail,
                    ),
                SizedBox(height: height10),
                BuildContainerTextField(
                    fieldName: 'Enter Your password ',
                    icon: Icons.shield,
                    validator: _validateName),
                SizedBox(height: height10),
                Container(
                  height: height50,
                  width: width380,
                  decoration: BoxDecoration(
                      color: Color(0xffF64234).withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(
                    child: InkWell(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'Inter'),
                        ),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => DriverRating()),
                            // );
                          }
                        }),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class BuildContainerTextField extends StatelessWidget {
  final String fieldName;
  final IconData icon;
  final validator;
  const BuildContainerTextField(
      {Key? key,
      required this.fieldName,
      required this.icon,
      required this.validator,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    double width20 = size / 17;
    double width16 = size / 25;
    double width10 = size / 40;
    double height10 = height / 40;
    double height50 = height / 16;
    double width30 = width10 + width20;
    double width50 = size / 9;
    double width40 = width50 - width10;
    double width80 = width40 + width40;
    double width260 = width80 + width80 + width80 + width20;
    double width380 = width80 + width260 + width80;
    double width60 = width50 + width10;
    return Container(
      width: width380,
      height: height50,
      child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Color(0xff5D6470),
            ),
            hintText: fieldName,
            filled: true,
            fillColor: Color(0xffE7ECF3),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(height50)),
              borderSide: BorderSide(color: Color(0xffF64234).withOpacity(0.5)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(height50)),
              borderSide: BorderSide(
                  color: Color(0xff0072B0).withOpacity(0.1), width: 2.0),
            ),
          ),
          validator: validator),
    );
    ;
  }
}
