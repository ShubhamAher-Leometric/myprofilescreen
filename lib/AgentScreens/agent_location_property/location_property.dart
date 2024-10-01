import 'package:flutter/material.dart';
import 'package:my_property/UserScreens/location_property/property_details.dart';

import '../agent_constants/agent_color_constants.dart';
import '../agent_widget_constants/cutom_appbar_button.dart';

class AgentLocation_property extends StatefulWidget {
  const AgentLocation_property({super.key});

  @override
  State<AgentLocation_property> createState() => _AgentLocationPropertyState();
}

class _AgentLocationPropertyState extends State<AgentLocation_property> {
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
                AgentCustomAppbarBackButton(),
                Spacer(),
                Text(
                  "Bali",
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
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'Found '),
                  TextSpan(
                    text: '8 ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'estates'),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PropertyDetailsPage()),
                        );
                      },
                      child: Padding(
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
                                              color: agentapptextcolor2,
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
                                              color: agentapptextcolor2,
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
                                                    color: agentapptextcolor2,
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
                                        color: agentapptextcolor2),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
