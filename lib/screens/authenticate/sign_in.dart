import 'package:flutter/material.dart';
import 'package:real_time_app/screens/home/HomeWithSidebar.dart';
import 'package:real_time_app/services/auth.dart';
import 'package:real_time_app/shared/constants.dart';
import 'package:real_time_app/shared/loading.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              title: Text("Sign In"),
            ),
            body: Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 17),
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/transparentbeamtel.png'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                textInputDecoration.copyWith(hintText: 'email'),
                            validator: (val) =>
                                val!.isEmpty ? 'Enter an email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: 'password'),
                            validator: (val) => val!.length < 6
                                ? 'password should be atleast 6 char'
                                : null,
                            onChanged: (val) {
                              setState(() => password = val);
                            },
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: TextButton(
                              onPressed: () async {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    loading = true;
                                  });
                                  dynamic result =
                                      await _auth.signInWithEmailAndPassword(
                                          email, password);

                                  if (result == null) {
                                    setState(() {
                                      loading = false;
                                      error =
                                          'could not sign in with those credencials';
                                    });
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeWithSidebar()));
                                  }
                                }
                              },
                              child: Text(
                                'sign in',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            error,
                            style: TextStyle(color: Colors.red, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
