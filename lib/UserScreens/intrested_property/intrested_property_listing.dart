import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/UserScreens/intrested_property/view_purchase_order_screen.dart';
import '../constants/color_constants.dart';

class IntrestedPropertyListingScreen extends StatefulWidget {
  const IntrestedPropertyListingScreen({super.key});

  @override
  State<IntrestedPropertyListingScreen> createState() =>
      _IntrestedPropertyListingScreenState();
}

class _IntrestedPropertyListingScreenState
    extends State<IntrestedPropertyListingScreen> {
  String selectedFilter = 'pending';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Intersted Property',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: apptextcolor2),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
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
                              selectedFilter = 'pending';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                              (Set<WidgetState> states) {
                                return selectedFilter == 'pending'
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
                                return selectedFilter == 'pending'
                                    ? Colors.white.withOpacity(0.8)
                                    : Color(0xFF252B5C);
                              },
                            ),
                          ),
                          child: Text(
                            "Pending",
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
                              selectedFilter = 'ongoing';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                              (Set<WidgetState> states) {
                                return selectedFilter == 'ongoing'
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
                                return selectedFilter == 'ongoing'
                                    ? Colors.white.withOpacity(0.8)
                                    : Color(0xFF252B5C);
                              },
                            ),
                          ),
                          child: Text(
                            "Ongoing",
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
                              selectedFilter = 'complete';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                              (Set<WidgetState> states) {
                                return selectedFilter == 'complete'
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
                                return selectedFilter == 'complete'
                                    ? Colors.white.withOpacity(0.8)
                                    : Color(0xFF252B5C);
                              },
                            ),
                          ),
                          child: Text(
                            "Complete",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (selectedFilter == 'pending')
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F4F8),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            height: 110,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              child: Image.asset(
                                                'assets/splash_1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 5,
                                            left: 10,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    color: appbgSecondary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 7.0,
                                                              right: 7.0),
                                                      child: Text(
                                                        'Apartment',
                                                        style: TextStyle(
                                                            color: apptextcolor,
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.2,
                                      height: 50,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Wings Tower',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: apptextcolor2,
                                                    fontWeight:
                                                        FontWeight.w700),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Container(
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color: apptextcolor2,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      'Jakarta, Indonesia',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: apptextcolor2,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '\$ 370',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: apptextcolor2),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.2,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.2),
                                            // Optional background color
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            // Adjust the radius as needed
                                            border: Border.all(
                                              color: appbgSecondary,
                                              // Border color
                                              width: 1, // Border width
                                            ),
                                          ),
                                          padding: EdgeInsets.all(8),
                                          // Optional padding inside the container
                                          child: Center(
                                              child: Text(
                                            'Cancel Request',
                                            style: TextStyle(
                                                color: appbgSecondary,
                                                fontSize: 16),
                                          )),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  }),
            ),
          if (selectedFilter == 'ongoing')
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F8),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                height: 110,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    'assets/splash_1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                left: 10,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: appbgSecondary,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 7.0, right: 7.0),
                                          child: Text(
                                            'Apartment',
                                            style: TextStyle(
                                                color: apptextcolor,
                                                fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                        Container(
                          width: MediaQuery.of(context).size.width / 2.2,
                          height: 50,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Wings Tower',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: apptextcolor2,
                                        fontWeight: FontWeight.w700),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: apptextcolor2,
                                          size: 12,
                                        ),
                                        Text(
                                          'Jakarta, Indonesia',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: apptextcolor2,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '\$ 370',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: apptextcolor2),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Ongoing',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          if (selectedFilter == 'complete')
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F4F8),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            height: 110,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              child: Image.asset(
                                                'assets/splash_1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 5,
                                            left: 10,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    color: appbgSecondary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 7.0,
                                                              right: 7.0),
                                                      child: Text(
                                                        'Apartment',
                                                        style: TextStyle(
                                                            color: apptextcolor,
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.2,
                                      height: 50,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Wings Tower',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: apptextcolor2,
                                                    fontWeight:
                                                        FontWeight.w700),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Container(
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color: apptextcolor2,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      'Jakarta, Indonesia',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: apptextcolor2,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '\$ 370',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: apptextcolor2),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap:(){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => PurchaseOrderScreen()),
                                            );
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2.2,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: appbgSecondary,
                                              // Optional background color
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              // Adjust the radius as needed
                                              border: Border.all(
                                                color: appbgSecondary,
                                                // Border color
                                                width: 1, // Border width
                                              ),
                                            ),
                                            padding: EdgeInsets.all(8),
                                            // Optional padding inside the container
                                            child: Center(
                                                child: Text(
                                              'View Purchase Order',
                                              style: TextStyle(
                                                  color: apptextcolor,
                                                  fontSize: 14),
                                            )),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
            ),
        ],
      ),
    );
  }
}
