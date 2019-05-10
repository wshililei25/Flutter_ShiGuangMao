import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var _seconds = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
                child: Image(
                  height: 1334,
                  image: AssetImage('images/bgc.jpg'),
                  fit: BoxFit.cover,
                )),
            Positioned(
                right: 15,
                top: 35,
                child: Container(
                    padding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                    decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(8)),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/PrimaryPage');
                        },
                        child: Text(
                          '跳过',
                          style: TextStyle(color: Colors.black45, fontSize: 14),
                        ))))
          ],
        ));
  }

  @override
  void initState() {
    super.initState();
    _countDown();
  }

  void _countDown() {
    var duration = Duration(seconds: _seconds);
    Future.delayed(duration, _goHomePage);
  }

  void _goHomePage() {
    Navigator.of(context).pushReplacementNamed('/PrimaryPage');
  }
}
