
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'conference.dart';

class FullScreen extends StatefulWidget{
  @override
  _FullScreenState createState() => _FullScreenState(); 
 
  }
class _FullScreenState extends State<FullScreen>{
      String enteredText1 = '';
      String enteredText2 = '';
      String enteredText3 = '';

  Widget build(BuildContext context){
      return Scaffold(
         appBar: AppBar(title: const Text('Pickup Details')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  enteredText1 = value;
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Enter title',
                  enabledBorder: myInputBoder(),
                  focusedBorder: myFocusBoder(),
                ),
              ),
              SizedBox(height: 16.0),

              TextField(
                onChanged: (value) {
                  enteredText2 = value;
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Enter description',
                  enabledBorder: myInputBoder(),
                  focusedBorder: myFocusBoder(),
                ),
              ),
              SizedBox(height: 16.0),

              TextField(
                onChanged: (value) {
                  enteredText3 = value;
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Instructions to Notice',
                  enabledBorder: myInputBoder(),
                  focusedBorder: myFocusBoder(),
                ),
                minLines: 5,
                maxLines: null,
              ),
              SizedBox(height: 16.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //Save Button
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('Cancel')),

              //Cancel Button
              TextButton(onPressed: (){
                setState(() {
                 // dataList.add(Words(enteredText1: enteredText1, enteredText2: enteredText2));
                });
              }, child: Text('Save'),),
            ],
          ),
            ],),)
        
        ,)
        
      );
    }
  }
  
