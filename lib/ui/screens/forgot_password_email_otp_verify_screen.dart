import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_ostad/ui/screens/login_screen.dart';
import 'package:task_management_ostad/ui/utilities/screen_background.dart';

class ForgotPassWordEmailOTPVerifyScreen extends StatefulWidget {
  const ForgotPassWordEmailOTPVerifyScreen({super.key});

  @override
  State<ForgotPassWordEmailOTPVerifyScreen> createState() =>
      _ForgotPassWordEmailOTPVerifyScreenState();
}

class _ForgotPassWordEmailOTPVerifyScreenState
    extends State<ForgotPassWordEmailOTPVerifyScreen> {
  //logic build
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 90),
                  Text(
                    "OTP Verification",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "A 6 digit OTP sent to your email address",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey
                    ),
                  ),
                  const SizedBox(height: 24),

                  ///from here will be start.... 1.01
                  // PinCodeTextField(
                  //   length: 6,
                  //   obscureText: false,
                  //   animationType: AnimationType.fade,
                  //   pinTheme: PinTheme(
                  //     shape: PinCodeFieldShape.box,
                  //     borderRadius: BorderRadius.circular(5),
                  //     fieldHeight: 50,
                  //     fieldWidth: 40,
                  //     activeFillColor: Colors.white,
                  //   ),
                  //   animationDuration: Duration(milliseconds: 300),
                  //   backgroundColor: Colors.blue.shade50,
                  //   enableActiveFill: true,
                  //   errorAnimationController: errorController,
                  //   controller: textEditingController,
                  //   onCompleted: (v) {
                  //     print("Completed");
                  //   },
                  //   onChanged: (value) {
                  //     print(value);
                  //     setState(() {
                  //       currentText = value;
                  //     });
                  //   },
                  //   beforeTextPaste: (text) {
                  //     print("Allowing to paste $text");
                  //     //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //     //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  //     return true;
                  //   },
                  // ),
                  const SizedBox(height: 24),
                  Center(
                    child: FilledButton(
                      onPressed: () {},
                      child: Icon(Icons.add_circle),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        text: "Already have an account? ",
                        children: [
                          TextSpan(
                            text: "Log In",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTapLoginButton,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapLoginButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
