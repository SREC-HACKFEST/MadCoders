import 'package:flutter/material.dart';
import 'package:peservices/RegistrationForm.dart';
class Option extends StatefulWidget {
  const Option({ Key? key }) : super(key: key);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      //extendBodyBehindAppBar: true,
        appBar: AppBar(centerTitle: true, title: Text("P&E SERVICES",),
          //backgroundColor: Colors.transparent,
          elevation: 0,


        ),
        backgroundColor: Colors.white,
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/p.jpg"),
                    fit: BoxFit.cover)
            ),

            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20.0 ),
              children: <Widget>[
                const SizedBox(height: 70.0,),

                Center(
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: ElevatedButton( child: Text("PLUMBER",),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),
                        );},
                        style: ElevatedButton.styleFrom(primary: Color.fromARGB(
                            255, 137, 98, 158),padding: EdgeInsets.all(80.0)
                            ,textStyle: TextStyle(
                                color: Colors.amber,fontWeight: FontWeight.bold
                            )

                        ),),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton( child: Text("ELECTRICIAN"),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),
                        );},
                        style: ElevatedButton.styleFrom(primary: Color.fromARGB(
                            255, 137, 98, 158),padding: EdgeInsets.all(80.0)
                            ,textStyle: TextStyle(
                                color: Colors.amber,fontWeight: FontWeight.bold
                            )

                        ),),
                    ),
                  ),
                )


              ],)));
  }
}