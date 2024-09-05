import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import '../constants/color_constants.dart';
import '../widget_constants/cutom_appbar_button.dart';

class PurchaseOrderScreen extends StatefulWidget {
  const PurchaseOrderScreen({super.key});

  @override
  State<PurchaseOrderScreen> createState() => _PurchaseOrderScreenState();
}

class _PurchaseOrderScreenState extends State<PurchaseOrderScreen> {
  // final String pdfUrl = 'https://www.irs.gov/pub/irs-pdf/f1040.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  CustomAppbarBackButton(),
                  Spacer(),
                  Text(
                    "Purchased Order",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Container(
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
                                              color: apptextcolor2,
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
                                              color: apptextcolor2),
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
                              // Column(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.center,
                              //   children: [
                              //     Text(
                              //       '\$ 370',
                              //       style: TextStyle(
                              //           fontSize: 16,
                              //           fontWeight: FontWeight.w600,
                              //           color: apptextcolor2),
                              //     ),
                              //   ],
                              // )
                            ],
                          ), 
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: const PDF().fromUrl(
                      'https://icseindia.org/document/sample.pdf',
                    placeholder: (progress) => Center(child: Text('$progress %')),
                    errorWidget: (error) => Center(child: Text(error.toString())),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
