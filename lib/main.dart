import 'package:flutter/material.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

//why are we using change providers ? 
//Why we run : flutter pub add provider 

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ThemeProvider(),
    child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(
        onTap: () {
          
        },
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}