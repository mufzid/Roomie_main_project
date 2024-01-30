import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Contact Us')),
        bottomNavigationBar: const GNav(
            color: Colors.black,
            activeColor: Color.fromARGB(255, 209, 52, 91),
            gap: 4,
            tabs: [
              GButton(
                onPressed: null,
                icon: Icons.home_filled,
                text: 'Home',
              ),
              GButton(
                onPressed: null,
                icon: Icons.favorite,
                text: 'Wishlist',
              ),
              GButton(
                onPressed: null,
                icon: Icons.support_agent,
                text: 'Contact Us',
              ),
              GButton(
                onPressed: null,
                icon: Icons.person,
                text: 'profile',
              ),
            ]),
        body: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Help',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const Gap(20),
              Container(
                height: 60,
                width: double.infinity,
                color: const Color.fromARGB(255, 176, 171, 171),
                child: const Row(
                  children: [
                    Gap(30),
                    Icon(Icons.help_outline),
                    Gap(10),
                    Text('Help center')
                  ],
                ),
              ),
              const Gap(20),
              Container(
                height: 60,
                width: double.infinity,
                color: const Color.fromARGB(255, 176, 171, 171),
                child: const Row(
                  children: [
                    Gap(30),
                    Icon(Icons.info_outline),
                    Gap(10),
                    Text('How it works ')
                  ],
                ),
              ),
              const Gap(20),
              const Text(
                'Contact Us',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const Gap(10),
              const Text(
                'If you have any queries, feel free to contact us ',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 40),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wechat,
                              color: Color.fromARGB(255, 79, 79, 79),
                              size: 50,
                            ),
                            Text(
                              'Live Chat',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 79, 79, 79)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 40),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wechat,
                              color: Color.fromARGB(255, 79, 79, 79),
                              size: 50,
                            ),
                            Text(
                              'Live Chat',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 79, 79, 79)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 40),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wechat,
                              color: Color.fromARGB(255, 79, 79, 79),
                              size: 50,
                            ),
                            Text(
                              'Live Chat',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 79, 79, 79)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 40),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wechat,
                              color: Color.fromARGB(255, 79, 79, 79),
                              size: 50,
                            ),
                            Text(
                              'Live Chat',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 79, 79, 79)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
