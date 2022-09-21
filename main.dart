import 'package:flutter/material.dart';
import 'package:flutter_drawer_on_lesson/Page1.dart';
import 'package:flutter_drawer_on_lesson/Page2.dart';
import 'package:flutter_drawer_on_lesson/Page3.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {

    var myPageListDrawer = [Page1Drawer(),Page2Drawer(),Page3Drawer()];
    var selectedPageDrawerIndex = 0 ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Drawer')),
      body: myPageListDrawer[selectedPageDrawerIndex],
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple),
                child: Text(
                  textAlign : TextAlign.center,
                  'Drawer Main Head',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
                )
              ),
              ListTile(
                title : Text('Page1Drawer'),
                onTap: () {
                  setState(() {
                    selectedPageDrawerIndex = 0;
                    Navigator.pop(context);
                  });
                },
              ),
                ListTile(
                title : Text('Page2Drawer'),
                 onTap: () {
                  setState(() {
                    selectedPageDrawerIndex = 1;
                    Navigator.pop(context);
                  });
                },
              ),
                ListTile(
                title : Text('Page3Drawer'),
                 onTap: () {
                  setState(() {
                    selectedPageDrawerIndex = 2;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          ),
       ),
    );
  }
}
