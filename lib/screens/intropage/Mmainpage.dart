
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfitnessapp/screens/intropage/Registerpage.dart';

import '../../pages/Homepage.dart';
import '../../pages/intropage.dart';
import 'Login.dart';
import 'intropage.dart';
class mmmainPage extends StatefulWidget {
  const mmmainPage({Key? key}) : super(key: key);

  @override
  State<mmmainPage> createState() => _MmainPageState();
}

class _MmainPageState extends State<mmmainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return Homepage();
          }
          else{
            return Register();
          }

        },
      ),
    );
  }
}