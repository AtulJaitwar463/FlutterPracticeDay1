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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amberAccent,
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                // borderRadius: BorderRadius.circular(21),
                border: Border.all(width: 2, color: Colors.black),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 51, color: Colors.green, spreadRadius: 21)
                ],
                shape: BoxShape.circle,
              ),
            ),
          ),
        )

        //-----------------ListView----------------------------
        //  ListView.separated(
        //   itemBuilder: (context, index) {
        //     return Text(arrnames[index],
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500));
        //   },
        //   itemCount: arrnames.length,
        //   separatorBuilder: (context, index) {
        //     return Divider(
        //       height: 100,
        //       thickness: 2,
        //     );
        //   },
        // )
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'One',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w100),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'two',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w100),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'three',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w100),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Four',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w100),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text(
        //         'Five',
        //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w100),
        //       ),
        //     )
        //   ],
        // )

        //-------------------ScrollView-----------------------
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: SingleChildScrollView(
        //             scrollDirection: Axis.horizontal,
        //             child: Row(
        //               children: [
        //                 Container(
        //                   margin: EdgeInsets.only(right: 11),
        //                   width: 200,
        //                   height: 200,
        //                   color: Colors.amberAccent,
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.only(right: 11),
        //                   width: 200,
        //                   height: 200,
        //                   color: Colors.orangeAccent,
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.only(right: 11),
        //                   width: 200,
        //                   height: 200,
        //                   color: Colors.green,
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.only(right: 11),
        //                   width: 200,
        //                   height: 200,
        //                   color: Colors.red,
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.only(right: 11),
        //                   width: 200,
        //                   height: 200,
        //                   color: Colors.blue,
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(bottom: 11),
        //           width: 200,
        //           height: 200,
        //           color: Colors.orangeAccent,
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(bottom: 11),
        //           width: 200,
        //           height: 200,
        //           color: Colors.green,
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(bottom: 11),
        //           width: 200,
        //           height: 200,
        //           color: Colors.red,
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(bottom: 11),
        //           width: 200,
        //           height: 200,
        //           color: Colors.blue,
        //         )
        //       ],
        //     ),
        //   ),
        // )

        //---------------------InkWell------------------------------
        // Center(
        //     child: InkWell(
        //   onTap: () {
        //     print("Clicked");
        //   },
        //   onLongPress: () {
        //     print("ME i");
        //   },
        //   child: Container(
        //     width: 200,
        //     height: 300,
        //     color: Colors.amberAccent,
        //     child: Center(
        //       child: InkWell(
        //         onTap: () {
        //           print("Tapped");
        //         },
        //         child: Text("Click me",
        //             style:
        //                 TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        //       ),
        //     ),
        //   ),
        // ))
        //----------------------Clumn And Row----------------------
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           'r1',
        //           style: TextStyle(fontSize: 25),
        //         ),
        //         Text(
        //           'r2',
        //           style: TextStyle(fontSize: 25),
        //         ),
        //         Text(
        //           'r3',
        //           style: TextStyle(fontSize: 25),
        //         ),
        //         Text(
        //           'r4',
        //           style: TextStyle(fontSize: 25),
        //         ),
        //       ],
        //     ),
        //     Text(
        //       'A',
        //       style: TextStyle(fontSize: 25),
        //     ),
        //     Text(
        //       'b',
        //       style: TextStyle(fontSize: 25),
        //     ),
        //     Text(
        //       'c',
        //       style: TextStyle(fontSize: 25),
        //     ),
        //     Text(
        //       'd',
        //       style: TextStyle(fontSize: 25),
        //     ),
        //   ],
        // )

        //------------------Image---------------------
        //Center(child: Image.asset('assets/images/images.png'))

        //------------------Button Outlined--------------------------
        //  OutlinedButton(
        //   child: Text("Outlined button"),
        //   onPressed: () {
        //     print("Button Pressed");
        //   },
        // )

        //--------------------Elevated Button---------------------
        //     ElevatedButton(
        //   child: Text("Elevated Button"),
        //   onPressed: () {
        //     print("Button Elevated");
        //   },
        // )

        //----------------------Text Button----------------------
        // TextButton(
        //   child: Text('Click Here'),
        //   onPressed: () {
        //     print("Text button Tapped");
        //   },
        //   onLongPress: () {
        //     print("LongPressed");
        //   },
        // )

        //-----------------------------Text---------------------
        // Text(
        //   "Hello atul",
        //   style:
        //   TextStyle(
        //       color: Colors.amberAccent,
        //       fontWeight: FontWeight.bold,
        //       backgroundColor: Colors.deepOrange),
        // ),

        //---------------Center---------------------
        // Center(
        //   child: Container(
        //     width: 200,
        //     height: 100,
        //     color: Colors.blue,
        //     child: Center(
        //       child: Text(
        //         'This is container',
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     ),
        //   ),
        // )
// --------------------------Container------------------------
        // Center(
        //   //container
        //   child: Container(
        //     width: 100,
        //     height: 100,
        //     color: Colors.limeAccent,
        //     child: Text("Hello Developer"),
        //   ),
        // ),
        );
  }
}
