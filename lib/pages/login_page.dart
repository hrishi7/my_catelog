import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
          Image.asset(
            "assets/images/login.png",
            fit:BoxFit.cover,
          ),
          const SizedBox(height:20.0),
          Text(
            "Welcome $name", 
            style: TextStyle(
              fontSize:28,
              fontWeight:FontWeight.bold
            )
          ),
        const SizedBox(height:20.0),
        Padding(
           padding: const EdgeInsets.symmetric(
             vertical: 16.0,
             horizontal: 32.0
            ),
           child: Column(children: [
              TextFormField(
              onChanged: (value){
                setState(() {
                  name = value;
                });
              },
              decoration: const InputDecoration(
                hintText: "Enter Username",
                labelText: "Username"
              ),
            ),
             TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter Password",
                labelText: "Password"
              ),
            ),
            const SizedBox(height:40.0),
            InkWell(
              onTap: () async{
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds:1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width:  changeButton ? 50:150,
                height:50,
               
                alignment: Alignment.center,
                child: changeButton ? 
                        Icon(Icons.done, color: Colors.white) :
                        Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white, 
                          fontWeight:FontWeight.bold,
                          fontSize:20
                        )),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape: changeButton ?BoxShape.circle:BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(
                            changeButton?50:8)
                        ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   style:TextButton.styleFrom(
            //     primary: Colors.redAccent, //background color of button
            //     elevation: 3, //elevation of button
            //     shape: RoundedRectangleBorder( //to set border radius to button
            //       borderRadius: BorderRadius.circular(5)
            //     ),
            //     padding: const EdgeInsets.all(10) ,
            //     minimumSize: const Size(100, 40),
            //   ),
            //   child: const Text("Login",
            //   style: TextStyle(color: Colors.white),
            // ))
           ],),
         )
        ]),
      )
    );
  }
}