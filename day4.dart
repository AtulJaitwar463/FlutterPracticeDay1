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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  @override
  Widget build(BuildContext context) {
    var arrnames = ['Atul', 'Shubham', 'Nirmal', 'Harsh', 'asheesh'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Flutter Container"),
        ),
        body:
//------------------------------Spiliting App into Widgets--------------------
            Container(
          child: Column(
            children: [
              CatItems(),
              CatItems1(),
              CatItems2(),

              // Expanded(
              //   flex: 2,
              //   child: Container(
              //     //height: 200,
              //     color: Colors.blue,
              //     child: ,
              //   ),
              // ),
            ],
          ),
        ));
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
          // height: 200,
          color: Colors.green,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(11),
              child: SizedBox(
                width: 200,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}

class CatItems1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
          // height: 200,
          color: Colors.red,
          child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      title: Text('Name'),
                      subtitle: Text('Mobile no.'),
                      trailing: Icon(Icons.delete),
                    ),
                  ))),
    );
  }
}

class CatItems2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
          //height: 200,
          color: Colors.orange,
          child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
