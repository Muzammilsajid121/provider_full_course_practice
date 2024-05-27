import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_full_course_practice/provider/theme_changer_provider.dart';
import 'package:provider_full_course_practice/provider/theme_changer_provider.dart';

class DarkTheme extends StatelessWidget {
  const DarkTheme({Key? key});

  @override
  Widget build(BuildContext context) {
    final themeChangerProvider = Provider.of<ThemeChangerProvider>(context);
  // Access the primary color for dark theme
    Color primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dark Theme"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              themeChangerProvider.changeTheme(ThemeMode.dark);
            },
            icon:const  Icon(Icons.dark_mode),
          ),
          IconButton(
            onPressed: () {
              themeChangerProvider.changeTheme(ThemeMode.light);
            },
            icon: const  Icon(Icons.light_mode),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             // Conditionally apply the ColorFiltered widget based on theme mode
            if (themeChangerProvider.themeMode == ThemeMode.dark)
              ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.srcOver),
                child: Image.asset("images/finala1.png", height: 400),
              )
            else
              Image.asset("images/finala1.png", height: 400),
            //
            Padding(
              padding: const EdgeInsets.fromLTRB(33,123,0,12),
              
              child: Container(
                height: 65,
                width: 170,
                //
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                 color: primaryColor

                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.fromLTRB(82,115,0,0),
             child: const  Text("44", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.black),),
           )
          ],
        ),
      ),
    );
  }
}
