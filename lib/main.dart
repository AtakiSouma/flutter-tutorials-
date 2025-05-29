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
      debugShowCheckedModeBanner: false,
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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.greenAccent,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: Icon(Icons.access_alarms_sharp),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/wuwa-carth.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "Carthetiya",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.account_balance_wallet_outlined),
              tileColor:  Colors.amber,
              title: Text("nam"),
              trailing: Text("hiiiiiiiiiiiiiiiii"),
              onTap: () {
                print("onfunction");
              },
            ),
          ],
        ),
      ),
      //  Image.network(
      //   'https://static.toiimg.com/thumb/msid-121102346,width-1280,height-720,resizemode-4/121102346.jpg',
      //   height: double.infinity,
      //   fit: BoxFit.cover,
      //  ),
      //Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      //  child: Column(
      // Column is also a layout widget. It takes a list of children and
      // arranges them vertically. By default, it sizes itself to fit its
      // children horizontally, and tries to be as tall as its parent.
      //
      // Column has various properties to control how it sizes itself and
      // how it positions its children. Here we use mainAxisAlignment to
      // center the children vertically; the main axis here is the vertical
      // axis because Columns are vertical (the cross axis would be
      // horizontal).
      //
      // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      // action in the IDE, or press "p" in the console), to see the
      // wireframe for each widget.
      // mainAxisAlignment: MainAxisAlignment.center,
      //   child:
      //    Container(
      //     color: Colors.amber,
      //     padding: EdgeInsets.all(24.0),

      //     // width: double.infinity,
      //     child: Column(
      //       // mainAxisAlignment: MainAxisAlignment.center,
      //       // crossAxisAlignment: CrossAxisAlignment.end,
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Container(
      //           height: 100.0,
      //           width: 100.0,
      //           padding: EdgeInsets.all(4.0),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(24.0),
      //             color: Colors.greenAccent,
      //           ),
      //           child: Text(
      //             'Hello flutter',
      //             style: TextStyle(color: Colors.amber),
      //           ),
      //         ),
      //         Container(
      //           height: 100.0,
      //           width: 100.0,
      //           padding: EdgeInsets.all(4.0),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(24.0),
      //             color: Colors.lightBlue,
      //           ),
      //           child: Text(
      //             'Hello flutter',
      //             style: TextStyle(color: Colors.amber),
      //           ),
      //         ),
      //         Container(
      //           color: (Colors.purpleAccent),
      //           padding: EdgeInsets.all(4.0),

      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Container(
      //                 height: 50.0,
      //                 width: 50.0,
      //                 padding: EdgeInsets.all(4.0),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(24.0),
      //                   color: Colors.redAccent,
      //                 ),
      //                 child: Text('row', style: TextStyle(color: Colors.amber)),
      //               ),
      //               Container(
      //                 height: 50.0,
      //                 width: 50.0,
      //                 padding: EdgeInsets.all(4.0),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(24.0),
      //                   color: Colors.redAccent,
      //                 ),
      //                 child: Text('row', style: TextStyle(color: Colors.amber)),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),

      //   // children: <Widget>[
      //   //   const Text(
      //   //     'You have push333ed r3r3r3r3r3r3r323f3f3f3f3f32f3f3 the button this many times:',
      //   //   ),
      //   //   Text(
      //   //     '$_counter',
      //   //     style: Theme.of(context).textTheme.headlineMedium,
      //   //   ),
      //   // ],
      //   //    ),
      // ),
      //  floatingActionButton: FloatingActionButton(
      //    onPressed: _incrementCounter,
      //    tooltip: 'Increment',
      //    child: const Icon(Icons.add),
      //   ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
