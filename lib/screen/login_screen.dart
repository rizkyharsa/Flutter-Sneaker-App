import 'package:flutter/material.dart';
//import 'package:my_shop/screen/home_screen.dart';
import 'package:my_shop/screen/register_screen.dart';
import 'package:my_shop/widget/navbottombar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //NEW
      body: Container(
        padding: const EdgeInsets.all(30.0), //NEW
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //NEW
          children: <Widget>[
            Image.asset(
              'assets/images/login.png',
              width: 180,
              height: 180,
            ),
            const Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  hintStyle: TextStyle(color: Colors.black54),
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                hintStyle: TextStyle(color: Colors.black54),
                hintText: 'Password',
              )),
            ),
            GestureDetector(
                onTap: _onForgot,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?',
                      style: TextStyle(fontSize: 14, color: Colors.black54)),
                )),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              //NEW
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              minWidth: 300,
              height: 50,
              color: Colors.blueAccent,
              textColor: Colors.white,
              elevation: 5,
              onPressed: _onLogin,
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'New to My Shop?',
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(
                    onPressed: _onRegister,
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.blueAccent),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onLogin() {
    ('Login');
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const NavBottom()));
  }

  void _onRegister() {
    ('Register');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const RegisterPage()));
  }

  void _onForgot() {
    ('Forgot');
  }
}
