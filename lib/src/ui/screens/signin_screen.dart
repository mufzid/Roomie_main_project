import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:romiee_mainproject/src/ui/widgets/signIn/form_container.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 300,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromARGB(255, 209, 52, 91), Colors.white])),
          child: const Text(
            'Roomie',
            style: TextStyle(
                color: Color.fromARGB(255, 42, 42, 42),
                fontSize: 45,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const FromCondainerWidget(
                hintText: "Email",
                isPasswordField: false,
              ),
              const FromCondainerWidget(
                hintText: "Password",
                isPasswordField: true,
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 209, 52, 91),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  width: double.infinity,
                  height: 50,
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
        ),
      ],
    ));
  }
}
