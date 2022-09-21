import 'package:flutter/material.dart';

class Page1Drawer extends StatefulWidget {
  const Page1Drawer({super.key});
  @override
  State<Page1Drawer> createState() => _Page1DrawerState();}

class _Page1DrawerState extends State<Page1Drawer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('This is Page1 Drawer',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
    );
  }
}