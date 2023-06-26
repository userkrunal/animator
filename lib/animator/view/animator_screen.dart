import 'package:animator/animator/controller/animator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatorScreen extends StatefulWidget {
  const AnimatorScreen({Key? key}) : super(key: key);

  @override
  State<AnimatorScreen> createState() => _AnimatorScreenState();
}

class _AnimatorScreenState extends State<AnimatorScreen> {
  AnimatorController controller=Get.put(AnimatorController());
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xff3e3963),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/img_1.png"),fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200,left: 22),
            child: Container(
              height: 220,
              width: 340,
              decoration: BoxDecoration(color:Color(0xff434273),borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text("${controller.glaxeyList[index].name}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 5),
                  Text("Milkyway Glaxey",style: TextStyle(fontSize: 15,color: Colors.white70)),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Image.asset('assets/images/map.png',height: 20,width: 20),
                    SizedBox(width: 8),
                    Text("${controller.glaxeyList[index].km}",style: TextStyle(fontSize: 15,color: Colors.white38)),
                    SizedBox(width: 20),
                    Image.asset('assets/images/img.png',height: 20,width: 20),
                    Text("${controller.glaxeyList[index].gravity}",style: TextStyle(fontSize: 15,color: Colors.white38),)
                  ]),

                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 140,left: 140),
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage("${controller.glaxeyList[index].img}")
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("${controller.glaxeyList[index].overview}",style: TextStyle(color: Colors.white38),)
                ],
              ),
            ),
          )
        ],
      )
    ));
  }
}
