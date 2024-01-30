import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileDetailBox extends StatelessWidget {
  const ProfileDetailBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(155, 230, 229, 229),
              blurRadius: 20.0,
            ),
          ]),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Gap(15),
                Icon(
                  Icons.calendar_month_sharp,
                  size: 23,
                ),
                Gap(15),
                Text(
                  'My Booking',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
