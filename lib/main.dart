import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                image: DecorationImage(
                  image: AssetImage('images/mountain.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'White Snow Valley',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 25,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.orange,
                    size: 20,
                  ),
                  Text(
                    'Nainital,Uttarakhand',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CardColumn(
                  icon: Icons.star_border,
                  text1: 'Rating',
                  text2: '3.8(4.2k)',
                ),
                CardColumn(
                  icon: Icons.alt_route,
                  text1: 'Distance',
                  text2: '3000km',
                ),
                CardColumn(
                  icon: Icons.food_bank,
                  text1: 'Restaurants',
                  text2: '108 avail.',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'The Snowy mountain hfjbjn wfbhwbfnw ehfbwe fhwbhf webf hf hew fhew hf whe fh efhj he fhj efh ef he fj hjf h fhe fhbehbfwbjfwbhurb hw fhwbfhbwnfb ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    'Book my Trip',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardColumn extends StatelessWidget {
  const CardColumn(
      {required this.icon, required this.text1, required this.text2});
  final IconData icon;
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(
              icon,
              color: Colors.orange,
            ),
          ),
        ),
        Text(
          text1,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w300,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
