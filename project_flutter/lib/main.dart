//Dependency Material 3
import 'package:flutter/material.dart';
import 'package:project_flutter/screens/app_count_screen.dart';

//Point Start
void main() => runApp(const AppMain());

//Define Screen Main
class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppCountScreen(),
    );
  }
}
