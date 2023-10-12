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
  var time = DateTime.now();

  callBack() {
    print("Clicked me");
  }

  @override
  Widget build(BuildContext context) {
    var arrnames = ['Atul', 'Shubham', 'Nirmal', 'Harsh', 'asheesh'];
    var arrcolor = [
      Colors.amber,
      Colors.green,
      Colors.orange,
      Colors.red,
      Colors.purple,
      Colors.grey,
      Colors.blue,
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Flutter Container"),
        ),
        body: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
            Container(
              width: 160,
              height: 160,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 60,
              height: 60,
              color: Colors.orange,
            ),
          ],
        )

//----------------GridView------------------------------
        //     GridView.builder(
        //   itemBuilder: (context, index) {
        //     return Container(
        //       color: arrcolor[index],
        //     );
        //   },
        //   itemCount: arrcolor.length,
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        // )

        // Column(
        //   children: [
        //     Container(
        //       height: 200,
        //       child: GridView.count(
        //         crossAxisCount: 4,
        //         crossAxisSpacing: 11,
        //         mainAxisSpacing: 11,
        //         children: [
        //           Container(
        //             color: arrcolor[0],
        //           ),
        //           Container(
        //             color: arrcolor[1],
        //           ),
        //           Container(
        //             color: arrcolor[2],
        //           ),
        //           Container(
        //             color: arrcolor[3],
        //           ),
        //           Container(
        //             color: arrcolor[4],
        //           ),
        //           Container(
        //             color: arrcolor[5],
        //           ),
        //           Container(
        //             color: arrcolor[6],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       height: 100,
        //     ),
        //     Container(
        //       height: 200,
        //       child: GridView.extent(
        //         maxCrossAxisExtent: 50,
        //         crossAxisSpacing: 11,
        //         mainAxisSpacing: 11,
        //         children: [
        //           Container(
        //             color: arrcolor[0],
        //           ),
        //           Container(
        //             color: arrcolor[1],
        //           ),
        //           Container(
        //             color: arrcolor[2],
        //           ),
        //           Container(
        //             color: arrcolor[3],
        //           ),
        //           Container(
        //             color: arrcolor[4],
        //           ),
        //           Container(
        //             color: arrcolor[5],
        //           ),
        //           Container(
        //             color: arrcolor[6],
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // )

        //--------------  Call by Function
        // ElevatedButton(
        //   onPressed: callBack,
        //   child: Text("Click me"),
        //   )

//----------------Date Pikcker-----------------------------
        //  Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         'Select Date',
        //         style: TextStyle(fontSize: 25),
        //       ),
        //       ElevatedButton(
        //         onPressed: () async {
        //           DateTime? datePicked = await showDatePicker(
        //               context: context,
        //               initialDate: DateTime.now(),
        //               firstDate: DateTime(2021),
        //               lastDate: DateTime(2023));

        //           if (datePicked != null) {
        //             print('Date selected :  ${datePicked.day}');
        //           }
        //         },
        //         child: Text("Show"),
        //       ),
        //       ElevatedButton(
        //         onPressed: () async {
        //           TimeOfDay? timePicked = await showTimePicker(
        //               context: context,
        //               initialTime: TimeOfDay.now(),
        //               initialEntryMode: TimePickerEntryMode.input);

        //           if (timePicked != null) {
        //             print(
        //                 'time selected :  ${timePicked.hour}: ${timePicked.minute}');
        //           }
        //         },
        //         child: Text("Show"),
        //       )
        //     ],
        //   ),
        // )
//---------------Date Format------------------
        //  Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     child:

        //     Column(
        //       children: [
        //         Text(
        //           'CurrntTime : ${DateFormat('Hms').format(time)}',
        //           style: TextStyle(fontSize: 25),
        //         ),
        //         ElevatedButton(
        //             onPressed: () {
        //               setState() {}
        //             },
        //             child: Text("Current Time"))
        //       ],
        //     ),
        //   ),
        // )

        //---------------------Current Time And Date---------------
        // Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     child:

        //     Column(
        //       children: [
        //         Text(
        //           'CurrntTime : ${time.year}',
        //           style: TextStyle(fontSize: 25),
        //         ),
        //         ElevatedButton(
        //             onPressed: () {
        //               setState() {}
        //             },
        //             child: Text("Current Time"))
        //       ],
        //     ),
        //   ),
        //)
        );
  }
}
