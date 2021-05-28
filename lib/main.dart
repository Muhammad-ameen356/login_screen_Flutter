import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(38, 38, 38, 0.4),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromRGBO(251, 28, 155, 1),
                Color.fromRGBO(79, 18, 158, 1)
              ])),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //       begin: Alignment.topCenter,
                    //       end: Alignment.bottomCenter,
                    //       colors: [
                    //         Color.fromRGBO(255, 255, 255, 0.7),
                    //         Color.fromRGBO(255, 255, 255, 0.7)
                    //       ]),
                    //   borderRadius: BorderRadius.circular(30),
                    // ),
                    child: Image.asset(
                  'assets/images/login1.png',
                  width: 200,
                )),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink.shade100,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    hintText: 'User Name or Email',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                        fontWeight: FontWeight.w500),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.security,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink.shade100,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("Forget Password",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 210,
                  height: 40,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.login_rounded,
                      color: Colors.white,
                    ),
                    label: Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    onPressed: () {},
                    // style: TextStyle(color: Colors.red),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                ),
                CheckboxListTile(
                  activeColor: Colors.white,
                  checkColor: Colors.pink,
                  title: Text("Remember Me",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  value: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool value) {}, //  <-- leading Checkbox
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
