import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:kf_drawer/kf_drawer.dart';
import '../widgets/custom_button.dart';
import 'pages/chatterScreen.dart';
import 'package:url_launcher/url_launcher.dart';

class Aboutocd extends KFDrawerContent {
  Aboutocd();

  @override
  _AboutocdState createState() => _AboutocdState();
}

class _AboutocdState extends State<Aboutocd> {
  @override
  Widget build(BuildContext context) {
    //   var aboutus_features;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 163, 173),
          automaticallyImplyLeading: false,
          elevation: 1.0,
          leading: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            child: Material(
              shadowColor: Colors.transparent,
              color: Colors.transparent,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    onPressed: () => Navigator.pushNamed(context, '/homeMain'),
                  ),
                ],
              ),
            ),
          ),
          title: const Text(
            'CureOCD',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
//*******Tools

              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.topLeft,
                child: Text('What is OCD?',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Obsessive-Compulsive Disorder (OCD) is a common and chronic disorder in which a person has uncontrollable, reoccurring thoughts (obsessions) and/or behaviors (compulsions) that he or she feels the urge to repeat over and over.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 15),

              const SizedBox(height: 20),
              Image.asset('assets/images/ocd_image-removebg-preview.png'),

              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.topLeft,
                child: Text('What is ERP?',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 163, 173))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Text(
                    'Exposure and Response Prevention - ERP, is a therapy that encourages you to face your fears and let obsessive thoughts occur without ‘putting them right’ or ‘neutralising’ them with compulsions.\nExposure therapy starts with confronting items and situations that cause anxiety, but anxiety that you feel able to tolerate. After the first few times, you will find your anxiety does not climb as high and does not last as long. You will then move on to more difficult exposure exercises.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 107, 102, 102),
                      // fontWeight: FontWeight.bold,
                    )),
              ),

              const SizedBox(height: 15),
              const SizedBox(height: 15),

              Image.asset('assets/images/exposure-removebg-preview.png'),
              const SizedBox(height: 15),
              const SizedBox(height: 15),
            ],
          ),
        ));
  }
}
































// import 'package:flutter/material.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';
// import 'package:kf_drawer/kf_drawer.dart';
// import '../widgets/custom_button.dart';
// import 'pages/chatterScreen.dart';

// class Tools extends KFDrawerContent {
//   Tools();

//   @override
//   _ToolsState createState() => _ToolsState();
// }

// class _ToolsState extends State<Tools> {
//   String _selectedValue;
//   Map<String, bool> items = {
//     'Sale': false,
//   };

//   Map<String, bool> items2 = {
//     'Consultant Notes only': false,
//     'Overdue only': false,
//     'Data Range': false,
//   };

//   @override
//   Widget build(BuildContext context) {
//       var aboutus_features;

//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 0, 163, 173),
//           automaticallyImplyLeading: false,
//           elevation: 1.0,
//           leading: ClipRRect(
//             borderRadius: const BorderRadius.all(Radius.circular(32.0)),
//             child: Material(
//               shadowColor: Colors.transparent,
//               color: Colors.transparent,
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back_ios,
//                         color: Color.fromARGB(255, 255, 255, 255)),
//                     onPressed: () => Navigator.pushNamed(context, '/homeMain'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               alignment: Alignment.topRight,
//               icon: const Icon(
//                 Icons.chat,
//                 color: Color.fromARGB(255, 255, 254, 254),
//               ),
//               onPressed: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ChatterScreen(),
//                   )),
//                 padding:  new EdgeInsets.all(0.0),
//             ),
//           ],
//           title: const Text(
//             'CureOCD',
//             style: TextStyle(
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: ListView(
//             children: [
// *******CONTACT

//               const SizedBox(height: 30),
//               const Align(
//                 alignment: Alignment.center,
//                 child: Text('Contact us',
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 0, 163, 173))),
//               ),
//               const SizedBox(height: 15),
//               const Align(
//                 alignment: Alignment.center,
//                 child: Text(
//                     'We would love to hear form you. Feel free to ask anything. We will try our best to solve your queries.',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Color.fromARGB(255, 107, 102, 102),
//                       fontWeight: FontWeight.bold,
//                     )),
//               ),

//               const SizedBox(height: 15),
//               const SizedBox(height: 15),
//               const ListTile(
//                 leading: Icon(
//                   Icons.email,
//                   color: Colors.white,
//                 ),
//                 title: Text("cure@ocd.com",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 tileColor: Color.fromARGB(255, 0, 163, 173),
//               ),

//               const ListTile(
//                 leading: Icon(
//                   Icons.phone,
//                   color: Colors.white,
//                 ),
//                 title: Text("123456",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 tileColor: Color.fromARGB(255, 0, 163, 173),
//               ),

//               const ListTile(
//                 leading: Icon(
//                   Icons.location_on,
//                   color: Colors.white,
//                 ),
//                 title: Text("312 GT Road, Lahore",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 tileColor: Color.fromARGB(255, 0, 163, 173),
//               ),
//               const SizedBox(height: 20),
//               Align(
//                 alignment: Alignment.center,
//                 child: Row(
//                   children: [
//                     Icon(Icons.copyright_outlined,
//                         size: 10.0,
//                         color: const Color.fromARGB(255, 0, 163, 173)),
//                     const Text('2022 CureOCD Inc.',
//                         style: TextStyle(
//                             fontSize: 10,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 0, 163, 173))),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
