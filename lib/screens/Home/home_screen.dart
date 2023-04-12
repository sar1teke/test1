import 'package:flutter/material.dart';
import 'package:flutter_application_travel/model/place_model.dart';
import 'package:flutter_application_travel/screens/Home/widgets/recommended_card.dart';
import 'package:flutter_application_travel/screens/detailscreen/detail_screen.dart';
import 'package:flutter_application_travel/utilities/colors.dart';

import 'widgets/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitewClr,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15),
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
             [
              Image.asset("assets/icons/home.png",
              height: 30,
              width: 30,
              color: kPrimaryClr,
              ),
              Image.asset("assets/icons/calendar.png",
              height: 30,
              width: 30,
              color: kPrimaryClr,
              ),
              Image.asset("assets/icons/bookmark.png",
              height: 30,
              width: 30,
              color: kPrimaryClr,
              ),
              Image.asset("assets/icons/chat-bubble.png",
              height: 30,
              width: 30,
              color: kPrimaryClr,
              ),
             ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: SingleChildScrollView(
            child: Column(children: [
              //appbar
              Row(
                children: [
                  const CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage("assets/images/deserts.jpeg"),
          
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(text: const TextSpan(
                    text: "Merhaba",
                    style: TextStyle(
                      color: kBlackClr,
                      fontSize: 18,
                    ),
                    children: [
                  TextSpan(
                    text: ",İsmail",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  )
                    ]
                  ))
                ],
              ),
            //search section
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Yeni Dünyalar Keşfet Hadi Başla",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ), const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(100),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(color : kWhitewClr,borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Arat Ve Keşfet",
                            prefixIcon: Icon(Icons.search),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            ),
                      
                      
                        ),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundColor: kPrimaryClr,
                        child: Icon(
                          Icons.sort_by_alpha_sharp,
                          color: kWhitewClr,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CateoryCard(
                        press: (){},
                        image: "assets/images/mountains.jpeg",
                        title: "Dağlar",
                      ),
                      CateoryCard(
                        press: (){},
                        image: "assets/images/forests.jpeg",
                        title: "Ormanlar",
                      ),
                      CateoryCard(
                        press: (){},
                        image: "assest/images/mountains.jpeg",
                        title: "Denizler",
                      ),
                      CateoryCard(
                        press: (){},
                        image: "assest/images/mountains.jpeg",
                        title: "Çöller",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Önerilenler
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                 Text(
                  "Önerilenler",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ), const SizedBox(
              height: 10,
            ),
          
              SizedBox(
                height: 350,
                child: ListView.builder(
                  itemCount: places.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 5 ,right: 15),
                      child: Row(
                        children: [
                          RecommendedCard(placeInfo: places[index],
                           press: () { 
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(placeInfo: places[index],)));
                            },)
                        ],
                      ),
                    );
                }),
              
          
              ),
          
            ]),
          ),
          ),
      ),
    );
  }
}

