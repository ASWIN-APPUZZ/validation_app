import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:password_field_validator/password_field_validator.dart';
import 'package:validation_app/Index.dart';
import 'package:validation_app/signup.dart';
import './pallette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  final TextEditingController passwordTextController = TextEditingController();

  @override
  _LogInPageState createState() => _LogInPageState();
}

//Header
class _LogInPageState extends State<LogInPage> {
  String _errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email validation'),
      ),

      //Body
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Email
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (val) {
                validateEmail(val);
              },
            ),

            //Password
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: widget.passwordTextController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (val) {},
            ),

            //Password Validation
            Padding(
              padding: const EdgeInsets.all(15),
              child: PasswordFieldValidator(
                minLength: 8,
                uppercaseCharCount: 2,
                lowercaseCharCount: 1,
                numericCharCount: 3,
                specialCharCount: 2,
                defaultColor: Colors.black,
                successColor: Colors.green,
                failureColor: Colors.red,
                controller: widget.passwordTextController,
              ),
            ),

            //Button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  print("Sign in Clicked");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IndexPage()),
                  );
                },
                child: Text('Sign in'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            ),

            //Forgot Password
            TextButton(
                onPressed: () {
                  print("Password link is send to email");
                },
                child: Text('Forgot Password')),

            //Register
            TextButton(
                onPressed: () {
                  print("Sign Up clicked");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup()),
                  );
                },
                child: Text('Dont have an account? Sign up')),
          ],
        ),
      ),
    );
  }

  //Email Validation
  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}
