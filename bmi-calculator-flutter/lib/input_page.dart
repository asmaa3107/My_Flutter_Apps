import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/reuseableCard_widget.dart';
import 'widgets/icon_drawer_widget.dart';
//widgets variables
const  double btnHight = 80.0;
const  Color boxColor = Color(0xFF1D1F33);
const  Color boxInactiveColor = Color(0xFF111328);
const  Color secondryColor = Color(0xFFEB1555);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardCoulor   = boxInactiveColor;
  Color femaleCardCoulor = boxInactiveColor;
  //1 for male 2 for woman
void updateColor(int gender){
  if (gender==1){
    if (maleCardCoulor== boxInactiveColor)
         { maleCardCoulor=boxColor;
          femaleCardCoulor=boxInactiveColor;}
    else maleCardCoulor = boxInactiveColor;
  }
  else if(gender==2){
 if (femaleCardCoulor== boxInactiveColor)
        {  femaleCardCoulor=boxColor;
          maleCardCoulor=boxInactiveColor;
        }
    else femaleCardCoulor = boxInactiveColor;
  }
}
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor:Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            // flex: 1,
            child: Row(
              children: <Widget>[
              Expanded( 
                  child:  GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                    child: ReuseableCard(
                      colour:maleCardCoulor , 
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
                      updateColor(2);
                    });
                  },
                    child: ReuseableCard( 
                      colour: femaleCardCoulor,
                      cardChild:  
                      IconDrawer(
                        lable: 'Female',
                        icon:FontAwesomeIcons.venus ,),
                     ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // flex: 2,
            child: ReuseableCard( colour: boxColor
                   ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard( colour: boxColor
                   ),
                ),
                Expanded(
                  child: ReuseableCard( 
                    colour: boxColor
                   ),
                ),
              
              ],
            ),
          ),
          Container(
                   color: secondryColor,
                   margin: EdgeInsets.only(top: 10.0),
                   height: btnHight,
                   width: double.infinity,
                   child: Center(
                     child: Text
                     (
                       'Calculate Your BMI'.toUpperCase(),
                        style:TextStyle(
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