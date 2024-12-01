import 'package:flutter/material.dart';
import 'package:meat_selling_app/ui/screens/widgets/profile_widget.dart';

import '../../constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: ExactAssetImage('assets/images/pro.jpg'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Constants.primaryColor,
                  width: 5.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * .3,
              child: Row(
                children: [
                  Text(
                    'Sajia Afrin',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //     height: 24,
                  //     child: Image.asset("assets/images/verified.png")),
                ],
              ),
            ),
            Text(
              'sajia@gmail.com',
              style: TextStyle(
                color: Constants.primaryColor.withOpacity(.3),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: size.height * .7,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ProfileWidget(
                    icon: Icons.person,
                    title: 'My Profile',
                  ),
                  ProfileWidget(
                    icon: Icons.settings,
                    title: 'Points',
                  ),
                  ProfileWidget(
                    icon: Icons.notifications,
                    title: 'Notifications',
                  ),
                  ProfileWidget(
                    icon: Icons.chat,
                    title: 'FAQs',
                  ),
                  ProfileWidget(
                    icon: Icons.share,
                    title: 'Share',
                  ),
                  ProfileWidget(
                    icon: Icons.logout,
                    title: 'Log Out',
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
