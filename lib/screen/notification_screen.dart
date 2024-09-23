import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy_clone_app/domain/custom_style/myTestStyle.dart';
import 'package:swiggy_clone_app/screen/widgets/custom_button.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Get updates on your order status" ,style: myTextStyle30(fontWeight: FontWeight.bold),) ,
            const SizedBox(height: 10,),
            Text("Allow push notifications to get real-time updates on your order status." ,style: myTextStyle20(fontColor: Colors.black54),) ,
            const SizedBox(height: 10,),
            Image.asset("assets/image/boy.webp") , 
            const SizedBox(height: 10,),
            CustomButton(buttonText: "Turn on Notification", onPress: (){}) , 
            TextButton(onPressed: (){}, child: Text("Not Now" , style: myTextStyle20(fontColor: Colors.deepOrange , fontWeight: FontWeight.bold),))

          ],
        ),
      ),
    );
  }
}
