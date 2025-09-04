import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_ostad/ui/screens/login_screen.dart';
import 'package:task_management_ostad/ui/utilities/asset_paths.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SvgPicture.asset(
          //   'assets/images/bg.svg',
          //   width: double.maxFinite,
          //   height: double.maxFinite,
          //   fit: BoxFit.cover,
          // ),
          Image.asset(
            AssetPaths.backgroundImage,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
          ),
          Center(child: Image.asset(AssetPaths.logoImage, height: 300)),
          // Center(child: SvgPicture.asset('assets/images/logo.svg')),
        ],
      ),
    );
  }
}

/// after 51.6 min
