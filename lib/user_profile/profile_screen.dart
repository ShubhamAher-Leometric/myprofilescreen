import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_property/constants/color_constants.dart';
import 'package:my_property/widget_constants/custom_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Center(
          child: Text('Edit Profile',
            style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w700,
                color: apptextcolor2),),
      ),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              //   child: Row(
              //     children: [
              //       // Container(
              //       //   height: 50,
              //       //   width: 50,
              //       //   decoration: BoxDecoration(
              //       //     color: Colors.grey.withOpacity(0.2),
              //       //     borderRadius: BorderRadius.circular(
              //       //         50),
              //       //   ),
              //       //   child: IconButton(
              //       //     icon: const Icon(
              //       //       Icons.arrow_back_ios_new_rounded,
              //       //       size: 20, // Adjust size as needed
              //       //     ),
              //       //     onPressed: () {
              //       //       Navigator.pop(context);
              //       //     },
              //       //   ),
              //       // ),
              //       // Spacer(),
              //       // Text('Edit Profile',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: apptextcolor2),),
              //       // Spacer(),
              //       // Container(height: 50,width: 50,),
              //     ],
              //   ),
              // ),
              SizedBox(height: 30,),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/ca61/c02f/874103e1bdba2fe0beb2ad82d926aadf?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DrmfgjAOhWQ8sfgNOMlxQlTnDyWuQdSJXFZJlPjTCVxLwN2C5kN-dVIFVbiLWmD7nkKwGDCYCcqJ53ptH6G9ZkTNVF1028yVV7YPyoKBuN0XAMyMgYb5736b9613xm~xyMIfxnahgWd6nvndFL3mLp3Cqf1chbiPRoZjEEs9vqEp5f3gEnKgOYhEXh28TDd1vQmtR1GsqDTSkYkHwBSK-5O4QmuBHCCqwSczbfcU6NHt6hw749SXLhLjLG5Jv8Ulta9XCD9X3r0R7JHgnqF2t~1KZTEW0~7O3NXiO5KEWWPe~ugAQqqw8Z8AxPjSlryTQ29nALELThJ8O2jH4bIl1Q__'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        border: Border.all(color: Colors.transparent), // Border color
                        borderRadius: BorderRadius.circular(
                            20), // Border radius to make it circular
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Mathew Adam',
                                border: InputBorder
                                    .none, // Hide the default border of the text field
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.perm_identity_rounded,),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        border: Border.all(color: Colors.transparent), // Border color
                        borderRadius: BorderRadius.circular(
                            20), // Border radius to make it circular
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '+62 112-3288-9111 ',
                                border: InputBorder
                                    .none, // Hide the default border of the text field
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.local_phone_outlined,),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        border: Border.all(color: Colors.transparent), // Border color
                        borderRadius: BorderRadius.circular(
                            20), // Border radius to make it circular
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Mathew@email.com',
                                border: InputBorder
                                    .none, // Hide the default border of the text field
                              ),
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.mail_outline_outlined,),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 60,),
                  CustomElevatedButton(title: 'Update', color: appprimary,
                      textColor: apptextcolor,
                      size: MediaQuery.of(context).size.width/2,
                      onPressed: (){})
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
