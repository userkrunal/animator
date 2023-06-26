import 'dart:math';

import 'package:animator/animator/controller/animator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
   AnimationController? animatorController;
   @override
  void initState() {
    super.initState();
    animatorController=AnimationController(vsync: this,duration: Duration(seconds: 5));
    animatorController!.repeat(reverse: false);
    animatorController!.addListener(() {
      setState(() {

      });
    });

  }
  // an
  //
   AnimatorController controller=Get.put(AnimatorController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xff3e3963),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Treva"),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.search),SizedBox(width: 13,)],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Get.toNamed('/animator',arguments: index);
          },
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50,left: 75),
                    child: Container(
                      height: 120,
                      width: 287,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff434273)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("${controller.glaxeyList[index].name}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                                Spacer(),
                                Icon(Icons.more_vert,size: 25,color: Colors.white30,)
                              ],
                            ),
                            Text("Milkyway Glaxey",style: TextStyle(fontSize: 17,color: Colors.white70)),
                            SizedBox(height: 15),
                            Row(children: [
                              Image.asset('assets/images/map.png',height: 20,width: 20),
                              SizedBox(width: 5),
                              Text("${controller.glaxeyList[index].km}",style: TextStyle(fontSize: 15,color: Colors.white30)),
                              SizedBox(width: 5),
                              Image.asset('assets/images/img.png',height: 20,width: 20),
                              Text("${controller.glaxeyList[index].gravity}",style: TextStyle(fontSize: 15,color: Colors.white30),)
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 25),
                    child: AnimatedBuilder(
                      animation: animatorController!,
                      builder: (context, child) {
                        return Transform.rotate(angle: animatorController!.value*pi*2,child: child);
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("${controller.glaxeyList[index]!.img}"))),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        itemCount: controller.glaxeyList.length,
      ),
    ));
  }
}
