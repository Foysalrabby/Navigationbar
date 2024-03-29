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
   
    return Scaffold(
    
      appBar: AppBar(
   
      actions:<Widget> [
        IconButton(onPressed: (){

        }, icon: Icon(Icons.notification_add)),
        
      ],
      leading:IconButton(onPressed: () => {

      },icon: IconButton(onPressed: () {
      
      },icon: Icon(Icons.menu ,color: Colors.white,),),),
        title: Text(widget.title),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 235, 186, 9),
    shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
    )
      
        
      ),
      body:Container(), //to take bottom use container or center
      bottomNavigationBar: BottomNavigationBar(items: [
             BottomNavigationBarItem(icon: IconButton(onPressed: () {
               
             },icon: Icon(Icons.home),),
             label: "home",
             backgroundColor: Color.fromARGB(255, 245, 155, 21),
             
             ),
             BottomNavigationBarItem(icon: IconButton(onPressed: (){

             },icon: Icon(Icons.alarm),),
             label: "alaram",
             backgroundColor: const Color.fromARGB(255, 115, 157, 190)
             ),
             BottomNavigationBarItem(icon: IconButton(onPressed: (){

             },icon: Icon(Icons.people),),
             label: "profile",
             backgroundColor: Color.fromARGB(255, 76, 43, 168)
             )

      ],
      fixedColor: Color.fromARGB(221, 199, 114, 114),
      )
       );
  }
}
