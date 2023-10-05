import 'package:flutter/material.dart';
import 'package:one_tile_text_field/screens/screen_login.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({super.key});

  @override
  Widget build(BuildContext context) {
    return loginScreen(context: context);
  }
}
