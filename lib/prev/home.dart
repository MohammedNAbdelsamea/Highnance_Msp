import 'package:flutter/material.dart';


import '../helper/auth_helper.dart';
import 'login.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('Home page'),
      ),
      body: const Center(
        child: Text('Home page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          AuthenticationHelper().signOut()
              .then((_) => Navigator.pushReplacement(context
              , MaterialPageRoute(builder: (context)=>const Login())
          ));
        },
        child:const  Icon(Icons.logout),
      ),
    );
  }
}