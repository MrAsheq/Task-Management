import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_ostad/ui/screens/forgot_password_email_otp_verify_screen.dart';
import 'package:task_management_ostad/ui/screens/login_screen.dart';
import 'package:task_management_ostad/ui/utilities/screen_background.dart';

class ForgotPassWordEmailVerifyScreen extends StatefulWidget {
  const ForgotPassWordEmailVerifyScreen({super.key});

  @override
  State<ForgotPassWordEmailVerifyScreen> createState() =>
      _ForgotPassWordEmailVerifyScreenState();
}

class _ForgotPassWordEmailVerifyScreenState
    extends State<ForgotPassWordEmailVerifyScreen> {
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
                    "Your Email Address",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "A 6 digit OTP will be send to your email address",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _emailTEController,
                    decoration: InputDecoration(hintText: 'EMAIL'),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: FilledButton(
                      onPressed: _onTapOTPButton,
                      child: Icon(Icons.email),
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
  void _onTapOTPButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgotPassWordEmailOTPVerifyScreen()),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
