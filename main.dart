import 'package:flutter/material.dart';
import 'package:navigation/home.dart';

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
  int setindex = 0;

  static const List<Widget> widgetoption = <Widget>[
    Text(" Index :0 Home"),
    Text(" Index :1 alaram"),
    Text(" Index :2 profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
          ],
          // leading: IconButton(
          //   onPressed: () => {},
          //   icon: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.menu,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)))),

      body: Center(
          child: Container(
        child: widgetoption[setindex],
      )), //to take bottom use container or center

      //start for drawer anywhere in scaffold
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("HEADER"),
          ),
          ListTile(
            title: Text("home1"),
            selected: setindex ==
                0, //aikahne bottomgavigator ontap take parameter but it is not
            onTap: () {
              callstatefun(0);
              //to close drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("alaram"),
            selected: setindex ==
                1, //aikahne bottomgavigator ontap take parameter but it is not
            onTap: () {
              callstatefun(1);
              //to close drawer
            
            },
          ),
          ListTile(
            title: Text("profile"),
            selected: setindex ==
                2, //aikahne bottomgavigator ontap take parameter but it is not
            onTap: () {
              callstatefun(2);
              //to close drawer
              Navigator.pop(context);
            },
          ),
        ],
      )),

      //ensd drawer code
    );
  }

  void callstatefun(int index) {
    setState(() {
      setindex = index;
      if (index == 1) {
       Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context)=>Homapage() ));
      }
    });
  }
}
