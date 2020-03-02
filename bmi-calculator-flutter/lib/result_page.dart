import 'package:bmi_calculator/constanses.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reuseableCard_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
ResultPage ({@required this.bmirslt ,@required this.bmiTextrslt ,@required this.bmiInterpretation});
final String bmirslt ;final String bmiTextrslt ;final String bmiInterpretation;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: 
        Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child:Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child:
                 Text('Your Result',style: kLargeTitle,),
          ),
          ),
        Expanded(
          flex:5,
          
           child: ReuseableCard(
             colour: kBoxColor,
             cardChild: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
                           
               children: <Widget>[
                 
                 Text(bmiTextrslt,style: kbmireslt,),
                 Text(bmirslt,style: kXLargeTitle,),
                 Text(
                 bmiInterpretation,
                 textAlign: TextAlign.center
                 ),
              
               ],
             ),
             ),
             ),
        Expanded(child:   
         
            BottomButton(btnText: 'recaulate your bmi', 
                   ontap:(){
                      Navigator.pop(context,'/');
                    },
                   ),
         ),
        ],
      ),
    );
  }
}