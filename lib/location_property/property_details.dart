import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/constants/color_constants.dart';
import 'package:my_property/widget_constants/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widget_constants/cutom_appbar_button.dart';

class PropertyDetailsPage extends StatefulWidget {
  const PropertyDetailsPage({super.key});

  @override
  State<PropertyDetailsPage> createState() => _PropertyDetailsPageState();
}

class _PropertyDetailsPageState extends State<PropertyDetailsPage> {
  final PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            buildAutoScrollingContainer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(children: [
                Text('Wings Tower',   style: TextStyle(
                    fontSize: 22,
                    color: apptextcolor2,
                    fontWeight: FontWeight.w700),),
                Spacer(),
                Text('\$ 220'  , style: TextStyle(
                    fontSize: 22,
                    color: apptextcolor2,
                    fontWeight: FontWeight.w700),),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: apptextcolor2,
                    size: 14,
                  ),
                  Text(
                    'Jakarta, Indonesia',
                    style: TextStyle(
                        fontSize: 14,
                        color: apptextcolor2,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2.8,
                    height: 55,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: appprimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            textStyle: const TextStyle(
                              fontFamily: 'MavenPro',
                              fontSize: 20,
                            )),
                        onPressed: (){},
                        child: Center(
                          child: Text(
                            'i am intrested',
                            style: TextStyle(
                                color: apptextcolor,
                                fontFamily: 'OpenSans-SemiBold',
                                fontSize: 12),
                          ),
                        )),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: appprimary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset('assets/360.png',),
                  ),
              ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Align(
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                      'assets/details_icon/img.png',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Bali',
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                      'assets/details_icon/img_1.png',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Jakarta',
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                      'assets/details_icon/img_2.png',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Indonesia',
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.red,
                                    backgroundImage: AssetImage(
                                      'assets/temp_img/grid_scroll.png',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Maldives',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: 5,
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
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
          pageController.animateToPage(
            nextPage,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          ).then((_) => autoScroll());
        }
      });
    }
    autoScroll();

    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
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
            ),
            SizedBox(height: 16),
            SmoothPageIndicator(
              controller: pageController,
              count: numPages,
              effect: WormEffect(
                activeDotColor: appprimary,
                dotColor: Colors.grey,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ],
        ),
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
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
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: appprimary,
                    borderRadius: BorderRadius.circular(50),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
