// import 'package:chat_app/pages/chat.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vexpocd/pages/login.dart';
import 'package:vexpocd/splash.dart';
import 'chatbot/chatbot.dart';
import 'pages/chatterScreen.dart';
import 'pages/signup.dart';
import 'pages/aboutUs.dart';

const kBackgroundColor = Color.fromARGB(255, 7, 10, 43);
const kPrimaryColor = Color.fromARGB(255, 253, 253, 253);


Future<void> main() async {
   // WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
       home:   const chatbotScreen(),
     // home: const HomeMain(),
      routes: <String, WidgetBuilder>{
        '/chatbot': (BuildContext context) => const chatbotScreen(),
         '/login': (context) => ChatterLogin(),
        '/signup': (context) => ChatterSignUp(),
         '/chat': (context) => ChatterScreen(),
         '/aboutUs': (context) => Home(),
         // '/aboutUs': (context) => AboutUsScreen(),
        // '/screen2' : (BuildContext context) => new Screen2(),
        // '/screen3' : (BuildContext context) => new Screen3(),
        // '/screen4' : (BuildContext context) => new Screen4()
      },
    );
  }
}

// class ChatterApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'VEXPOcd',

//       theme: ThemeData(
//         textTheme: TextTheme(
//           bodyText2: TextStyle(fontFamily: 'Poppins'),
//         ),
//       ),
//       // home: ChatterHome() 0B1968,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => ChatterHome(),
//         '/login': (context) => ChatterLogin(),
//         '/signup': (context) => ChatterSignUp(),
//         '/chat': (context) => ChatterScreen(),
//         '/aboutUs': (context) => AboutUs(),
//         // '/aboutUs': (context) => AboutUsScreen(),

//         // '/chats':(context)=>ChatterScreen()
//       },
//     );
//   }
// }
