import 'package:batch33c/dashboard/dashboard_screen.dart';
import 'package:batch33c/firestore_example/firestore_example.dart';
import 'package:batch33c/formscreen/form_screen.dart';
import 'package:batch33c/navigation/navigation_screen.dart';
import 'package:batch33c/providers/user_view_model.dart';
import 'package:batch33c/routes/route_generator.dart';
import 'package:batch33c/services/notification_service.dart';
import 'package:batch33c/splash/splash_screen.dart';
import 'package:batch33c/tabbar_example/tab_bar_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:overlay_kit/overlay_kit.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService.initialize();
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
   );
  runApp(RootScreen());
}


class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> UserViewModel()),
      ],
      child: OverlayKit(
        child: MaterialApp(
          theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.red)),
          debugShowCheckedModeBanner: false,
          // home: DashBoardScreen(),
          initialRoute: FirestoreExample.routeName,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            actions: const [
              Icon(Icons.share),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Icon(Icons.favorite_border),
              )
            ],
            leading: const Icon(Icons.menu),
            title: const Text("My Flutter App"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                      ),
                      const Positioned(
                        left: 20,
                        right: 20,
                        height: 80,
                        top: 50,
                        child: Card(
                          child: ListTile(
                            trailing: Icon(Icons.check_circle),
                            title: Text("Softwarica college"),
                            subtitle: Text("Hello"),
                            leading: CircleAvatar(

                                backgroundImage:
                                    AssetImage("assets/images/download.jpeg")),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 100,
                      height: 150,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 100,
                      height: 150,
                      color: Colors.green,
                    ),
                  ],
                ),
                Image.asset("assets/images/download.jpeg"),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                      )),
                  child: const Center(
                    child: Text("Flutter",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
                Image.network(
                    "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png"),
              ],
            ),
          )),
    );
  }
}
