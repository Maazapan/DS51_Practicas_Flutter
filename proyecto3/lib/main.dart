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
      home: const MyHomePage(title: 'Identificacion'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title)), // Center the title
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
        
            Padding(
              padding: EdgeInsets.only(top:200),
              child: Text("Roberto Barrios Negrete",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            ),

            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Text("33")
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Text("27/12")
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Text("MEX")
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: Text("EDAD")
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 15),
                  child: Text("FDN")
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 15),
                  child: Text("NAC")
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [

                Padding(
                  padding: EdgeInsets.only(left: 20, top: 25),
                  child: ElevatedButton(
                  onPressed: null, 
                  child: Text("Ver +")
                  )
                )

,                Padding(
                  padding: EdgeInsets.only(left: 20, top: 25),
                  child: ElevatedButton(
                  onPressed: null, 
                  child: Text("Links")
                  )
                )
              ]
            )
          ],
        ),      
      ),

      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.arrow_circle_up)
        )
    );
  }
}
