import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.deepPurple[500],
        appBarTheme: AppBarTheme(
          color: Colors.orange,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          systemOverlayStyle:
          SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome Back,',
              style: TextStyle(
                color: Colors.deepPurple[200],
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              "Login back into your account",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            SignInForm(),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode1.addListener(() {
      setState(() {});
    });
    focusNode2.addListener(() {
      setState(() {});
    });
    focusNode3.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            TextFormField(
              focusNode: focusNode1,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 18.0,
                  color: focusNode1.hasFocus
                      ? Colors.orange
                      : Colors.deepPurple[300],
                ),
                labelText: "Email",
                hintText: "Enter your email",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                  gapPadding: 10.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple[300],
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                  gapPadding: 10.0,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
              width: double.infinity,
            ),
            TextFormField(
              obscureText: true,
              focusNode: focusNode2,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 18.0,
                  color: focusNode2.hasFocus
                      ? Colors.orange
                      : Colors.deepPurple[300],
                ),
                labelText: "Password",
                hintText: "Enter your password",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                  gapPadding: 10.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple[300],
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                  gapPadding: 10.0,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
              width: double.infinity,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                focusNode: focusNode3,
                onPressed: () {},
                child: Text("Click Me"),
                style: ElevatedButton.styleFrom(
                  primary: focusNode3.hasFocus
                      ? Colors.deepPurple[300]
                      : Colors.orange,
                  //shadowColor: focusNode3.hasFocus ? Colors.lightGreen : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
* ElevatedButton(
                onPressed: () {},
                child: Text("Click Me"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.white24),
                    ),
                  ),
                ),
              ),
* */
