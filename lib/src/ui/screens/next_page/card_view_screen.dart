import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:romiee_mainproject/src/ui/widgets/card_view/secondary_image.dart';
import 'package:romiee_mainproject/src/ui/widgets/home_screen/room_card.dart';

class CardViewScreen extends StatelessWidget {
  const CardViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: const Icon(
          Icons.chevron_left,
          size: 30,
        ),
        title: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kochi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text('Edappaly,near lulu mall',
                  style: TextStyle(
                    fontSize: 13,
                    color: const Color.fromARGB(255, 209, 52, 91),
                  ))
            ]),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: null,
                icon: Icon(Icons.ios_share),
                iconSize: 21,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: null,
                icon: Icon(Icons.favorite_outline),
                iconSize: 21,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('asset/images/room1.jpeg')),
            ),
          ),
          const Gap(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SecondaryImage(),
              const SecondaryImage(),
              const SecondaryImage(),
              Container(
                height: 62,
                width: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/images/room1.jpeg')),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Text(
                    '+12',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
          const Text(
            'Rs.11,000',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          const Text(
            '1 bds 1 ba',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 209, 52, 91)),
          ),
          const Text(
            'near lulu mall edappally, kochi',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 44, 44, 44)),
          ),
          const Gap(6),
          const Divider(),
          const Gap(6),
          const Text(
            'Description',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const Gap(6),
          const Text(
            """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.""",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const Gap(14),
          Container(
            alignment: Alignment.centerLeft,
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 242, 243, 245)),
            child: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('Facilities'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Laundry Facilities'),
                Text('Swimming Pool'),
                Text('Refrigerator'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
