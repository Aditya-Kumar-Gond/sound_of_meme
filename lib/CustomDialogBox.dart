import 'package:flutter/material.dart';
import 'package:sound_of_meme/Constants.dart';

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
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color(0xFF343434),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
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
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return ProgressDialog();
                    },
                  );
                  Navigator.of(context).pop();
                  // Simulate a download process
                  Future.delayed(Duration(seconds: 10), () {
                    Navigator.of(context).pop(); // Close the progress dialog
                    // Close the custom dialog box
                  });
        
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

class ProgressDialog extends StatelessWidget {
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
            CircularProgressIndicator(),
            SizedBox(height: 16.0),
            Text(
              'Downloading...',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text('Please wait while we complete your download.'),
          ],
        ),
      ),
    );
  }
}