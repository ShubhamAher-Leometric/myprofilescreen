import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../menu.dart';
import '../agent_constants/agent_color_constants.dart';
import '../agent_widget_constants/custom_appbar_homepage_button.dart';
import '../agent_widget_constants/custom_button.dart';


class AgentProfileScreen extends StatefulWidget {
  const AgentProfileScreen({super.key});

  @override
  State<AgentProfileScreen> createState() => _AgentProfileScreenState();
}

class _AgentProfileScreenState extends State<AgentProfileScreen> {
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
                      'Edit Profile',
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage('assets/temp_img/agent_user.png'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
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
                              Icon(
                                Icons.perm_identity_rounded,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(color: Colors.transparent),
                            // Border color
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
                              Icon(
                                Icons.local_phone_outlined,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(color: Colors.transparent),
                            // Border color
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
                              Icon(
                                Icons.mail_outline_outlined,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(color: Colors.transparent),
                            // Border color
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
                                    hintText: 'Country',
                                    border: InputBorder
                                        .none, // Hide the default border of the text field
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.flag_outlined,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(color: Colors.transparent),
                            // Border color
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
                                    hintText: 'City',
                                    border: InputBorder
                                        .none, // Hide the default border of the text field
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.location_city_outlined,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(color: Colors.transparent),
                            // Border color
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
                                    hintText: 'Address',
                                    border: InputBorder
                                        .none, // Hide the default border of the text field
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.location_on_outlined,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(color: Colors.transparent),
                            // Border color
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
                                    hintText: 'Zipcode',
                                    border: InputBorder
                                        .none, // Hide the default border of the text field
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.local_post_office_outlined,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      AgentCustomElevatedButton(
                        title: 'Update',
                        color: agentappprimary,
                        textColor: agentapptextcolor,
                        size: MediaQuery.of(context).size.width / 2,
                        onPressed: () {},
                      ),
                      SizedBox(height: 10,),
                    ],
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
