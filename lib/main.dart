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
  int _subhanCounter = 0, _alhamedCounter = 0, _akkbarCounter = 0;
  void _incrementCounter(int counterNumber) {
    setState(() {
      switch(counterNumber){
        case 1: _subhanCounter++; break;
        case 2: _alhamedCounter++; break;
        case 3: _akkbarCounter++; break;

      }

    });
  }

  void _earaseAllCounter(){

    setState(() {
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
            const Text('سبحان الله', style: TextStyle(fontSize: 30)),
            Text(
              '$_subhanCounter',
              style: TextStyle(fontSize: 25)
            ),
            ElevatedButton(
              onPressed: (){
                _incrementCounter(1);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Icon(Icons.add),
            ),
            SizedBox(height: 30,),
            const Text('الحمد الله',
            style: TextStyle(fontSize: 30),),

            Text(
              '$_alhamedCounter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ElevatedButton(
              onPressed: (){
                _incrementCounter(2);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Icon(Icons.add),
            ),
            SizedBox(height: 30,),
            const Text('الله أكبر',
                style: TextStyle(fontSize: 30)),
            Text(
              '$_akkbarCounter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ElevatedButton(
              onPressed:(){
                _incrementCounter(3);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
            SizedBox(height: 100,),
            ElevatedButton(
              onPressed: _earaseAllCounter,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Icon(Icons.delete),
            ),
          ],
        ),
      ),

    );
  }
}
