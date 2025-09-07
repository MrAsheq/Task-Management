import 'package:flutter/material.dart';

import 'asset_paths.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetPaths.backgroundImage,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
        ),
        SafeArea(child: child)
      ],
    );
  }
}
