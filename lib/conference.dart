import 'dart:ui';

import 'package:flutter/material.dart';

class Conference extends StatefulWidget {
  @override
  _ConferenceState createState() => _ConferenceState(); 

}

class Words{
  String enteredText1 = '';
  String enteredText2 = '';

  Words({required this.enteredText1, required this.enteredText2});
}

class _ConferenceState extends State<Conference>{
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Conference"),
        ),
        body: ListView.builder(
        itemCount: dataList.length,
          itemBuilder: (context, index){
          return Card(
            color: const Color.fromARGB(255, 209, 208, 208),
            child: ListTile(
              title: Text(
                dataList[index].enteredText1,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.delete),
              subtitle: Text(
                dataList[index].enteredText2,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          );
          },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        child: Icon(Icons.add),
      ),
    );
  }

  List<Words> dataList = [];

  void _showDialog(){
    
    showDialog(context: context, builder: (BuildContext context){
      String enteredText1 = '';
      String enteredText2 = '';
      String enteredText3 = '';

      return AlertDialog(

      // shape: RoundedRectangleBorder(
        
      //   borderRadius: BorderRadius.all(radius),
      //   ),
        title: Text('New Note'),
        actions: [
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
                  dataList.add(Words(enteredText1: enteredText1, enteredText2: enteredText2));
                });
              }, child: Text('Save'),),
            ],
          ),
        ],
      );
    });
  }
}

OutlineInputBorder myInputBoder() {
    return OutlineInputBorder(
      borderRadius:
      BorderRadius.all(Radius.elliptical(10, 5)),
      borderSide: BorderSide(
        color: Colors.grey.shade300,
        width: 3,
      ),
    );
  }

  OutlineInputBorder myFocusBoder() {
    return OutlineInputBorder(
      borderRadius:
      BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2,
      ),
    );
  }
