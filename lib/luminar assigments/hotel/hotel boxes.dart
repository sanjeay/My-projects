import 'package:flutter/material.dart';

class box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: 600,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: 200,
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Icon(

                      Icons.hotel,
                      color: Colors.white,size:30
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5,left: 40),
                    child: Text(
                      "Restaurent",
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: 200,
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Icon(
                      Icons.restaurant,
                      color: Colors.white,size:30
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5,left: 75),
                    child: Text(
                      "Hotel",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: 200,
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: Icon(
                      Icons.local_cafe,
                      color: Colors.white,size:30
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 75,top: 5),
                    child: Text(
                      "Cafe",
                      style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
