import 'package:flutter/material.dart';
import 'package:my_shop/screen/login_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: const Icon(Icons.arrow_back),
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      // ),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/login.png',
              width: 180,
              height: 180,
            ),
            const Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  hintStyle: TextStyle(color: Colors.black54),
                  hintText: 'Full Name',
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  hintStyle: TextStyle(color: Colors.black54),
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  hintStyle: TextStyle(color: Colors.black54),
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: _onRegister,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              minWidth: 300,
              height: 50,
              color: Colors.blueAccent,
              textColor: Colors.white,
              elevation: 5,
              child: const Text('Register'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(
                  onPressed: _onLogin,
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onRegister() {
    ('Register');
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => const RegisterPage()));
  }

  void _onLogin() {
    ('Login');
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
