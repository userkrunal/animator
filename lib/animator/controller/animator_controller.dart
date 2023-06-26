import 'package:animator/animator/model/animator_model.dart';
import 'package:get/get.dart';

class AnimatorController extends GetxController
{
  RxList glaxeyList=[
    AnimatorModel(name: "MARS",km: "54.6m km",gravity: " 3.711 m/s²",img: "assets/images/mars.png",overview: "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past"),
    AnimatorModel(name: "EARTH",km: "149.6m km",gravity: " 9.798 m/s²",img: "assets/images/earth.png",overview: "Earth is our home planet. Scientists believe Earth and its moon formed around the same time as the rest of the solar system. They think that was about 4.5 billion years ago. Earth is the fifth-largest planet in the solar system. Its diameter is about 8,000 miles. And Earth is the third-closest planet to the sun. Its average distance from the sun is about 93 million miles."),
    AnimatorModel(name: "MERCURY",km: "57.9m km",gravity: " 3.7 m/s²",img: "assets/images/mercury.png",overview: "From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter."),
    AnimatorModel(name: "MOON",km: "173.74m km",gravity: " 1.62 m/s²",img: "assets/images/moon.png",overview: "The brightest and largest object in our night sky, the Moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, leading to a relatively stable climate. "),
    AnimatorModel(name: "NEPTUNE",km: "246.22m km",gravity: " 11.15 m/s²",img: "assets/images/neptune.png",overview: "Dark, cold, and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system.More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye and the first predicted by mathematics before its discovery."),
  ].obs;
}