
import 'package:flutter/material.dart';
import 'package:project1/Home.dart';
import 'package:project1/luminar%20assigments/signuppage.dart';

void main() {
  runApp(MaterialApp(
    home: Stdy3(),
  ));
}

class Stdy3 extends StatefulWidget {
  const Stdy3({super.key});

  @override
  State<Stdy3> createState() => _Stdy3State();
}

class _Stdy3State extends State<Stdy3> {
  var key = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        key: key,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80, right: 80, top: 40),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero)),
                  validator: (email) {
                    if (email!.contains('@')) {
                      return "success";
                    } else {
                      return "enter valid details";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, right: 80, top: 30),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if(showpass){
                                showpass =false;
                              }else{
                                showpass =true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero)),
                  validator: (pass) {
                    if (pass!.length < 6) {
                      return "enter valid deathless";
                    }
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    final valid = key.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
