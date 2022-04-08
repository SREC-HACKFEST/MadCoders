import 'dart:io';
import 'package:file_picker/file_picker.dart';
//import 'package:fltter_file_upload_login_screen/login_screen.dart';
import 'package:flutter/material.dart';
class Loginscrren extends StatefulWidget {
  const Loginscrren({Key? key}) : super(key: key);

  @override
  State<Loginscrren> createState() => _LoginscrrenState();
}

class _LoginscrrenState extends State<Loginscrren> {
  FilePickerResult?result;
  String?_fileName;
  PlatformFile?pickedfile;
  bool isLoading=false;
  File?fileToDisplay;
  void pickFile()async{
    try{
      setState(() {
        isLoading=true;
      });
      setState(() {
        isLoading=false;
      });
      result=await FilePicker.platform.pickFiles(
        type:FileType.any,
        allowMultiple: false,
      );
      if(result!=null){
        _fileName=result!.files.first.name;
        pickedfile=result!.files.first;
        fileToDisplay=File(pickedfile!.path.toString());


        print('File name $_fileName');
      }
    }catch(e){
      print(e);
    }
  }
  final GlobalKey<FormState> _formKey= GlobalKey();
  String radioItem= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Application'),
        backgroundColor: Colors.amber,
      ),
      body: Stack(
          children: <Widget>[
            Center(
                child: Card(
                  //shape: RoundedRectangleBorder(
                  //borderRadius: BorderRadius.circular(30.0),
                  //),
                    child: Container(
                        height: 600,
                        width: 450,
                        padding: EdgeInsets.all(16),
                        color: Colors.black12,
                        child: Form(
                            key: _formKey,
                            child: SingleChildScrollView(
                                child: Column(
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'Name'),
                                        keyboardType: TextInputType.name,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'E-mail'),
                                        keyboardType: TextInputType.emailAddress,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'Phone Number'),
                                        keyboardType: TextInputType.number,
                                      ),
                                      DefaultTextStyle.merge(
                                          child:Container(child: Align(
                                            alignment:Alignment(-1,-2),
                                              child: Text('Address')
                                          )),
                                          style:TextStyle(color:Colors.black87,fontSize: 20,),

                                      ),


                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Street Address'
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'City'
                                        ),
                                        keyboardType: TextInputType.text,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'State'
                                        ),
                                        keyboardType: TextInputType.streetAddress,
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Countrys'
                                        ),
                                        keyboardType: TextInputType.streetAddress,
                                      ),
                                      DefaultTextStyle.merge(
                                        child:Container(child: Align(
                                            alignment:Alignment(-1,-2),
                                            child: Text('Applying for position')
                                        )),
                                        style:TextStyle(color:Colors.black87,fontSize: 20),

                                      ),
                                      Container(
                                        width: 700,
                                        child:Row(
                                            mainAxisAlignment: MainAxisAlignment.start,children:<Widget>[
                                          Radio(value: 'Plumber', groupValue: radioItem, onChanged: (val){
                                            setState(() {});
                                            radioItem=val.toString();
                                          } ),
                                          Text('Plumber')
                                        ]
                                        ),
                                      ),
                                      Container(
                                        width: 700,
                                        child:Row(
                                            mainAxisAlignment: MainAxisAlignment.start,children:<Widget>[
                                          Radio(value: 'Electrician', groupValue: radioItem, onChanged: (val) {
                                            setState(() {});
                                            radioItem=val.toString();
                                          }),
                                          Text('Electrician')
                                        ]
                                        ),
                                      ),
                                      DefaultTextStyle.merge(
                                        child:Container(child: Align(
                                            alignment:Alignment(-1,-2),
                                            child: Text('Upload your licenses/certicates')



                                        )),
                                        style:TextStyle(color:Colors.black87,fontSize: 20),

                                      ),
                                      Container(
                                        child: isLoading
                                            ?CircularProgressIndicator()
                                            :TextButton(onPressed: () {
                                              pickFile();
                                        }, child: Text('PickFile')

                                        ),

                                      ),
                                      if(pickedfile!=null)
                                        SizedBox(
          height:1200,width:1000,child:Image.file(fileToDisplay!)
      ),
                                      DefaultTextStyle.merge(
                                        child:Container(child: Align(
                                            alignment:Alignment(-1,-2),
                                            child: Text('Upload your resume')



                                        )),
                                        style:TextStyle(color:Colors.black87,fontSize: 20),

                                      ),
                                      Container(
                                        child: isLoading
                                            ?CircularProgressIndicator()
                                            :TextButton(onPressed: () {
                                          pickFile();
                                        }, child: Text('PickFile')

                                        ),

                                      ),
                                      if(pickedfile!=null)
                                        SizedBox(
                                            height:1200,width:1000,child:Image.file(fileToDisplay!)
                                        ),
                                    ]
                                )
                            )
                        )
                    )
                )
            )
          ]
      ),
    );
  }
}

