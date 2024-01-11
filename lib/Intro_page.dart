import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'my_button.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Lottie.network("https://lottie.host/4b81f530-06fc-40c4-8761-e0637d8232f8/Phk6Xak7uX.json"),
            SizedBox(height: 24,),
            Text("Welcome to ChatBot",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 14,),
            Text("When there is no-one",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,),),
            SizedBox(height: 14,),
            mybutton(onTap: () => Navigator.pushNamed(context, "/chatscreen"), Child: Icon(Icons.arrow_forward_ios) )
          ],
        ),
      ),
    );
  }
}
