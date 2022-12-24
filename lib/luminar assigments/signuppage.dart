import 'package:flutter/material.dart';
import 'package:project1/luminar%20assigments/login%20page.dart';



class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var key = GlobalKey<FormState>();
  var pass;
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
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios_new)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70,bottom: 20),
              child: Text(
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            SizedBox(width: 20),
            Text(
              "Create an account its free", style: TextStyle(color: Colors.black54),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 83,top: 40,bottom: 3),
              child: Row(
                children: [
                  Text("Email"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80,right: 80),
              child: TextFormField(
                validator:(email){
                  if(email!.isEmpty    &&    !email.contains('@')){
                    return "enter a valid email";
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 83,top: 30,bottom: 3),
              child: Row(
                children: [
                  Text("Password"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80,right: 80),
              child: TextFormField(
                validator: (pass){
                  if(pass!.isEmpty   &&  !pass.contains('@')){
                    return  pass;
                  }
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 83,top: 30,bottom: 3),
              child: Row(
                children: [
                  Text("Confirm password"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80,right: 80,),
              child: TextFormField(
                
                obscureText: true,
                obscuringCharacter: "*",
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 200, vertical: 30),
                      shape: const StadiumBorder()),
                  onPressed: () {},
                  child: Text(
                    "Signup",
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text("already have an account ?"),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginn()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
