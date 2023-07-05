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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Counter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Test App",
        home: Scaffold(
            backgroundColor: Colors.grey.shade200,
          appBar: AppBar(title:const Text("Counter App")),
          floatingActionButton: Wrap( //will break to another line on overflow
            direction: Axis.horizontal, //use vertical to show  on vertical axis
            children: <Widget>[
              Container(
                  margin:const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: (){
                      _decrementCounter();//action code for button 1
                    },
                    backgroundColor: Colors.lightBlueAccent,

                    child: const Icon(Icons.remove),
                  )
              ), //button first

              Container(
                  margin:const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: (){
                      _incrementCounter();//action code for button 2
                    },
                    backgroundColor: Colors.deepPurpleAccent,

                    child: const Icon(Icons.add),
                  )
              ), // button second

              // Add more buttons here
            ],
          ),
          body: Container(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                const Text("You have pushed the button this many times:"),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
              )
            ),
          )
        )
    );
  }
}
