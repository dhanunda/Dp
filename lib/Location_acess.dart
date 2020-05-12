import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'checkout.dart';
import 'animation.dart';

class Lacess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0XFFFAAB53),
        child: Center(
            child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          height: 160.0,
          width: 272.0,
          child: Column(children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 21.0, left: 21.0, right: 21.0),
              child: Text(
                "This app wants to use the device's location",
                style: TextStyle(fontSize: 20.0, color: Color(0XFF003974)),
              ),
            ),
            SizedBox(
              height: 19.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Deny',
                  style: TextStyle(fontSize: 16.0, color: Color(0XFFED1C24)),
                ),
                SizedBox(
                  width: 23.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 21.0,
                  ),
                  child: FlatButton(
                    child: Text(
                      'Allow',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0XFF003974)),
                    ),
                    onPressed: () async {
                      Position position = await Geolocator().getCurrentPosition(
                          desiredAccuracy: LocationAccuracy.high);
                      print(position);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CheckOut()),
                      );
                      Navigator.of(context)
                          .overlay
                          .insert(OverlayEntry(builder: (BuildContext context) {
                        return FunkyNotification();
                      }));
                    },
                  ),
                )
              ],
            )
          ]),
        )));
  }
}
