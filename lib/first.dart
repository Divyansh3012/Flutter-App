import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        resizeToAvoidBottomInset: false, // set it to false
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top: 150),
              child: Text(
                'Welcome\nBack Divyansh',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5,
                        right: 35,
                        left: 35),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              hintText: 'Email ',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RawMaterialButton(
                             child : Text('Sign In', style: TextStyle(fontSize: 22)),
                              fillColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)
                              ),
                              constraints: BoxConstraints.tightFor(height: 50, width: 100),
                              onPressed: () {
                               Navigator.pushNamed(context, 'register');
                              },

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Forgot Password', style: TextStyle(color: Colors.red , decoration: TextDecoration.underline)
                            )
                          ],
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
