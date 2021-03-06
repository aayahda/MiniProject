import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myplasticpays/Components/textfield.dart';

import 'LoginScreen.dart';
import 'MainScreen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:15,left: 35,right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120,),
            Text("Create New Account",style: TextStyle(color:Color(0xff1c60ff),fontSize: 27,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Text("Create an account so you can redeem your rewards ",style: TextStyle(color: Colors.black54,fontSize: 17),),
            SizedBox(height: 35,),
            TextInpField("Username", TextInputType.text, false),
            SizedBox(height: 15,),
            TextInpField("Email", TextInputType.emailAddress, false),
            SizedBox(height: 15,),
            TextInpField("Password", TextInputType.text, true),
            SizedBox(height: 140,),
            SizedBox(
              child: Center(
                child: Container(
                  width: 270,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black38,
                        blurRadius:10,
                        offset: Offset(0,3),
                        spreadRadius: 1,
                      )],
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff1c60ff),
                    ),
                    child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));}, child: Text("Create Account",style: TextStyle(color: Colors.white),))),
              ),
            ),
            SizedBox(height: 140,),
            Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                            color: Colors.black, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(text: ' Login',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 14),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                                }
                          )
                        ]
                    ),
                  ),
                )
            )



          ],

        ),
      ),
    );
  }
}
