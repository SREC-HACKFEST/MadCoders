import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:peservices/ForgetPassword.dart';
import 'package:peservices/Option.dart';
import 'package:peservices/main.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login ({Key? key}) : super(key: key);

  static const String _title = 'P&E Services';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),backgroundColor: Colors.amber,),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, top: 15, bottom: 0),

        //padding: EdgeInsets.symmetric(horizontal: 15),
        //padding: const EdgeInsets.all(10),

        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 325, bottom: 0),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/img.png"),
                        fit: BoxFit.cover)
                ),

                child: const Text(
                  'Login',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                )),

            Container(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 35, bottom: 0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>forget()),);
                //signup screen
              },

              child: const Text('Forgot Password',
                  style: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                  textAlign: TextAlign.right),


            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(120, 5, 130, 10),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Option()),);

                  },
                )
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w900,),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()),);
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )
    );
  }
}