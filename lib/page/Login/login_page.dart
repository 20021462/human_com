// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:human_com/page/Login/widget/login_button.dart';
import 'package:human_com/page/Login/widget/login_button_svg.dart';
import 'package:human_com/page/Login/widget/login_button_au.dart';
import 'package:human_com/page/Login/widget/form_field.dart';
import 'package:human_com/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visiblePassword = false;
  @override
  void initState() {
    super.initState();
    visiblePassword = false;
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 110),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF4B6E7B),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              IntrinsicHeight(
                child: SizedBox(
                  width: 1440,
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly, //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment
                        .center, //Center Row contents vertically,

                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Or login with",
                              style: TextStyle(
                                color: Color(0xff4B6E7B),
                                fontSize: 45,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            LoginButtonSVG(
                                title: 'Google account',
                                icon: 'assets/imgs/icons8-google.svg',
                                onPressed: () {}),
                            const SizedBox(
                              height: 15,
                            ),
                            LoginButtonSVG(
                                title: 'Phone number',
                                icon: 'assets/imgs/phone-icon.svg',
                                onPressed: () {}),
                            const SizedBox(
                              height: 15,
                            ),
                            LoginButtonSVG(
                                title: 'Face ID',
                                icon: 'assets/imgs/face_id_icon.svg',
                                onPressed: () {}),
                            const SizedBox(
                              height: 15,
                            ),
                            LoginButton(
                              title: 'Fingerprint',
                              icon: Icons.fingerprint,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        width: 120,
                        thickness: 1,
                        color: Color.fromRGBO(75, 110, 123, 50),
                      ),
                      Expanded(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: LoginFormField(
                                password: false,
                                label: "Username",
                                hint: "Enter your Email/Phone number",
                                icon: Icon(
                                  Icons.account_circle,
                                  size: 60,
                                ),
                                onPressed: () {},
                              ),
                            ),

                            const SizedBox(
                              height: 30,
                            ),
                            // Password field
                            Center(
                              child: LoginFormField(
                                password: !visiblePassword,
                                label: "Password",
                                hint: "Enter your password",
                                icon: IconButton(
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      visiblePassword = !visiblePassword;
                                    });
                                  },
                                  icon: Icon(
                                    visiblePassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 60,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            Container(
                              alignment: Alignment.topRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forget your password?",
                                  style: TextStyle(
                                    color: Color(0xff4B6E7B),
                                    fontSize: 35,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            LoginButt(
                              title: "Login",
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,
                crossAxisAlignment:
                    CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                  Text(
                    "If you don't have an account",
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign-up",
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4B6E7B),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
