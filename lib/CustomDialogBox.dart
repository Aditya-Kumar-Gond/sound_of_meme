import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sound_of_meme/Constants.dart';
import 'package:sound_of_meme/Subscription.dart';
import 'package:sound_of_meme/Subscription2.dart';

class CustomDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: SingleChildScrollView(
        child: Container(
          height: 360,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color(0xFF343434),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Submit your song here!',
                style: TextStyle(
                  fontFamily: Constants.customFont,
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    child: TextField(
                      maxLines: 5,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type here.....',
                        hintStyle: TextStyle(color: Colors.grey,fontFamily: Constants.customFont),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return ProgressDialog();
                    //  Navigator.of(context).pop();
                    },
                  );

                  // Future.delayed(Duration(seconds: 10), () {
                  //   Navigator.of(context).pop();
                  // });
        
                },
                child: Center(child: Text('Create',style: TextStyle(fontFamily: Constants.customFont,color: Colors.black,fontSize: 20),)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  //onPrimary: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
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

class ProgressDialog extends StatefulWidget {
  @override
  _ProgressDialogState createState() => _ProgressDialogState();
}

class _ProgressDialogState extends State<ProgressDialog> {
  double progress = 0.0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        progress += 0.05; // Update progress by 5% each second
        if (progress >= 1.0) {
          timer.cancel();
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SubscriptionScreen2();
          })); // Close the custom dialog box
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircularProgressIndicator(value: progress),
            SizedBox(height: 16.0),
            const Text(
              'Creating...',
              style: TextStyle(fontSize: 18.0,fontFamily: Constants.customFont),
            ),
            SizedBox(height: 8.0),
            LinearProgressIndicator(value: progress),
            SizedBox(height: 8.0),
            Text('${(progress * 100).toStringAsFixed(0)}%'),
            SizedBox(height: 8.0),
            Text('Please wait while we create your song!',style: TextStyle(fontFamily: Constants.customFont),),
            SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}