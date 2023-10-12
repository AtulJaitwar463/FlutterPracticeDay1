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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
          primarySwatch: Colors.green,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 21, fontWeight: FontWeight.bold, color: Colors.amber),
            subtitle1: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
          )),
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
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var arrnames = ['Atul', 'Shubham', 'Nirmal', 'Harsh', 'asheesh'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Flutter Container"),
        ),
        body:
//------------------Login Page----------------------
            Center(
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                      keyboardType: TextInputType.phone,
                      controller: emailText,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(
                              color: Colors.deepOrange,
                              width: 2,
                            )),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                        ),
                        suffixText: "Username exist",
                        suffixIcon: IconButton(
                          icon:
                              Icon(Icons.remove_red_eye, color: Colors.orange),
                          onPressed: () {},
                        ),
                        prefixIcon: Icon(Icons.phone),
                      )),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    controller: passText,
                    obscureText: true,
                    obscuringCharacter: "*", //hiding password
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide(color: Colors.deepOrange))),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String uEmail = emailText.text;
                        String upassword = passText.text;

                        print("Email : $uEmail, Pss : $upassword");
                      },
                      child: Text('Login'))
                ],
              ),
            ),
          ),
        )
        //-----------------Card Widgets--------------------
        //  Center(
        //   child: Card(
        //     elevation: 20,
        //     child: Padding(
        //         padding: const EdgeInsets.all(11),
        //         child: Text(
        //           'Hello world!',
        //           style: TextStyle(fontSize: 25),
        //         )),
        //   ),
        // )
//----------------------Style And Theme--------------------------
        // Column(
        //   children: [
        //     Text("hello1",
        //         style: Theme.of(context)
        //             .textTheme
        //             .headline1!
        //             .copyWith(color: Colors.amber)),
        //     Text("hello2", style: Theme.of(context).textTheme.subtitle1),
        //     Text("hello 3", style: Theme.of(context).textTheme.headline1),
        //     Text("hello 4", style: mTextStyle1()),
        //   ],
        // )
        //---------------------Add CustomForm --------------=-------
        // Text(
        //   "hellow world",
        //   style: TextStyle(fontFamily: 'FontMain'),
        // )

        //---------------------ListTile--------------------
        //  ListView.separated(
        //   itemBuilder: (contex, index) {
        //     return ListTile(
        //       leading: Text("${index + 1}"),
        //       title: Text(arrnames[index]),
        //       subtitle: Text('Number'),
        //       trailing: Icon(Icons.add),
        //     );
        //   },
        //   itemCount: arrnames.length,
        //   separatorBuilder: (contex, index) {
        //     return Divider(
        //       height: 20,
        //       thickness: 1,
        //     );
        //   },
        // )

//--------------------CircularAvatar----------------------

        // Center(
        //   child: Container(
        //     width: 100,
        //     height: 100,
        //     child: CircleAvatar(
        //       child: Text(
        //         "Name",
        //         style: TextStyle(color: Colors.amber),
        //       ),
        //       backgroundImage: AssetImage('assets/images/images.png'),
        //       //backgroundColor: Colors.green,
        //       minRadius: 30,
        //     ),
        //   ),
        // )

//---------------Padding and Margin------------------------
        // Container(
        //   color: Colors.amberAccent,
        //   margin: EdgeInsets.all(11),
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text(
        //       "Hello",
        //       style: TextStyle(fontSize: 20, color: Colors.blue),
        //     ),
        //   ),
        // ),

//-----------------Epanded Widget--------------------------
        //  Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.amberAccent,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 3,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.blue,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 5,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.amberAccent,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 3,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.green,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 5,
        //       child: Container(
        //         width: 50,
        //         height: 100,
        //         color: Colors.red,
        //       ),
        //     ),
        //   ],
        // )
        );
  }
}
