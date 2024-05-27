import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_full_course_practice/provider/counter_logic.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
    // //Whole class of CounterProviderLogic is accessed by counerProvider
    final countProvider = Provider.of<CounterProviderLogic>(context, listen: false);
    countProvider.incrementCounter();
    debugPrint("Only this widget is building");
    
     });
  }
  Widget build(BuildContext context) {
  // final height = MediaQuery.sizeOf(context).height *1;
  debugPrint("build");

    // //Whole class of CounterProviderLogic is accessed by counerProvider
    //listen is stoping the widget to build again
    final countProvider = Provider.of<CounterProviderLogic>(context ,listen: false);
    

      return Scaffold(  
      appBar: AppBar(
        title: const Text("Counter Provider"),
        centerTitle: true,
      ),
      body:  Center(
        //Consumer help us to update UI's of that widget only
        //properties of other class can also be accessed by value
        child: Consumer<CounterProviderLogic>( builder: (context, value, child) => 
         Text(countProvider.counter.toString()),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const  Icon(Icons.add),
        onPressed: (){
         countProvider.incrementCounter();
        }),
    );
    
  }
}