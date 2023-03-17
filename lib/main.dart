import 'package:flutter/material.dart';
import 'package:login/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: login(),
    );
  }
}


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            ScreenBackground(context),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                      padding:EdgeInsets.all(50),
                      child: Text("Login with Email",style: Head1Text(Colors.black),)),
                  SizedBox(height: 15,),
                  Text("Email",style: Head7Text(Colors.black),),
                  SizedBox(height: 15,),
                  TextFormField(decoration:InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0),
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.orangeAccent,

                      ),
                    ),
                    focusedBorder:  const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.green, width: 1),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 0.0),
                    ),
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(50)),
                    hintText: "johndoe@gmail.com",

                  ),),
                  SizedBox(height: 15,),
                  Text("Password",style: Head7Text(Colors.black),),
                  SizedBox(height: 15,),
                  TextFormField(
                    decoration:InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.lock_outline,
                          color: Colors.blueAccent

                        ),
                      ),
                      focusedBorder:  const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green, width: 1),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white, width: 0.0),
                      ),
                      border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(20))),
                      hintText: "*******",

                    ) ,),
                  SizedBox(height: 15,),
                  Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Login"),
                            style:AppButtonStyle()
                          ),
                        )
                      ],
                  ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          InkWell(
                              onTap: (){

                              },
                            child: Text("or Login with phone number",style: Head7Text(Colors.amber),),
                          ),
                          SizedBox(height: 15,),
                          InkWell(
                            onTap: (){

                            },
                            child: Text("If you are finding any problem while logging",style: Head7Text(Colors.transparent),),
                          )

                        ],
                      ),
                    )




                ],
              ),

          )
        ],

      ),


    );
  }
}


