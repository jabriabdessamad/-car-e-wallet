import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_time_app/HomePage.dart';
import 'package:real_time_app/HomeWithSidebar.dart';
import 'package:real_time_app/authenticate.dart';
import 'package:real_time_app/newuser.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return either Home or Authenticate widget

    final user = Provider.of<NewUser?>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return homeWithSidebar();
    }
  }
}
