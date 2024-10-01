import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/AgentScreens/agent_intrested_property/contact_whatapp_screen.dart';
import 'package:my_property/UserScreens/intrested_property/view_purchase_order_screen.dart';

import '../../menu.dart';
import '../agent_constants/agent_color_constants.dart';
import '../agent_widget_constants/custom_appbar_homepage_button.dart';
import '../agent_widget_constants/cutom_appbar_button.dart';

class AgentIntrestedPropertyListingScreen extends StatefulWidget {
  const AgentIntrestedPropertyListingScreen({super.key});

  @override
  State<AgentIntrestedPropertyListingScreen> createState() =>
      _AgentIntrestedPropertyListingScreenState();
}

class _AgentIntrestedPropertyListingScreenState
    extends State<AgentIntrestedPropertyListingScreen> {
  String selectedFilter = 'ongoing';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => MenuPage(),
          ),
              (Route<dynamic> route) => false,
        );
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    AgentCustomAppbarHomePageBackButton(),
                    Spacer(),
                    Text(
                      'Intersted Property',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
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
                          SizedBox(width: 20),
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
              if (selectedFilter == 'ongoing')
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F4F8),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity, // Ensures the Row has bounded width
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Image.asset('assets/user_image.png'),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mathew Adam',
                                              style: TextStyle(
                                                  fontSize: 16, fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              'Mathew@email.com',
                                              style: TextStyle(
                                                  fontSize: 10, fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap:(){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => ContactWhatappScreen()),
                                          );
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child: Image.asset('assets/details_icon/img_3.png'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(color: Colors.grey.withOpacity(0.2),),
                        Row(
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
                                                color: agentappbgSecondary,
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 7.0, right: 7.0),
                                                  child: Text(
                                                    'Apartment',
                                                    style: TextStyle(
                                                        color: agentapptextcolor,
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
                                          Container(
                                            width: MediaQuery.of(context).size.width / 2.2,
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Wings Tower',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: agentapptextcolor2,
                                                      fontWeight: FontWeight.w700),
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                                Spacer(),
                                                Text(
                                                  '\$ 370',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                      color: agentapptextcolor2),
                                                ),
                                              ],
                                            ),
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
                                                  color: agentapptextcolor2,
                                                  size: 12,
                                                ),
                                                Text(
                                                  'Jakarta, Indonesia',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: agentapptextcolor2,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      // Column(
                                      //   mainAxisAlignment: MainAxisAlignment.center,
                                      //   children: [
                                      //     Text(
                                      //       '\$ 370',
                                      //       style: TextStyle(
                                      //           fontSize: 16,
                                      //           fontWeight: FontWeight.w600,
                                      //           color: agentapptextcolor2),
                                      //     ),
                                      //   ],
                                      // )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context)
                                          .size
                                          .width /
                                          2,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: agentappbgSecondary,
                                        // Optional background color
                                        borderRadius:
                                        BorderRadius.circular(12),
                                        // Adjust the radius as needed
                                        border: Border.all(
                                          color: agentappbgSecondary,
                                          // Border color
                                          width: 1, // Border width
                                        ),
                                      ),
                                      padding: EdgeInsets.all(8),
                                      // Optional padding inside the container
                                      child: Center(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.file_upload_outlined , color: agentapptextcolor,size:16),
                                              SizedBox(width: 10,),
                                              Text(
                                                'Upload Purchase Order',
                                                style: TextStyle(
                                                    color: agentapptextcolor,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          )),
                                    )
                                  ],
                                )
                              ],
                            ),
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
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity, // Ensures the Row has bounded width
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(50),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(1.0),
                                                child: Image.asset('assets/user_image.png'),
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          'Mathew Adam',
                                                          style: TextStyle(
                                                              fontSize: 16, fontWeight: FontWeight.w600),
                                                        ),
                                                        Text(
                                                          'Mathew@email.com',
                                                          style: TextStyle(
                                                              fontSize: 10, fontWeight: FontWeight.w500),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) => ContactWhatappScreen()),
                                                      );
                                                    },
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(50),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(1.0),
                                                        child: Image.asset('assets/details_icon/img_3.png'),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(color: Colors.grey.withOpacity(0.2),),
                                    Row(
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
                                                            color: agentappbgSecondary,
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
                                                                    color: agentapptextcolor,
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
                                                      Container(
                                                        width: MediaQuery.of(context).size.width /
                                                            2.2,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              'Wings Tower',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: agentapptextcolor2,
                                                                  fontWeight:
                                                                      FontWeight.w700),
                                                              maxLines: 2,
                                                              overflow: TextOverflow.ellipsis,
                                                            ),
                                                            Spacer(),
                                                            Text(
                                                              '\$ 370',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: agentapptextcolor2),
                                                            ),
                                                          ],
                                                        ),
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
                                                              color: agentapptextcolor2,
                                                              size: 12,
                                                            ),
                                                            Text(
                                                              'Jakarta, Indonesia',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: agentapptextcolor2,
                                                                  fontWeight:
                                                                      FontWeight.w400),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  // Column(
                                                  //   mainAxisAlignment:
                                                  //       MainAxisAlignment.start,
                                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                                  //   children: [
                                                  //     Text(
                                                  //       '\$ 370',
                                                  //       style: TextStyle(
                                                  //           fontSize: 16,
                                                  //           fontWeight: FontWeight.w600,
                                                  //           color: agentapptextcolor2),
                                                  //     ),
                                                  //   ],
                                                  // )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
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
                                                        2,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: agentappbgSecondary,
                                                      // Optional background color
                                                      borderRadius:
                                                          BorderRadius.circular(12),
                                                      // Adjust the radius as needed
                                                      border: Border.all(
                                                        color: agentappbgSecondary,
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
                                                          color: agentapptextcolor,
                                                          fontSize: 12),
                                                    )),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        );
                      }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
