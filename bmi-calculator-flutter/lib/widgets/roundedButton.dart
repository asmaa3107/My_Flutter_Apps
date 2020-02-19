import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

RoundedButton({this.icon,@required this.changeValue}) ;

final IconData icon;
final Function changeValue;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      
      onPressed: (){ 
         changeValue();
      },
      child: Icon(icon),
      elevation: 6.0,
      fillColor: Colors.grey,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
       ),
       shape: CircleBorder(),
    );
  }


}