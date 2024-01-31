import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EnquireScreen extends StatelessWidget {
  const EnquireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enquire Now')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.5),
            ),
            child: Row(children: [
              Container(
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/images/room1.jpeg')),
                ),
              ),
              Gap(15),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rs.11,000',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '1bds 1bs',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 209, 52, 91)),
                  ),
                  Text(
                    'near lulu mall edappally, kochi',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 44, 44, 44)),
                  ),
                ],
              )
            ]),
          ),
          const Gap(20),
          SizedBox(
            height: 50,
            child: TextFormField(
                decoration: InputDecoration(
              labelText: 'Full Name',
              hintText: 'Your Full Name',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 92, 92, 92),
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 206, 0, 58),
                ),
              ),
            )),
          ),
          const Gap(10),
          SizedBox(
            height: 50,
            child: TextFormField(
                decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'name@gmail.com',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 92, 92, 92),
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 206, 0, 58),
                ),
              ),
            )),
          ),
          Gap(10),
          SizedBox(
            height: 70,
            child: TextFormField(
                maxLength: 10,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  hintText: 'Your Mobile Number',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 92, 92, 92),
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 206, 0, 58),
                    ),
                  ),
                )),
          ),
          // end
          const Gap(10),
          SizedBox(
            height: 55,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 209, 52, 91),
                  )),
              onPressed: null,
              child: const Text(
                'Enquire',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
