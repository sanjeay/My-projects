import 'package:flutter/material.dart';
import 'package:project1/loginform.dart';
import 'package:project1/luminar%20assigments/login%20page.dart';
import 'package:project1/luminar%20assigments/signuppage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splasscreen(),
  ));
}

class splasscreen extends StatefulWidget {
  const splasscreen({super.key});

  @override
  State<splasscreen> createState() => _splasscreenState();
}

class _splasscreenState extends State<splasscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 15),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text("Hello there!",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                    "automatic identify verification which enabled you to",
                    style: TextStyle(color: Colors.black54)),
                const Text("verify your identity",
                    style: TextStyle(color: Colors.black54)),
                const Image(
                    height: 300,
                    width: 300,
                    image: NetworkImage(
                        "https://global-uploads.webflow.com/5f16d69f1760cdba99c3ce6e/615ed0b37b3d5d8bf1cb127d_eLearning%20interface%20design%20examples-p-1600.png")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 90, vertical: 30),
                        shape: const StadiumBorder()),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginn()));
                    },
                    child: const Text("login")),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 90, vertical: 30),
                          shape: const StadiumBorder()),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: const Text("signup")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
