import 'package:flutter/material.dart';

class CityLabel extends StatelessWidget {
  const CityLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 2, 10, 2),
      child: Container(
        alignment: Alignment.center,
        width: 160,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 187, 185, 185),
                blurRadius: 0.5,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 255, 255, 255)),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Thiruvanthapuram',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 209, 52, 91),
            ),
          ),
        ),
      ),
    );
  }
}
