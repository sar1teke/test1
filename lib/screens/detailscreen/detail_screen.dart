import 'package:flutter/material.dart';
import 'package:flutter_application_travel/model/place_model.dart';
import 'package:flutter_application_travel/utilities/colors.dart';

class DetailScreen extends StatefulWidget {
  final PlaceInfo placeInfo;
  const DetailScreen({ Key? key, required this.placeInfo }) : super(key : key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhitewClr,
      body: Stack(
        children: [Image.asset(
          widget.placeInfo.image,
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,),
          SafeArea(
            child: Column(
              children: [
                //appbar button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Back Button
                      InkWell(
                        onTap:() {
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: kPrimaryClr,
                                shape: BoxShape.circle
                              ),
                              child: const Center(
                                child: Icon(
                                  //Geri Butonu
                                  Icons.arrow_back_ios,
                                  color:kWhitewClr,),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: kWhitewClr,
                              shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.bookmark_rounded,
                                color:kPrimaryClr,
                                size: 20,),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhitewClr,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10, vertical: 20 ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.placeInfo.name,
                                style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                        const Icon(
                          Icons.location_on,
                          color: kPrimaryClr,
                        ),
                        const SizedBox(
                                        width: 12,
                                      ),
                        Text(
                          widget.placeInfo.location,
                          style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        )
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      const Text(
                              "Gezi Detayları",
                                style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                          widget.placeInfo.desc,
                          style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          height: 5,
                          color: Colors.black,
                        ),
                        const SizedBox(height: 10),
                        Row(
                                        children: [
                                        const Text(
                          "Tavsiye Edilen Gezi Süresi",
                          style:  TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(
                                        width: 12,
                                      ),
                        Expanded(
                          child: Text(
                            "${widget.placeInfo.days} Gün",
                            style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        )
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                        Row(
                                        children: [
                                        const Text(
                          "Uzaklık ",
                          style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        ),
                        const SizedBox(
                                        width: 12,
                                      ),
                        Expanded(
                          child: Text(
                            "${widget.placeInfo.distance} Kilometre",
                            style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        )
                                        ],
                                      ),
                                      
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}