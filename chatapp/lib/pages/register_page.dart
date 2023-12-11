import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/custom_btn.dart';
import 'package:chatapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  static String id = 'RegisterPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          /*use ListView 3l4an law fe akter mn FildText n3rf n3ml scroll  */
          children: [
            Image.asset('assets/images/scholar.png'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            const Row(
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Gap(9),
            // const SizedBox(
            //   height: 10,
            // ),

            CustomTextFild(
              hintText: 'Emile',
              icon: const Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
            // const SizedBox(
            //   height: 8,
            // ),
            const Gap(9),
            CustomTextFild(
              hintText: 'Password',
              icon: const Icon(
                Icons.password,
                color: Colors.white,
              ),
            ),
            const Gap(9),
            CustomTextFild(
              hintText: 'Password',
              icon: const Icon(
                Icons.password,
                color: Colors.white,
              ),
            ),
            const Gap(9),
            CustomTextFild(
              hintText: 'Password',
              icon: const Icon(
                Icons.password,
                color: Colors.white,
              ),
            ),
            const Gap(9),
            CustomTextFild(
              hintText: 'Password',
              icon: const Icon(
                Icons.password,
                color: Colors.white,
              ),
            ),
            const Gap(9),
            CustomTextFild(
              hintText: 'Password',
              icon: const Icon(
                Icons.password,
                color: Colors.white,
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            const Gap(20),
            CustomBtn(
              btnColor: Colors.white,
              btnText: 'Register',
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have account ?',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '  Login',
                    style: TextStyle(color: Color(0xffC7EDE6)),
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
