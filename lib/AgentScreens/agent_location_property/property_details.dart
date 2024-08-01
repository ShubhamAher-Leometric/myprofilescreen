import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/UserScreens/location_property/video_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../agent_constants/agent_color_constants.dart';

class AgentPropertyDetailsPage extends StatefulWidget {
  const AgentPropertyDetailsPage({super.key});

  @override
  State<AgentPropertyDetailsPage> createState() => _AgentPropertyDetailsPageState();
}

class _AgentPropertyDetailsPageState extends State<AgentPropertyDetailsPage> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  buildAutoScrollingContainer(),
                  Row(
                    children: [
                      Text(
                        'Wings Tower',
                        style: TextStyle(
                            fontSize: 22,
                            color: agentapptextcolor2,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        '\$ 220',
                        style: TextStyle(
                            fontSize: 22,
                            color: agentapptextcolor2,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: agentapptextcolor2,
                        size: 14,
                      ),
                      Text(
                        'Jakarta, Indonesia',
                        style: TextStyle(
                            fontSize: 14,
                            color: agentapptextcolor2,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.9,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: agentappprimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                )),
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'i am intrested',
                                style: TextStyle(
                                    color: agentapptextcolor,
                                    fontFamily: 'OpenSans-SemiBold',
                                    fontSize: 12),
                              ),
                            )),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => YoutubePlayerDemoApp()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: agentappprimary,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(
                            'assets/360.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                                height: 47,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Image.asset(
                                          'assets/details_icon/img.png'),
                                    ),
                                    Text(
                                      '2 Bedroom',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 47,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Image.asset(
                                          'assets/details_icon/img_1.png'),
                                    ),
                                    Text(
                                      '1 Bathroom',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                                height: 47,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Image.asset(
                                          'assets/details_icon/img_2.png'),
                                    ),
                                    Text(
                                      'Hot Water',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 20,
                            color: agentapptextcolor2,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                      'Lorem Ipsum has been the industry'
                      's standard dummy text ever since the 1500s, '
                      'when an unknown printer toLorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 20,
                            color: agentapptextcolor2,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(
                                  50), // Adjust the radius as needed
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.location_on_outlined,
                                size: 25, // Adjust size as needed
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'St. Cikoko Timur, Kec. Pancoran, Jakarta Selatan, Indonesia 12770',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                mainAxisSpacing: 4.0, // Spacing between rows
                crossAxisSpacing: 4.0, // Spacing between columns
                childAspectRatio: 0.64, // Aspect ratio of each item
              ),
              delegate: SliverChildBuilderDelegate(
                childCount: 5,
                (context, index) {
                  return Container(
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
                                      'assets/splash_1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 5,
                                right: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: agentappprimary,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.favorite_rounded,
                                      size: 16,
                                      color: agentapptextcolor,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.8,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: agentappbgSecondary,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 7.0, right: 7.0),
                                              child: Text(
                                                'House',
                                                style: TextStyle(
                                                    color: agentapptextcolor,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: agentappbgSecondary,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 7.0, right: 7.0),
                                              child: Text(
                                                '\$ 220',
                                                style: TextStyle(
                                                    color: agentapptextcolor,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                              'Wings Tower',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: agentapptextcolor2,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.location_on,
                                color: agentapptextcolor2,
                                size: 14,
                              ),
                              Text(
                                'Jakarta, Indonesia',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: agentapptextcolor2,
                                    fontWeight: FontWeight.w400),
                              ),
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
          ],
        ),
      ),
    );
  }

  Widget buildAutoScrollingContainer() {
    final PageController pageController = PageController();
    int numPages = 3;

    void autoScroll() {
      Future.delayed(Duration(seconds: 3)).then((_) {
        if (pageController.hasClients && numPages > 0) {
          int nextPage = (pageController.page!.toInt() + 1) % numPages;
          pageController
              .animateToPage(
                nextPage,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              )
              .then((_) => autoScroll());
        }
      });
    }

    autoScroll();

    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 300,
              child: PageView.builder(
                controller: pageController,
                itemCount: numPages,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/temp_img/details_page.png',
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            SmoothPageIndicator(
              controller: pageController,
              count: numPages,
              effect: WormEffect(
                activeDotColor: agentappprimary,
                dotColor: Colors.grey,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ],
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        50), // Adjust the radius as needed
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20, // Adjust size as needed
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: agentappprimary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite_rounded,
                      size: 16,
                      color: agentapptextcolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
