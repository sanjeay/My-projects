import 'package:flutter/material.dart';
import 'package:project1/luminar%20assigments/contact2.dart';
import 'package:project1/luminar%20assigments/signuppage.dart';

class loginn extends StatefulWidget {
  @override
  State<loginn> createState() => _loginnState();
}

class _loginnState extends State<loginn> {
  var key = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new)),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 70, bottom: 20),
              child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            const Text(
              "welcome back! login with your credentials",
              style: TextStyle(color: Colors.black45),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 83, top: 30, bottom: 3),
                  child: Text("username"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, bottom: 30),
              child: TextFormField(
                validator: (email) {
                  if (email!.isEmpty && !email.contains("@")) {
                    return "success";
                  } else {
                    return "enter a valid username";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 83, top: 14, bottom: 3),
                  child: Text("password"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, bottom: 30),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                validator: (pass) {
                  if (pass!.isEmpty && pass.length > 6) {
                    return "success";
                  } else {
                    return "enter a valid password";
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        if(showpass){
                          showpass == false;
                        }else{
                          showpass == true;
                        }
                      });
                    },
                        icon: (showpass == true) ?
                        Icon(Icons.visibility_off)
                        :Icon(Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 30),
                    shape: const StadiumBorder()),
                onPressed: () {
                  final valid = key.currentState!.validate();

                  if (valid) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Contacts()));
                  }
                },
                child: const Text("login")),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text("don't have an account?"),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: const Text(
                        "signup",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
