import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/sports%20community%20app/Login.dart';
import 'package:project1/sports%20community%20app/Start%20journey.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SplashScreenn(),
    );
  }
}

class SplashScreenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.squarespace-cdn.com/content/v1/5008a3c6c4aa6450352d2303/1365077958934-QHPGH8WRPT7XVUZZRJTD/prasarita-padottanasana.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Text(
                  "TRAINING",
                  style:
                      GoogleFonts.fugazOne(color: Colors.white, fontSize: 50),
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: GestureDetector(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(color: Colors.black),
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Starjourney()));
                    },
                    title: const Padding(
                      padding: EdgeInsets.only(top: 200),
                      child: Text(
                        "S T A R T J O U R N E Y",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 19),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Log()));
                    },
                    child: const Text(
                        " A L R E A D Y   H A V E   A N   A C C O U N T   ?   L O G     I N ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
