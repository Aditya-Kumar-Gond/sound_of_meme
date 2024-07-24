import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sound_of_meme/HomeScreen.dart';
import 'package:sound_of_meme/Subscription.dart';
import 'package:sound_of_meme/LoginScreen.dart';

class LandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/ss.png'), fit: BoxFit.fill),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 80,),
                Image(image: AssetImage("images/pepe_ps.png")),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Text('Sound',style: TextStyle(fontFamily:'customComic',fontSize: 48,color: Colors.white),),
                    Text('Of',style: TextStyle(fontFamily:'customComic',fontSize: 48,color: Colors.white),),
                    Text('Meme',style: TextStyle(fontFamily:'customComic',fontSize: 48,color: Colors.white),),
                  ],
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: (){
                    print('to loginPage');
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LoginScreen();
                    }));
                  },
                  child: Container(
                    width: 210,
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // boxShadow:
                        borderRadius: BorderRadius.circular(24.0)
                    ),
                    child: Center(child: Text('Get Started',style: TextStyle(
                      fontFamily: 'customComic',

                    ),)),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
