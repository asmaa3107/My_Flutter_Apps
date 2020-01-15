import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
        child: Column(
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 60.0,
                            backgroundImage: AssetImage('images/me.jpg'),
                          ),
                          SizedBox(
                            height: 20.0,
                           ),
                          Text(
                            'Asmaa Ahmed ElSwafy',
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 25.0,
                              fontFamily: 'Righteous',
                            ),
                          ),
                          Text( 
                            'Full stack Developer',
                            style:TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 20.0,
                              fontFamily:'Quicksand',
                              fontWeight:FontWeight.w800,
                            ),
                          ),
                             SizedBox(
                                  height: 20.0,
                                  width: 290.0,
                                  child: Divider(
                                    color: Colors.white,
                                  ),
                                ),
                            Card(
                              margin:EdgeInsets.symmetric(vertical: 0.0,horizontal: 40.0) ,
                            color: Colors.white,
                            child: ListTile(
                              leading:  Icon(
                                     Icons.phone,
                                     color: Colors.black,
                                     size: 30.0,
                                   ),
                                  
                              title:    Text(
                                     '+20 127 4749 409',
                                     style: TextStyle(
                                        fontSize: 20.0

                                     ),
                                     
                                   ),
                             

                            ),
                            
                          ),
                         SizedBox(
                                  height: 20.0,
                                                       
                                ),
                             Card(
                                margin:EdgeInsets.symmetric(vertical: 0.0,horizontal: 40.0) ,
                            color: Colors.white,
                            // padding: EdgeInsets.all(10.0),
                            child:ListTile(
                              leading:  Icon(
                                     Icons.email,
                                     color: Colors.black,
                                     size: 20.0,
                                   ),
                                title:Text(
                                     'asmaa3107@gmail.com',
                                     style: TextStyle(
                                        fontSize: 25.0
                                     ),
                                   ),
                            
                            ),
                          
                          ), 

                        ], 
                      ),
                 
        ),
      ),
    );
  }
}


 
    // Card(
    //                           margin:EdgeInsets.symmetric(vertical: 0.0,horizontal: 33.0) ,
    //                         color: Colors.white,
    //                         child: Padding(
    //                           padding: EdgeInsets.all(15.0),
                              
    //                           child: Row(
                                
    //                              children: <Widget>[
    //                                Icon(
    //                                  Icons.phone,
    //                                  color: Colors.black,
    //                                  size: 30.0,
    //                                ),
    //                                SizedBox(
    //                                  width: 10.0,
    //                                ),
    //                                Text(
    //                                  '+20 127 485 963',
    //                                  style: TextStyle(
    //                                     fontSize: 25.0

    //                                  ),
                                     
    //                                )
    //                              ],
    //                           ),
    //                         ),
                            
    //                       ),
                        /////