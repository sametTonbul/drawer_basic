import 'package:flutter/material.dart';

class Page2Drawer extends StatefulWidget {
  const Page2Drawer({super.key});
  @override
  State<Page2Drawer> createState() => _Page2DrawerState();}

class _Page2DrawerState extends State<Page2Drawer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is Page2 Drawer',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
    );
  }
}