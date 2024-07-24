import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sound_of_meme/Constants.dart';
import 'package:sound_of_meme/CustomDialogBox.dart';

import 'Subscription.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF000000),
                  Color(0xFF103552),
                ],begin: Alignment.topCenter,end: Alignment.bottomCenter)
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hello!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 64,
                            fontFamily: Constants.customFont,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png')
                        ),
                      ],
                    ),
                    Text(
                      'Aditya Gond',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: Constants.customFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF398CD0),
                            Color(0xFF4797D6),
                            Color(0xFF5EA6E0),
                            Color(0xFF5EA9E4),
                            Color(0xFFFFFFFF),
                            Color(0xFFFFFFFF),
                          ]
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SoundOfMeme!',
                                style: TextStyle(
                                  fontFamily: Constants.customFont,
                                  color: Colors.white,
                                  decorationColor: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Where Memes meet the beat!,',
                                style: TextStyle(
                                  fontFamily: Constants.customFont,
                                  color: Colors.blue[900],
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'Be the fullutime paid member',
                                style: TextStyle(
                                  fontFamily: Constants.customFont,
                                  color: Colors.blue[900],
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'by joining us',
                                style: TextStyle(
                                  fontFamily: Constants.customFont,
                                  color: Colors.blue[900],
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return SubscriptionScreen();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black, // Background color
                                  ),
                                  child: Text(
                                    'Join now',
                                    style: TextStyle(
                                        fontFamily: Constants.customFont,color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Image(
                              image: AssetImage('images/cheer_pepe.png'),height: 166,width: 107
                              ,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Text(
                        'Previous creation',
                        style: TextStyle(
                          fontFamily: Constants.customFont,
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomDialogBox();
                          },
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 50,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}


