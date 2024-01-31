import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CityCard extends StatelessWidget {
  const CityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('asset/images/bng.jpg'))),
        width: 170,
        height: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 25,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text(
                'Bengalore',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
