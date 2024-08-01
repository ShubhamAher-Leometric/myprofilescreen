import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/AgentScreens/agent_widget_constants/custom_button.dart';
import 'package:my_property/UserScreens/constants/color_constants.dart';

import '../agent_constants/agent_color_constants.dart';

class AgentFavouritesListingScreen extends StatefulWidget {
  const AgentFavouritesListingScreen({super.key});

  @override
  State<AgentFavouritesListingScreen> createState() =>
      _AgentFavouritesListingScreenState();
}

class _AgentFavouritesListingScreenState
    extends State<AgentFavouritesListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Request\'s',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: agentapptextcolor2),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F4F8),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Row(
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
                          SizedBox(
                            width: 10,
                          ),
                          Column(
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
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.8,
                                      height: 120,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(25),
                                        child: Image.network(
                                          'https://s3-alpha-sig.figma.com/img/448e/78c9/aff8d376c8302d9f10532c697500cd0c?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RsBKWL4JWDrIQH0qTrznVxeONK7NEwpi1iYmo9qtFI8C2FR8Wwgd-cnZ-3498EA29aiwsHN56q4zjTzyyDlwwTJNSCe4MBoxVT7TtVYqWFMsJ6M4Jf-QMMQBhs9qVHT0vc6wYVNOvCdkrXpWAM91JlRbJidrbmPWe1ipy~GFgLcuneNIsRWwcOAeU9118C6no1Qaqq0kDZwZBJ5axe9gGbQyMSKMuZyrngnuYMC0xgUc3wU~kHcUyx2en8BnNMoOkTRjp4mJwzvpkU06qCK-IsTaOkUHtp3a3sytczem9ALvivIppJL07IlsmWeqmBRh7ZhZO9joK1DCktomcZhPZw__',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 5,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: agentappbgSecondary
                                              .withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Apartments',
                                            style: TextStyle(
                                                color: agentapptextcolor),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.4,
                                        child: Text(
                                          'Flower Heaven House',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: agentapptextcolor2,
                                              fontWeight: FontWeight.w700),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: agentapptextcolor2,
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
                                                      color: agentapptextcolor2,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '\$ 370',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: agentapptextcolor2),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width /
                                        4.5,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: agentapptextcolor,
                                      // Optional background color
                                      borderRadius:
                                      BorderRadius.circular(12),
                                      // Adjust the radius as needed
                                      border: Border.all(
                                        color: agentPrimaryColor,
                                        // Border color
                                        width: 1, // Border width
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8),
                                    // Optional padding inside the container
                                    child: Center(
                                        child: Text(
                                          'Reject',
                                          style: TextStyle(
                                              color: agentappprimary,
                                              fontSize: 14),
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width /
                                        4.5,
                                    height: 40,
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
                                          'Accept',
                                          style: TextStyle(
                                              color: apptextcolor,
                                              fontSize: 14),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
