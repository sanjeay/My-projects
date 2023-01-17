// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
//
// import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:flutter_native_splash_sample/constants.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:flutter_native_splash_sample/HomeScreen.dart';
//
// void main(List<String> args) {
//   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   // code for preserving splashscreen
//   FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ScreenLogin(),
//     );
//   }
// }
// class ScreenLogin extends StatefulWidget {
//   @override
//   State<ScreenLogin> createState() => _ScreenLoginState();
// }
//
// class _ScreenLoginState extends State<ScreenLogin> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 4)).then((value) {
//       // code for removing splash screen after 4 seconds
//       FlutterNativeSplash.remove();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           padding: EdgeInsets.all(40),
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.bottomLeft,
//                   end: Alignment.topRight,
//                   colors: [
//                     Color(0xFF1e1e28),
//                     Color(0xFF232633),
//                   ])),
//           child: Form(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GradientText(
//                   'Nice',
//                   style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
//                   colors: [
//                     Color(0xFFbe5cab),
//                     Color(0xFFe0717d),
//                   ],
//                 ),
//                 GradientText(
//                   'To see you',
//                   style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
//                   colors: [
//                     Color(0xFFbe5cab),
//                     Color(0xFFe0717d),
//                     Color(0xFFf39c7c),
//                   ],
//                 ),
//                 GradientText(
//                   'Again',
//                   style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
//                   colors: [
//                     Color(0xFFbe5cab),
//                     Color(0xFFe0717d),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 TextFormField(
//                   style: TextStyle(color: Colors.white70),
//                   decoration: InputDecoration(
//                       contentPadding:
//                       EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                       fillColor: Color(0xFF323444),
//                       filled: true,
//                       focusedErrorBorder: kFocussedErrorBorderStyle,
//                       errorBorder: kErrorBorderStyle,
//                       errorStyle: kErrorStyle,
//                       enabledBorder: kenabledBorderStyle,
//                       focusedBorder: kfocusBorderStyle,
//                       hintText: 'Enter your email',
//                       hintStyle: kHintTextStyle),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 TextFormField(
//                   obscureText: true,
//                   style: TextStyle(color: Colors.white70),
//                   decoration: InputDecoration(
//                       contentPadding:
//                       EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                       fillColor: kInputFillColor,
//                       filled: true,
//                       focusedErrorBorder: kFocussedErrorBorderStyle,
//                       errorBorder: kErrorBorderStyle,
//                       errorStyle: kErrorStyle,
//                       enabledBorder: kenabledBorderStyle,
//                       focusedBorder: kfocusBorderStyle,
//                       hintText: 'Enter password',
//                       hintStyle: kHintTextStyle),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       onPressed: () {},
//                       child: Row(
//                         children: [
//                           Text(
//                             'Sign in',
//                             style: TextStyle(
//                               fontSize: 30.0,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xFFe0717d),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Icon(
//                             Icons.arrow_forward_ios,
//                             size: 35,
//                             color: Color(0xFFe0717d),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// const Color kInputFillColor = Color(0xFF323444);
// const Color kInputFocusBorderColor = Color(0xFF828492);
// const Color kEnabledBorderColor = Color(0xFF323444);
// const Color kHintTextColor = Color(0xFF828492);
//
// OutlineInputBorder kfocusBorderStyle = OutlineInputBorder(
//   borderSide: const BorderSide(
//     color: kInputFocusBorderColor,
//   ),
//   borderRadius: BorderRadius.circular(50.0),
// );
//
// OutlineInputBorder kBorderStyle = const OutlineInputBorder(
//     borderRadius: BorderRadius.all(
//       Radius.circular(50),
//     ),
//     borderSide: BorderSide(width: 0));
//
// OutlineInputBorder kenabledBorderStyle = const OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(50.0)),
//     borderSide: BorderSide(width: 0, color: kEnabledBorderColor));
// OutlineInputBorder kErrorBorderStyle = const OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(50.0)),
//     borderSide: BorderSide(width: 0, color: Color(0xFFe0717d)));
// OutlineInputBorder kFocussedErrorBorderStyle = const OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(50.0)),
//     borderSide: BorderSide(width: 0, color: Color(0xFFe0717d)));
//
// TextStyle kErrorStyle = const TextStyle(color: Color(0xFFe0717d));
//
// const kHintTextStyle = TextStyle(color: Color(0xFF828492));