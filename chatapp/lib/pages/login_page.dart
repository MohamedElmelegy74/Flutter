import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/scholar.png'),
          const Text(
            'Scholar Chat',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          const Text(
            'Login',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          const TextField(
            /*email textfield */
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(20),
          const TextField(
            /*password textfield */
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.password,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
