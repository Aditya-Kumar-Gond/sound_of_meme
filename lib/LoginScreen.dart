import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sound_of_meme/HomeScreen.dart';
import 'package:sound_of_meme/Subscription.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF000000),
                Color(0xFF081927),
                Color(0xFF0F324E),
                Color(0xFF1F649B),
              ],begin: Alignment.topCenter,end: Alignment.bottomCenter)
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('images/login_pepe.jpg'),height: 240,),
                  const SizedBox(height: 50),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: const TextStyle(
                          fontFamily: 'customComic',
                          fontSize: 16,
                          color: Colors.white
                      ),
                      hintText: 'Enter User name or Email-ID',
                      hintStyle: GoogleFonts.comicNeue(color: Colors.white70),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: GoogleFonts.comicNeue(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'customComic',
                          fontSize: 16,
                          color: Colors.white
                      ),
                      hintText: 'Enter Password',
                      hintStyle: GoogleFonts.comicNeue(color: Colors.white70),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: GoogleFonts.comicNeue(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'customComic',
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SubscriptionScreen();
                      }));
                    },
                    child: Text('Login', style: TextStyle(
                        fontFamily: 'customComic',
                        fontSize: 20,
                        color: Colors.black
                    )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    ),
                  ),
                  SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('images/start.png'),),
                      SizedBox(height: 20),
                      Text(
                        ' Or continue with ',
                        style: TextStyle(
                            fontFamily: 'customComic',
                            fontSize: 16,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 20),
                      Image(image: AssetImage('images/end.png'),),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image(
                            image: AssetImage('images/google.png'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image(
                            image: AssetImage('images/twitter.png'),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image(
                            image: AssetImage('images/fb.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Register for new account',
                      style: TextStyle(
                          fontFamily: 'customComic',
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}