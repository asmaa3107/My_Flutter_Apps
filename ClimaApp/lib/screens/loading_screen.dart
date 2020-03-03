import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
//besure to add <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
//in minfest tag (android/src/main)

 void getLocation() async {
     Location loc = Location();
     await loc.getCurrentLocation();
     print(loc.longtude);
     //
     print(loc.latitude);
 }
  @override
   
   void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Current Lcation :'),
      ),
    );
  }
}
