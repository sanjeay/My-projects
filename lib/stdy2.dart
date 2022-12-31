import 'package:flutter/material.dart';
import 'package:project1/luminar%20assigments/login%20page.dart';
import 'package:project1/study.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: stdy()));
}

class stdy extends StatefulWidget {
  @override
  State<stdy> createState() => _stdyState();
}

class _stdyState extends State<stdy> {
  var key = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Form(
        key: key,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 30),
              child: Text(
                "Login page",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: TextFormField(
                validator: (email) {
                  if (email!.contains('@')) {
                    return "success";
                  } else {
                    return "enter valid details";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 40),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                validator: (pass) {
                  if (pass!.length < 6) {
                    return "pass should be bigger than 6";
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if(showpass){
                              showpass = false;
                            }else{
                              showpass =true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 80,right: 80,top: 30),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = key.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => study()));
                    } else {
                      return;
                    }
                  },
                  child: Text("login")),
            )
          ],
        ),
      ),
    );
  }
}
