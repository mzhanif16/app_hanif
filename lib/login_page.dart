import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late bool obscureText;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    obscureText = true; //jika true jadi hidden text
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 12,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.black54,
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              Material(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  elevation: 2,
                                  child: AspectRatio(
                                      aspectRatio: 7 / 1,
                                      child: Center(
                                          child: TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: 'Email',
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.all(8),
                                        ),
                                        controller: emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      )))),
                              Container(
                                  margin: const EdgeInsets.only(top: 16),
                                  child: Material(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      elevation: 2,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: AspectRatio(
                                                aspectRatio: 7 / 1,
                                                child: Center(
                                                    child: TextFormField(
                                                  decoration:
                                                      const InputDecoration(
                                                          hintText: 'Password',
                                                          border:
                                                              InputBorder.none,
                                                          contentPadding:
                                                              EdgeInsets.all(
                                                                  8)),
                                                  controller:
                                                      passwordController,
                                                  obscureText: obscureText,
                                                ))),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.remove_red_eye,
                                              color: !obscureText
                                                  ? Colors.black
                                                      .withOpacity(0.3)
                                                  : Colors.black,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                obscureText = !obscureText;
                                              });
                                            },
                                          )
                                        ],
                                      ))),
                              Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  width: MediaQuery.of(context).size.width,
                                  child: MaterialButton(
                                    onPressed: () {
                                      // loginValidation(context);
                                    },
                                    child: const Text("Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16)),
                                    color: const Color(0xFFF58634),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                    padding: const EdgeInsets.all(16),
                                  )),
                            ],
                          )),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black87,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
