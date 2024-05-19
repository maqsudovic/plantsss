import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class firstitems extends StatelessWidget {
  Color colors;
  int id;
  firstitems({super.key, required this.colors, required this.id});
  List images = [
    'https://www.pngall.com/wp-content/uploads/2016/04/Umbrella-Free-Download-PNG.png',
    'https://www.pngall.com/wp-content/uploads/2016/04/Umbrella-Free-Download-PNG.png',
    'https://www.pngall.com/wp-content/uploads/2016/04/Umbrella-Free-Download-PNG.png',
    'https://www.pngall.com/wp-content/uploads/2016/04/Umbrella-Free-Download-PNG.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(15)),
      child: Image.network(
        images[id],
        fit: BoxFit.fill,
        width: 30,
        height: 30,
      ),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class items extends StatelessWidget {
  int id;
  items(this.id, {super.key});
  List plantsphoto = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTChfhN41fQn0BaOaZ50n8GuYK2NEheyT__v_yanrpGvoCn3TLdAuQavw23b8lgm7YfRA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTChfhN41fQn0BaOaZ50n8GuYK2NEheyT__v_yanrpGvoCn3TLdAuQavw23b8lgm7YfRA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTChfhN41fQn0BaOaZ50n8GuYK2NEheyT__v_yanrpGvoCn3TLdAuQavw23b8lgm7YfRA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTChfhN41fQn0BaOaZ50n8GuYK2NEheyT__v_yanrpGvoCn3TLdAuQavw23b8lgm7YfRA&usqp=CAU'
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(plantsphoto[id]), fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

class Secondpageitem extends StatelessWidget {
  List rocketsphoto = [
    'assets/images/nature2.png',
    'assets/images/nature.png',
    'assets/images/nature2.png'
  ];
  String names;
  int id;
  VoidCallback func;
  Secondpageitem({required this.names, required this.id, required this.func});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.shade100),
                ),
                Align(
                    alignment: Alignment(0, 0),
                    child: Image.asset(
                      rocketsphoto[id],
                      width: 70,
                      height: 70,
                    ))
              ],
            ),
            Column(
              children: [
                Text(
                  names,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('\$1200'),
              ],
            ),
            TextButton(onPressed: func, child: const Text('View'))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 3,
          color: Colors.black,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
