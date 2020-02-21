import 'package:bmi_calculator/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/reuseableCard_widget.dart';
import 'widgets/icon_drawer_widget.dart';
import 'package:bmi_calculator/constanses.dart';

//widgets variables
<<<<<<< HEAD
const  double btnHight = 80.0;
const  Color boxColor = Color(0xFF1D1F33);
const  Color boxInactiveColor = Color(0xFF111328);
const  Color secondryColor = Color(0xFFEB1555);
enum Gender{
  male,female,
=======

enum Gender {
  male,
  female,
>>>>>>> 49e7a850ae3e1f7be8d05d69c0c008095855b1d4
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
<<<<<<< HEAD
  
 @override
=======
  int height = 180;
  int weight = 80;
  int age = 30;
  @override
>>>>>>> 49e7a850ae3e1f7be8d05d69c0c008095855b1d4
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
<<<<<<< HEAD
              Expanded( 
                  child:  GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender=Gender.male;
                    });
                  },
                    child: ReuseableCard(
                      colour:selectedGender == Gender.male ? boxColor : boxInactiveColor , 
                       cardChild:IconDrawer(
                        lable: 'Male',
                        icon:FontAwesomeIcons.mars ,
                        ),
                      ),
                  ),
                ),
              
                   Expanded(
                     child:  GestureDetector(
                 onTap: () {
                    setState(() {
                      selectedGender=Gender.female;
                    });
                  },
                    child: ReuseableCard( 
                     colour:selectedGender == Gender.female ? boxColor : boxInactiveColor , 
                      cardChild:  
                      IconDrawer(
                        lable: 'Female',
                        icon:FontAwesomeIcons.venus ,),
                     ),
=======
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
>>>>>>> 49e7a850ae3e1f7be8d05d69c0c008095855b1d4
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
          Container(
            color: kSecondryColor,
            margin: EdgeInsets.only(top: 10.0),
            height: kBtnHight,
            width: double.infinity,
            child: Center(
              child: Text(
                'Calculate Your BMI'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  // fontFamily:
                ),
              ),
            ),
          ),
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

<<<<<<< HEAD
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
=======
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
>>>>>>> 49e7a850ae3e1f7be8d05d69c0c008095855b1d4
