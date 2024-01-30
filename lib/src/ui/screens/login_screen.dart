import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:romiee_mainproject/src/ui/widgets/signIn/form_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(25),
                const Text(
                  'Log in or sign up',
                  style: TextStyle(
                      color: Color.fromARGB(255, 42, 42, 42),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Let's get started by filling out the form below.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(183, 0, 0, 0)),
                ),
                const Gap(20),
                Column(
                  children: [
                    const FromCondainerWidget(
                      hintText: "Email",
                      isPasswordField: false,
                    ),
                    const FromCondainerWidget(
                      hintText: "Password",
                      isPasswordField: true,
                    ),
                    const FromCondainerWidget(
                      hintText: "Confirm Password",
                      isPasswordField: true,
                    ),
                    const Gap(15),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 209, 52, 91),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    const Gap(15),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const Divider(),
                        Container(
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          height: 32,
                          width: 70,
                          child: const Text(
                            'OR',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                    Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.4),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.g_mobiledata_sharp,
                            size: 35,
                          ),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 22, 22, 22)),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Didnt have an account then '),
                        Text(
                          'SignUp',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 209, 52, 91),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
