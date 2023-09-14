import 'package:flutter/material.dart';

import 'chatHomePageUi.dart';

class MyWhatsAppSplashClass extends StatefulWidget {
  const MyWhatsAppSplashClass({Key? key}) : super(key: key);

  @override
  State<MyWhatsAppSplashClass> createState() => _MyWhatsAppSplashClassState();
}

class _MyWhatsAppSplashClassState extends State<MyWhatsAppSplashClass> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyWhatsAppClass()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 70,
          width: 70,
          child: Image(image: NetworkImage("https://freepngimg.com/thumb/whatsapp/77220-scalable-vector-graphics-logo-whatsapp-icon-thumb.png"),),
        ),
      ),
    );
  }
}
