import 'package:flutter/material.dart';
import 'package:validation_app/fullscreen_input.dart';

class Conference_User extends StatefulWidget {
  @override
  _ConferenceUserState createState() => _ConferenceUserState(); 

}

class Words{
  String enteredText1 = '';
  String enteredText2 = '';

  Words({required this.enteredText1, required this.enteredText2});
}

class _ConferenceUserState extends State<Conference_User>{
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Conference"),
        ),
        body: ListView.builder(
        itemCount: dataList.length,
          itemBuilder: (context, index){
          return Card(
            color: Colors.grey,
            child: ListTile(
              title: Text(
                dataList[index].enteredText1,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
        onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(
                    builder: (context) => FullScreen(),
                    fullscreenDialog: true)),
        child: Icon(Icons.add),
      ),
    );
  }

  List<Words> dataList = [];

  
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
