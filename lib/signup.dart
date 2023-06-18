import 'package:flutter/material.dart';
import 'package:validation_app/main.dart';

void main() {
  runApp(const MyApp());
}

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
                  children: [
            Text('Register',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //F.Name
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText:"First Name"),
                    ),
                  //L.Nmae
                    TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText:"Last Name"),
                    ),
                  //Email
                    TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText:"Email"),
                    ),
                  //Password
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(labelText:"Password"),
                    ),
                  //Confirm Password
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(labelText:"Confirm Password"),
                    ),
                  ]
                  ),
                  ),
                ],
               ),
            )
        ),
     );
    }
}
