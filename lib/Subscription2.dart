import 'package:flutter/material.dart';
import 'package:sound_of_meme/Constants.dart';

import 'HomeScreen.dart';

class SubscriptionScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF9A9B95),
                  Color(0xFF222931),
                ],begin: Alignment.topCenter,end: Alignment.bottomCenter)
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(

                  children: [
                    const Image(image: AssetImage('images/pur.png'),width: 200,height: 200,),
                    const SizedBox(height: 50),
                    Text(
                      'Plz subscribe to get your song',
                      style: TextStyle(
                        fontFamily: Constants.customFont,
                        color: Colors.red,
                        fontSize: 24,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red
                      ),
                    ),
                    SizedBox(height: 30,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sound of Meme ',
                          style: TextStyle(
                            fontFamily: Constants.customFont,
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          'Pro',
                          style: TextStyle(
                            fontFamily: Constants.customFont,
                            color: Color(0xFF55C2D1),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(image: AssetImage('images/voice.png')),
                              Text(
                                '  Listen to custom mixes',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: Constants.customFont,
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(image: AssetImage('images/add.png')),
                              SizedBox(height: 10),
                              Text(
                                '  Access all custom sound and memes',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: Constants.customFont,
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(left: 20,right: 20),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF34514F),
                        border: Border.all(width: 1,color: Color(0xFF55C2D1)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image(image: AssetImage('images/selected_btn.png')),
                              SizedBox(width: 10,),
                              Text(
                                'Weekly',
                                style: TextStyle(
                                  fontFamily: Constants.customFont,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '₹390.00/week',
                            style: TextStyle(
                              fontFamily: Constants.customFont,
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 60,
                      margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          color: Color(0xFF55C2D1),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Center(child: Text('Start 3-Day Free Trial',style: TextStyle(fontFamily: Constants.customFont,fontSize: 16,color: Colors.black),)),
                    ),
                    const Text(
                      'Then  ₹390.00, billed weekly',
                      style: TextStyle(
                        fontFamily: Constants.customFont,
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return HomeScreen();
                        }));
                        // Handle "Not Now" action
                      },
                      child: const Text(
                        'Not Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: Constants.customFont,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}