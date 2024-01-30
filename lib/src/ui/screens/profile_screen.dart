import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:romiee_mainproject/src/ui/widgets/profile/profile_details_box.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Profile')),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(181, 206, 206, 206),
                      blurRadius: 20.0,
                    )
                  ]),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name'),
                      Text('example@mail.com'),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  Gap(15),
                  ProfileDetailBox(),
                  Gap(10),
                  ProfileDetailBox(),
                  Gap(10),
                  ProfileDetailBox(),
                  Gap(15),
                  Text(
                    'General',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  Gap(15),
                  ProfileDetailBox(),
                  Gap(10),
                  ProfileDetailBox(),
                  Gap(10),
                  ProfileDetailBox(),
                  Gap(10),
                ],
              ),
            )
          ],
        ));
  }
}
