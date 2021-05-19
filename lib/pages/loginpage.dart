import 'package:flutter/material.dart';
import 'package:flutter_tutorial_catelog_app/utils/myroutes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.contain),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Enter User Name", labelText: "User Name"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });

                    await Future.delayed(Duration(seconds: 3));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 3),
                    alignment: Alignment.center,
                    height: 50,
                    width: changeButton ? 50 : 200,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8)
                        //shape:
                        //    changeButton ? BoxShape.circle : BoxShape.rectangle,
                        ),
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                  ),
                ),
                /* ElevatedButton(
                    onPressed: () {
                      print("hi raj");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text("Login")),
                    */
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
