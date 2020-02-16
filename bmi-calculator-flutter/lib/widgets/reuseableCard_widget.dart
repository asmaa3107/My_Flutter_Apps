import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {

ReuseableCard({@required this.colour,this.cardChild,this.onSelected});
final Color colour;
final Widget cardChild;
 final Function onSelected; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
          child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(15.0),
            ),
            child: this.cardChild,
      ),
    );
  }
}




//= GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedGender=Gender.male;
//                     });
//                   } 
