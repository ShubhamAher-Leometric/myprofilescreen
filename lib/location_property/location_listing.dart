import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../widget_constants/cutom_appbar_button.dart';
import 'location_property.dart';

class LocationListingScreen extends StatefulWidget {
  const LocationListingScreen({super.key});

  @override
  State<LocationListingScreen> createState() => _LocationListingScreenState();
}

class _LocationListingScreenState extends State<LocationListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(children: [
              CustomAppbarBackButton(),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
             Row(children: [
               Text('Top Locations',style: TextStyle(fontSize: 22,color: apptextcolor2,fontWeight: FontWeight.w700),),
             ],),
                Row(children: [
                  Text('Find the best recommendations place to live',style: TextStyle(fontSize: 12,color: apptextcolor2,fontWeight: FontWeight.w700),),
                ],),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 7,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 0.65),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Location_property()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F4F8),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Stack(
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: AspectRatio(
                                    aspectRatio: 0.8,
                                    child: Image.asset(
                                      'assets/temp_img/maldives.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 5,
                                left: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: appprimary,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                    '#${index + 1}',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: apptextcolor,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Maldives',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: apptextcolor2,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
