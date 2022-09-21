import 'package:flutter/material.dart';

class Page3Drawer extends StatefulWidget {
  const Page3Drawer({super.key});
  @override
  State<Page3Drawer> createState() => _Page3DrawerState();}

class _Page3DrawerState extends State<Page3Drawer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is Page3 Drawer',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
    );
  }
}