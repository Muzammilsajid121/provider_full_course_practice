import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_full_course_practice/provider/slider_logic.dart.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    //Initialize Provider
    //No NEDD ANY MORE
    // final sliderprovideraccess = Provider.of<SliderProviderLogic>(context, listen: false);

    debugPrint('Whole UI is building');
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         //consumer needs class context
          Consumer<SliderProviderLogic>(
            builder: (context, value, child) => 
            Slider(
              min: 0, max: 1,
              value: value.valuess, 
              onChanged: (newvalue){
                value.updateSliderValue(newvalue) ;
                print(value.valuess);
            
              }),
          ),
            Consumer<SliderProviderLogic>(
              builder: (context, value, child) => 
               Row(
                children: [
                  Expanded(
                    child: Container( height: 100,
                      color: Colors.pinkAccent.withOpacity(value.valuess),
                    ),
                  ),
                  //
                    Expanded(
                    child: Container( height: 100,
                      color: Colors.lightBlue.withOpacity(value.valuess),
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}