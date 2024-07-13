import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String selectedFilter = 'all';

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset('assets/homescreen_circle.png',height: MediaQuery.of(context).size.width/1.4,),
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 92,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: primary,
                                size: 20, // Adjust size as needed
                              ),
                              Text('Pune'),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 20, // Adjust size as needed
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 49,
                          width: 49,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: primary,
                              width: 1.0,
                            ),
                          ),
                          child: Icon(Icons.notifications, size: 20),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Image.asset('assets/user_image.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hey, ',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              'Jonathan! ',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          'Let\'s start exploring  ',
                          style: TextStyle(fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: SizedBox(
                      height: 60,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search House, Apartment, etc',
                                    border: InputBorder.none,
                                  ),
                                  onSubmitted: (text) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedFilter = 'all';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  return selectedFilter == 'all'
                                      ? Color(0xFF234F68)
                                      : Color(0xFFF5F4F8);
                                },
                              ),
                              overlayColor: WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Color(0xFF234F68).withOpacity(0.8);
                                  }
                                  return Colors.transparent;
                                },
                              ),
                              foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  return selectedFilter == 'all'
                                      ? Colors.white.withOpacity(0.8)
                                      : Color(0xFF252B5C);
                                },
                              ),
                            ),
                            child: Text("All",style: TextStyle(fontSize: 14),),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(height: 47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedFilter = 'house';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  return selectedFilter == 'house'
                                      ? Color(0xFF234F68)
                                      : Color(0xFFF5F4F8);
                                },
                              ),
                              overlayColor: WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Color(0xFF234F68).withOpacity(0.8);
                                  }
                                  return Colors.transparent;
                                },
                              ),
                              foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  return selectedFilter == 'house'
                                      ? Colors.white.withOpacity(0.8)
                                      : Color(0xFF252B5C);
                                },
                              ),
                            ),
                            child: Text("House",style: TextStyle(fontSize: 14),),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(height: 47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedFilter = 'apartment';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  return selectedFilter == 'apartment'
                                      ? Color(0xFF234F68)
                                      : Color(0xFFF5F4F8);
                                },
                              ),
                              overlayColor: WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Color(0xFF234F68).withOpacity(0.8);
                                  }
                                  return Colors.transparent;
                                },
                              ),
                              foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  return selectedFilter == 'apartment'
                                      ? Colors.white.withOpacity(0.8)
                                      : Color(0xFF252B5C);
                                },
                              ),
                            ),
                            child: Text("Apartment",style: TextStyle(fontSize: 14),),
                          ),
                        ),
                        SizedBox(width: 3),
                        Container(
                          height: 47,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                selectedFilter = 'guest_house';
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  return selectedFilter == 'guest_house'
                                      ? Color(0xFF234F68)
                                      : Color(0xFFF5F4F8);
                                },
                              ),
                              overlayColor: WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.pressed)) {
                                    return Color(0xFF234F68).withOpacity(0.8);
                                  }
                                  return Colors.transparent;
                                },
                              ),
                              foregroundColor:
                              WidgetStateProperty.resolveWith<Color>(
                                    (Set<WidgetState> states) {
                                  return selectedFilter == 'guest_house'
                                      ? Colors.white.withOpacity(0.8)
                                      : Color(0xFF252B5C);
                                },
                              ),
                            ),
                            child: Text("Guest House",style: TextStyle(fontSize: 14),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Container(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                        return Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Container(
                          width: 270, // Adjust width as needed
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/temp_img/hor_scroll.png',
                               ),
                              Positioned(
                            top: 130,
                            child: Container(
                              width: 90,
                              height: 50,
                              decoration: BoxDecoration(
                                color:Color(0xFF234F68),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              child: Icon(Icons.arrow_forward,color: textcolor,),
                            ),
                            ),
                            ]
                          ),
                         ),
                        );
                      }
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Top Locations',style: TextStyle(fontSize: 22,color: textcolor2,fontWeight: FontWeight.w700),),
                  Spacer(),
                  Text('explore',style: TextStyle(fontSize: 16,color: textcolor2),
                  ),
                ],
              ),
            ),
            itemGrid(width),
          ],
        ),
      ),
    );
  }
  Widget itemGrid(double width) {
    const int count = 5;
    const int itemsPerRow = 2;
    const double ratio = 1 / 1.7;
    const double horizontalPadding = 0;
    final double calcHeight = ((width / itemsPerRow) - (horizontalPadding)) * (count / itemsPerRow).ceil() * (1 / ratio);
    return SizedBox(
      width: width,
      height: calcHeight,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          itemCount: count,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: itemsPerRow,
              childAspectRatio: ratio),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F4F8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: AspectRatio(
                        aspectRatio: 0.8,
                        child: Image.asset(
                          'assets/splash_1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      Text('Wings Tower',style: TextStyle(fontSize: 18,color: textcolor2,fontWeight: FontWeight.w700),),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.location_on,color: textcolor2,size: 14,),
                        Text('Jakarta, Indonesia',style: TextStyle(fontSize: 14,color: textcolor2,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),

            );
          },
        ),
      ),
    );
  }
}
