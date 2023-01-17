
import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(

    routes: {
      'first':(context)=>const firstpage(),
      'second':(context)=>const secondpage()

    },
    home: const namedroots(),));
}
class namedroots extends StatefulWidget{
  const namedroots({super.key});

  @override
  State<namedroots> createState() => _namedrootsState();
}

class _namedrootsState extends State<namedroots> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text(" named roots"),),
      body: ListView(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, 'first');
          }, child: const Text("first page")),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, 'second');
          }, child: const Text("Second page"))
        ],
      ),
    );
  }
}

class firstpage extends StatelessWidget{
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(
        child: Text("first screen"),
      ),
    );

  }

}

class secondpage extends StatelessWidget{
  const secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(child: Text("second page"),),
    );
  }

}