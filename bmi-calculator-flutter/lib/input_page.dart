import 'package:bmi_calculator/logic/calc_BMI.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/reuseableCard_widget.dart';
import 'widgets/icon_drawer_widget.dart';
import 'package:bmi_calculator/constanses.dart';
import 'package:bmi_calculator/widgets/roundedButton.dart';
//widgets variables

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 80;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      //  backgroundColor:Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            // flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    onSelected: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kBoxColor
                        : kBoxInactiveColor,
                    cardChild: IconDrawer(
                      lable: 'Male',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: selectedGender == Gender.female
                        ? kBoxColor
                        : kBoxInactiveColor,
                    cardChild: IconDrawer(
                      lable: 'Female',
                      icon: FontAwesomeIcons.venus,
                    ),
                    onSelected: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: kBoxColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Hieght', style: kTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kBigTextStyle,
                      ),
                      Text(
                        ' cm',
                        style: kTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      //add slider active and inactive color
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.white,
                      // color slider  and its overlay
                      thumbColor: kSecondryColor,
                      overlayColor: kSecondryColor.withOpacity(0.16),
                     // drow slider shape and its overlay
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape:  RoundSliderOverlayShape(overlayRadius: 22.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                   
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  
                  child: ReuseableCard(
                    
                    colour: kBoxColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Weight', style: kTextStyle),
                         Text(
                              weight.toString(),
                              style: kBigTextStyle,
                            ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              changeValue: (){
                                setState(() {
                                weight--;
                                });
                              },
                            ),
                            SizedBox(width: 15.0,),
                             RoundedButton(
                              icon: FontAwesomeIcons.plus,
                               changeValue: (){
                                setState(() {
                                weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kBoxColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Age', style: kTextStyle),
                        Text(
                              age.toString(),
                              style: kBigTextStyle,
                            ), 
                            Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                             
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              changeValue: (){
                                setState(() {
                                age--;
                                });
                              },
                            ),
                            SizedBox(width: 15.0,),
                             RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              changeValue: (){
                                setState(() {
                               age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      
   BottomButton(btnText: 'Calculate Your BMI'.toUpperCase(),
   ontap: (){
        CalculateBMI calc= CalculateBMI(height: this.height,weight: this.weight);
        
        //in case i need to send parameter to net screen
        Navigator.push(context,
        MaterialPageRoute(
          builder:
           (context)=>
           ResultPage(
       
        bmirslt:calc.calcBMI() ,
        bmiTextrslt :calc.bmiResult(),
        bmiInterpretation:calc.bmiAdvivce()

           ),),
           );
        //Navigator.pushNamed(context, '/resultpage');
      },),
        ],
      ),
    );
  }
}

//final attribute cant assign value to it more than once
//!note : we use final with statless widget
//every time it destorying and rebuilt

// if(selectedGender == Gender.male) ? '' : ';
//   Color maleCardCoulor   = boxInactiveColor;
//   Color femaleCardCoulor = boxInactiveColor;
//   //1 for male 2 for woman insted of lots of comments use enum instead
// void updateColor(Gender gender){
//   if (gender== Gender.male){
//     if (maleCardCoulor== boxInactiveColor)
//          { maleCardCoulor=boxColor;
//           femaleCardCoulor=boxInactiveColor;}
//     else maleCardCoulor = boxInactiveColor;
//   }
//   else if(gender==Gender.female){
//  if (femaleCardCoulor== boxInactiveColor)
//         {  femaleCardCoulor=boxColor;
//           maleCardCoulor=boxInactiveColor;
//         }
//     else femaleCardCoulor = boxInactiveColor;
//   }
// }

// const ReuseableCard({
//   Key key,
// }) : super(key: key);
// note! using key to trace widget لو هعمل انيمشان مثلا وعايزه اسليكت الودجت ديه

// floatingActionButton: FloatingActionButton(
//   backgroundColor: Theme.of(context).accentColor,
//   child: Icon(
//     Icons.add,
//     color: Colors.white,
//   ),
// ),
