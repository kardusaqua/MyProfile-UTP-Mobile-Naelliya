import 'package:flutter/material.dart';
import 'package:utp_mobile/WelcomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome screen',
      home: Scaffold(
        backgroundColor: Color(0xff2d3440),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                height: 250,
                width: 250,
                child: Image.asset('asset/logopro.png'),
              ),
              const SizedBox(
                height: 25.54,
              ),
              Text(
                'Make Your Own Personal Branding',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff919191),
                ),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xff2d3447),
                    onPrimary: Colors.white,
                    minimumSize: Size(240.0, 40.0),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  textStyle: GoogleFonts.poppins(
                    fontSize: 18.0,
                  ),
                  side: BorderSide(width: 1.0, color: Colors.white),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
