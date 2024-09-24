import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Widgets"),),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
             buttons(),
                ],),
        )),
    );
  }

  Widget buttons(){
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         const Text("Buttons",style: TextStyle(fontSize: 16),),
            const SizedBox(height: 10,),
            IconButton(onPressed: (){
              // action
            },
            icon: const Icon(CupertinoIcons.add),color: Colors.grey,),
            OutlinedButton(onPressed: (){}, child: const Text('Click Here'))
      ],),
    );
  }
}

