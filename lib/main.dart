import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_app/controller/auth_controller.dart';
import 'package:zoom_app/utility/colors.dart';
import 'package:zoom_app/view/screen/home_screen.dart';
import 'package:zoom_app/view/screen/login_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

// Ideal time to initialize
//   await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     name: 'zoom-app',
  //     options: const FirebaseOptions(
  //       apiKey: "AIzaSyAXEaLE8lfLDhEkl3Pqx2rSsGU-NnIYpt8",
  //       appId: "1:395878868739:android:26d24373b1fb3523166b36",
  //       messagingSenderId: "395878868739",
  //       projectId: "zoom-app-f169a",
  //     ));
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: StreamBuilder(
        stream: AuthController().streamAuth,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.hasData){
            return HomeScreen();
          }
          return LoginScreen();
        },
      ),
    );
  }
}

