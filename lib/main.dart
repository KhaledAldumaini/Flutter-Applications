import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _subhanCounter = 0, _alhamedCounter = 0, _akkbarCounter = 0, _mainCounter = 0;
  String _titleText = "ابدأ الذكر"; // the main title

  void _incrementCounter(int counterNumber) {
    setState(() {
      switch(counterNumber){
        case 1: _subhanCounter++; _mainCounter = _subhanCounter; _titleText = "سبحان الله"; break;
        case 2: _alhamedCounter++; _mainCounter = _alhamedCounter; _titleText = "الحمدلله"; break;
        case 3: _akkbarCounter++;  _mainCounter = _akkbarCounter; _titleText = "الله أكبر";break;

      }

    });
  }

  void _earaseAllCounter(){

    setState(() {
      _titleText = "ابدأ الذكر";
      _mainCounter = 0;
      _subhanCounter = 0;
      _alhamedCounter = 0;
      _akkbarCounter = 0;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.orangeAccent,

        title: Center(child: Text('المسبحة الإلكترونية')),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_titleText, style: TextStyle(fontSize: 40),),

              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$_mainCounter", style: TextStyle(fontSize: 30),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                        _incrementCounter(1);},
                    child: Text("سبحان الله", style: TextStyle(fontSize: 20),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange)
                  ),
                  SizedBox(width: 15,),
                  ElevatedButton(
                      onPressed: (){
                        _incrementCounter(2);},
                      child: Text("الحمد الله", style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange)
                  ),
                  SizedBox(width: 15,),
                  ElevatedButton(
                      onPressed: (){
                        _incrementCounter(3);},
                      child: Text("  الله أكبر", style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orange)
                  )
                ],
            ),
            SizedBox(height: 70,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

              ElevatedButton(
                onPressed: _earaseAllCounter,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Icon(Icons.delete),
              ),
            ],),
            SizedBox(height: 70,),
            Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$_subhanCounter", style: TextStyle(fontSize: 25),),
                    Text("  : سبحان الله", style: TextStyle(fontSize: 20),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$_alhamedCounter", style: TextStyle(fontSize: 25),),
                    Text("  :   الحمد الله", style: TextStyle(fontSize: 20),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$_akkbarCounter", style: TextStyle(fontSize: 25),),
                    Text("  :     الله أكبر", style: TextStyle(fontSize: 20),),
                  ],
                )
              ],
            )
            

          ],
        ),
      ),

    );
  }
}
