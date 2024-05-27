
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_full_course_practice/Screens/counter_example.dart';
import 'package:provider_full_course_practice/Screens/dark_theme.dart';
import 'package:provider_full_course_practice/Screens/slider_example.dart';
import 'package:provider_full_course_practice/provider/counter_logic.dart';
import 'package:provider_full_course_practice/provider/slider_logic.dart.dart';
import 'package:provider_full_course_practice/provider/theme_changer_provider.dart';

//FOR ONR PROVDER

// void main() {
  // runApp(
  // //Now the CounterProviderLogic class has gain global context
  //   ChangeNotifierProvider(
  //     create: (context)=> CounterProviderLogic(), 
  //     child:  const  MyApp() 
  //      )
  // );   

//FOR MULTIPLE PROVIDERS
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProviderLogic()),
        ChangeNotifierProvider(create: (context) => SliderProviderLogic()),
        ChangeNotifierProvider(create: (context) => ThemeChangerProvider()),

      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider',
      themeMode: Provider.of<ThemeChangerProvider>(context).themeMode,
      //DARK
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent.withOpacity(0.1)),
        useMaterial3: true,
      ),
      home: const  DarkTheme(),
    );
  }
}