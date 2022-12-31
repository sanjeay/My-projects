import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/luminar%20assigments/login%20page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: study(),
  ));
}

class study extends StatefulWidget {
  @override
  State<study> createState() => _studyState();
}

class _studyState extends State<study> {
  var key = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Form(
        key: key,
        child: Column(
          children: [
            const Center(
                child: Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 30),
              child: TextFormField(
                validator: (uname) {
                  if (uname!.contains('@')) {
                    return 'enter valid username';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 80, right: 80),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: '*',
                validator: (pass) {
                  if (pass!.length > 6) {
                    return 'enter valid pass';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          if(showpass){
                            showpass = false;
                          }else{
                            showpass =true;
                          }
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = key.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginn()));
                    }
                  },
                  child: Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
