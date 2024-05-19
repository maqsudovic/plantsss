import 'package:flutter/material.dart';
import 'package:plants_app/items.dart';
import 'package:plants_app/secondpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 350,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/nature.png'),
                  fit: BoxFit.cover)),
        ),
        Align(
          alignment: const Alignment(0, 0),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFC97758)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));

                      },
                      child: Text(
                        'Autumn Day',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Text(
                      'Hello Jack',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3EHcdeK9dEJvn5nbJSCpOkwzs7CaGU1g8R90Briq3CQ&s'),
                      )),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0, 1),
          child: Container(
            width: double.infinity,
            height: 400,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    firstitems(colors: Color(0xFFF5EBC9), id: 0),
                    firstitems(colors: Color(0xFFDDA391), id: 1),
                    firstitems(colors: Color(0xFFD7E5E6), id: 2),
                    firstitems(colors: Color(0xFFEECCAF), id: 3),
                  ],
                ),
                SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      'Day',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Schedule',
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      items(0),
                      items(1),
                      items(2),
                      items(3),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Wedding',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Birthdays',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'party',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '03:50 time',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      '03:50 time',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      '03:50 time',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
