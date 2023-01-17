import 'package:flutter/material.dart';

class grr extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color colorr;

  grr(this.icon, this.title,this.colorr);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(

        child: Container(
          width: 100,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(5)),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,
                color: Colors.white,),
              SizedBox(height: 5,),
              Text(title, style: TextStyle(color: Colors.white),)
            ],
          ),

        ));
  }

}


Widget build() {
  return Container(
    height: 200 ,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        grr(Icons.hotel, "HOTEL",Colors.red),
        SizedBox(width: 5,),
        grr(Icons.restaurant, "RESTAURENT",Colors.blue),
        SizedBox(width: 5,),
        grr(Icons.local_cafe, "CAFE",Colors.yellow)
      ],
    ),
  );
}