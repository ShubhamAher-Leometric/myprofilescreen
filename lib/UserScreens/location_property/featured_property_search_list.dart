import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../widget_constants/cutom_appbar_button.dart';

class FeaturedPropertySearchListScreen extends StatefulWidget {
  const FeaturedPropertySearchListScreen({super.key});

  @override
  State<FeaturedPropertySearchListScreen> createState() => _FeaturedPropertySearchListScreenState();
}

class _FeaturedPropertySearchListScreenState extends State<FeaturedPropertySearchListScreen> {
  String selectedFilter = 'all';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                CustomAppbarBackButton(),
                Spacer(),
                Text(
                  "Property",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
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
            SizedBox(height: 10,),
            Align(
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
                            overlayColor:
                            WidgetStateProperty.resolveWith<Color>(
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
                          child: Text(
                            "All",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        height: 47,
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
                            overlayColor:
                            WidgetStateProperty.resolveWith<Color>(
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
                          child: Text(
                            "House",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Container(
                        height: 47,
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
                            overlayColor:
                            WidgetStateProperty.resolveWith<Color>(
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
                          child: Text(
                            "Apartment",
                            style: TextStyle(fontSize: 14),
                          ),
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
                            overlayColor:
                            WidgetStateProperty.resolveWith<Color>(
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
                          child: Text(
                            "Guest House",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F4F8),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width / 1.9,
                                          height: 155,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25),
                                            child: Image.asset(
                                              'assets/splash_1.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 5,
                                          left: 5,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.favorite_border,
                                                size: 16,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:MediaQuery.of(context).size.width / 3.2,
                                        child: Text(
                                          'Flower Heaven House',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: apptextcolor2,
                                              fontWeight: FontWeight.w700),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              color: apptextcolor2,
                                              size: 14,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width:
                                              MediaQuery.of(context).size.width / 3.4,
                                              child: Text(
                                                'Bali, Indonesia',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: apptextcolor2,
                                                    fontWeight: FontWeight.w400),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '\$ 370',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: apptextcolor2),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
