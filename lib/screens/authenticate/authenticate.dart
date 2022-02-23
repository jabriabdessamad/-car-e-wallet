import 'package:flutter/material.dart';
import 'package:real_time_app/screens/home/HomePage.dart';
import 'package:real_time_app/screens/home/HomeWithSidebar.dart';
import 'package:real_time_app/screens/authenticate/register.dart';
import 'package:real_time_app/screens/authenticate/register.dart';
import 'package:real_time_app/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  void openHomePage() {
    Navigator.pushNamed(context, '/homePage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/sideImg.png'))),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "06:22 AM",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/cloud.png'))),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "34° C",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'avenir',
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                Text(
                  "dec 1, 2021 | Wednesday",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/beamtel2.PNG'))),
                        ),
                        Text(
                          " Car E-Wallet",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'ubunto',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Open An Account For \nDigital Car E-Wallet solutions.\nInstant Payouts.\n\nJoin For Free",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffffac30),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text(
                      "Create an account",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
