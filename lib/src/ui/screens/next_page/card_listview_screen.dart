import 'package:flutter/material.dart';
import 'package:romiee_mainproject/src/ui/widgets/home_screen/room_card.dart';

class CardListViewScreen extends StatelessWidget {
  const CardListViewScreen({super.key});

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
          title: SizedBox(
            height: 35,
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(167, 206, 0, 58),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 92, 92, 92),
                      width: 0.5,
                    ),
                  ),
                  hintText: 'kochi'),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.filter_alt_outlined),
                  iconSize: 21,
                ),
              ),
            )
          ],
        ),
        body: Container(
          color: const Color.fromARGB(255, 252, 247, 247),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RoomCard(),
                  RoomCard(),
                  RoomCard(),
                ],
              ),
            ),
          ),
        ));
  }
}
