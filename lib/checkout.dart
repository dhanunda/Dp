import 'package:flutter/material.dart';
import 'animation.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
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
              'Check-Out',
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
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => Lacess()),
//              );
//              print(position);
            },
          ),
        ),
      ),
    );
  }
}
