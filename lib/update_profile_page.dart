import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({Key? key}) : super(key: key);
  static const IconData verified =
      IconData(0xe699, fontFamily: 'MaterialIcons');
  static const IconData check_circle_rounded =
      IconData(0xf635, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0.0,
        leading: const Icon(
          Icons.clear_rounded,
          color: Color(0xff5D6470),
          size: 23.5,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Center(
                child: Text(
              'Edit',
              style: TextStyle(
                  color: Color(0xff289FE1),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter'),
            )),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('John Deo',
                style: TextStyle(
                    color: Color(0xff1D232E),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            SizedBox(
              width: 15,
            ),
            Icon(
              check_circle_rounded,
              color: Colors.green,
              size: 24,
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xffE5E5E5),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/Harley-Davidson-HD-Wallpapers-.jpg'),
              radius: 60,
            ),
            buildListTile('First Name', 'John'),
            const Divider(indent: 15),
            buildListTile('Last Name', 'Deo'),
            const Divider(indent: 15),
            buildListTile('Email', '-'),
            const Divider(indent: 15),
            buildListTile('Phone Number', '+91 2345678901'),
            const Divider(indent: 15),
            buildListTile('Gender', 'Male'),
            const Divider(indent: 15),
            buildListTile('DOB ', '10-05-1995'),
            const Divider(indent: 15),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(String title, data) {
    return ListTile(
      leading: Text(
        title,
        style: const TextStyle(
            color: Color(0xff1D232E),
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter'),
      ),
      trailing: Text(
        data,
        style: const TextStyle(
            color: Color(0xff5D6470), fontWeight: FontWeight.w400),
      ),
    );
  }
}
