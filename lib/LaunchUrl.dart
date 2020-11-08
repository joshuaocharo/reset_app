import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlDemo extends StatefulWidget {
  //
  LaunchUrlDemo({Key key}) : super(key: key);
  final String title = 'Launch Url';

  @override
  _LaunchUrlDemoState createState() => _LaunchUrlDemoState();

}
class _LaunchUrlDemoState extends State<LaunchUrlDemo> {
  //
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://reset.kpc.co.ke';

  Future<void> _launchInApp(String url) async {
    if (await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    }else {3
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xFFFFEBEE),
      appBar: AppBar(
        title: Text('KPC Password Self-Reset and Account Unlock'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Expanded(
          child: FittedBox(
          fit: BoxFit.scaleDown,
      child: Image(
            image: AssetImage('images/kpc.png'),
          ),
      ),
        ),
            ButtonTheme(
              minWidth: 350.0,
              height: 100.0,

    child: RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red)
      ),
    onPressed: (){
    _launchInApp(_launchUrl);
    },
      color: Color(0xFFF44336),
    child: Text('CLICK HERE',
    style: TextStyle(fontSize: 50, color: Color(0xffffffff))),
    ),

          ),

      ]
      )
        );
  }
}
//Made by Joshua Ocharo Momanyi