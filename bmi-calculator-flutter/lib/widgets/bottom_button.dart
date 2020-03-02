
import 'package:flutter/material.dart';

import '../constanses.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.btnText,@required this.ontap});
final String btnText;
final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
    color: kSecondryColor,
    margin: EdgeInsets.only(top: 10.0),
    height: kBtnHight,
    width: double.infinity,
    child: GestureDetector(
      onTap:this.ontap,
       child: Center(
        child: Text(
      this.btnText,
          style: kLargeTextForBtn,
        ),
      ),
    ),
            );
  }
}
