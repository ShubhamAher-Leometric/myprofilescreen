import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../menu.dart';
import '../constants/color_constants.dart';
import '../widget_constants/custom_appbar_homepage_button.dart';


class FavouritesListingScreen extends StatefulWidget {
  const FavouritesListingScreen({super.key});

  @override
  State<FavouritesListingScreen> createState() =>
      _FavouritesListingScreenState();
}

class _FavouritesListingScreenState extends State<FavouritesListingScreen> {
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
                    UserCustomAppbarHomePageBackButton(),
                    Spacer(),
                    Text(
                      'My favorite',
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
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('5 estates',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: appbgSecondary,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Dismissible(
                            direction: DismissDirection.endToStart,
                            background: Container(
                              decoration: BoxDecoration(
                                color: appbgSecondary,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(Icons.delete, color: Colors.white),
                            ),
                            confirmDismiss: (direction) async {
                              return true;
                            },
                            onDismissed: (direction) {},
                            key: const Key(''),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
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
                                                width:
                                                    MediaQuery.of(context).size.width /
                                                        2.3,
                                                height: 140,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
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
                                                    color: appprimary,
                                                    borderRadius:
                                                        BorderRadius.circular(50),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(
                                                      Icons.favorite_rounded,
                                                      size: 16,
                                                      color: apptextcolor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width /
                                                  3.2,
                                              child: Text(
                                                'Flower Heaven House',
                                                style: TextStyle(
                                                    fontSize: 14,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                children: [
                                                  Icon(
                                                    Icons.location_on,
                                                    color: apptextcolor2,
                                                    size: 12,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        3.4,
                                                    child: Text(
                                                      'Jakarta, Indonesia',
                                                      style: TextStyle(
                                                          fontSize: 10,
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
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              '\$ 370',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: apptextcolor2),
                                            ),
                                            Text(
                                              '/month',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: apptextcolor2),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
