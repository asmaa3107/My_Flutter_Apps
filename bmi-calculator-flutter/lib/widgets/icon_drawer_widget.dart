import 'package:flutter/material.dart';

import '../constanses.dart';
class IconDrawer extends StatelessWidget {
 IconDrawer({
    @required this.lable,this.icon
  });//constractor
final String lable;
final IconData icon;
  @override
  Widget build(BuildContext context) {
        return Column(
           mainAxisAlignment: MainAxisAlignment.center,
    
          children: <Widget>[
            Icon(
              icon,
              size: 80.0,
              color: Colors.white,
              ),
            SizedBox(height: 15.0,),
            Text(
              lable ,style: kTextStyle,
        )
      ],
    );
  }
}
