import 'package:flutter/material.dart';
import 'package:meat_selling_app/ui/root_page.dart';
import 'package:meat_selling_app/ui/screens/home_page.dart';

import 'ui/onboarding_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Onboarding Screen',
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
