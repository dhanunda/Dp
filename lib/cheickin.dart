import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Location_acess.dart';

class checkIn extends StatefulWidget {
  @override
  _checkInState createState() => _checkInState();
}

class _checkInState extends State<checkIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFFAAB53),
      child: Center(
        child: Container(
          width: 330.0,
          height: 122.0,
          color: Color(0XFFFFFF59),
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              'Check-In',
              style: TextStyle(
                fontSize: 24.0,
                color: Color(0XFF003974),
              ),
            ),
            onPressed: () {
//              Alert(
//                      context: context,
//                      title: "RFLUTTER",
//                      desc: "Flutter is awesome.")
//                  .show();
//              Position position = await Geolocator()
//                  .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Lacess()),
              );
//              print(position);
            },
          ),
        ),
      ),
    );
  }
}
