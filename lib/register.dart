import 'package:flutter/material.dart';
import 'package:real_time_app/HomeWithSidebar.dart';
import 'package:real_time_app/auth.dart';
import 'package:real_time_app/shared/constants.dart';
import 'package:real_time_app/shared/loading.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading = false;

  //text filed text
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              title: Text("Create Acount"),
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
                                      await _auth.registerWithEmailAndPassword(
                                          email, password);

                                  if (result == null) {
                                    setState(() {
                                      loading = false;
                                      error = 'please supply a valid email';
                                    });
                                  } else {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeWithSidebar()));
                                  }
                                }
                              },
                              child: Text(
                                'register',
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
