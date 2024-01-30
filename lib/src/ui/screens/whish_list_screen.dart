import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:romiee_mainproject/src/ui/widgets/wishlist/whish_card.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Wishlist')),
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
        body: Container(
          color: const Color.fromARGB(255, 252, 247, 247),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  WishCard(),
                  WishCard(),
                  WishCard(),
                ],
              ),
            ),
          ),
        ));
  }
}
