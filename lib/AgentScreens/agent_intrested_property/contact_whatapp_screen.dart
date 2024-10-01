import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../agent_constants/agent_color_constants.dart';
import '../agent_widget_constants/custom_button.dart';
import '../agent_widget_constants/cutom_appbar_button.dart';

class ContactWhatappScreen extends StatefulWidget {
  const ContactWhatappScreen({super.key});

  @override
  State<ContactWhatappScreen> createState() => _ContactWhatappScreenState();
}

class _ContactWhatappScreenState extends State<ContactWhatappScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  AgentCustomAppbarBackButton(),
                  Spacer(),
                  Text(
                    "Profile",
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
            Container(height: MediaQuery.of(context).size.height/1.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height/30,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage('assets/user_image.png'),
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
                ],
              ),
            ),
            AgentCustomElevatedButton(
              title: 'Contact on whatsapp',
              color: agentappprimary,
              textColor: agentapptextcolor,
              size: MediaQuery.of(context).size.width / 1.5,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
