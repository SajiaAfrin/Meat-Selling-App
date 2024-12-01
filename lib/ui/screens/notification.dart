import 'package:flutter/material.dart';
import 'package:meat_selling_app/ui/screens/widgets/plant_widget.dart';

import '../../constants.dart';
import '../../models/plants.dart';


class NotificationPage extends StatefulWidget {


  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/bell.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your Notification ',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
         
    );
  }
}
