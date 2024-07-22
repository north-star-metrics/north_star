import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF030F33),
      appBar: AppBar(
        backgroundColor: Color(0xFF030F33),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
            color: Colors.white,),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.15,
            ),
            SizedBox(
              height: screenHeight * 0.15,
              width: screenWidth * 0.3,
              child: Image(image: AssetImage('assets/images/verification.png'),
                          fit: BoxFit.contain,
              ),
            ),
            Text('Verification Code',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            Text('Please type the verification code',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),
            ),
            Text('to axxxx@xxxxx.com',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ),
            ),
            SizedBox(
              height: (0.016677228911644 * screenHeight),
            ),
            PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (value) {
                print(value);
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(3),
                fieldHeight: (0.0466962409526033 * screenHeight),
                fieldWidth: (0.0466962409526033 * screenHeight),
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                selectedColor: Colors.white,
              ),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              backgroundColor: Colors.transparent,
              textStyle: TextStyle(color: Colors.black),
              enableActiveFill: true,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Didn't receive a code? ",
                    style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
                  ),
                  TextSpan(
                    text: "Resend code",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: (0.016677228911644 * screenHeight),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                color: Color(0xFF16D5FF),
                width: screenWidth * 0.35,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Verify',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
