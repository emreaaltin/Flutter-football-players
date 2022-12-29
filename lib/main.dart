import 'dart:math';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Players',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

List<String> emre = ["emre", "altın", "asfas", "214214"];
final _random = new Random();
var element = emre[_random.nextInt(emre.length)];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Players"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Image(
              image: AssetImage('assets/images/top.gif'),
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    yanitIndex = Random().nextInt(14) + 1;
                  });
                },
                icon: Icon(Icons.favorite),
                label: Text(
                  "Arjantin Doğumlu Futbolcular",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 95, 163, 190),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      yanitIndex = Random().nextInt(20) + 14;
                    });
                  },
                  icon: Icon(Icons.favorite),
                  label: Text(
                    "Türkiye Doğumlu Futbolcular",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red)),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      yanitIndex = Random().nextInt(20) + 35;
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  label: Text(
                    "İngiltere Doğumlu Futbolcular",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255))),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Text(yanitlar[yanitIndex],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> yanitlar = [
  "Butonlara Tıkla",
  "Gabriel Batistuta",
  "Edgardo Bauza",
  "Fernando Belluschi",
  "Lucas Bernardi",
  "Marcelo Bielsa",
  "Ángel Bossio",
  "Braian Lluy",
  "Brian Benítez",
  "Miguel Ángel Brindisi",
  "Bruno Zuculini",
  "Diego Buonanotte",
  "Nicolás Burdisso",
  "Germán Burgos",
  "Jorge Burruchaga",
  "Ahmet Suphi Evke",
  "Ahmet Şahin",
  "Ahmet Şahin",
  "Ahmet Yakak",
  "Ahmethan Köse",
  "Aytaç Ak",
  "Metin Akan",
  "Emre Akbaba",
  "Nihat Akbay",
  "Furkan Akbulut",
  "Ali Akburç",
  "Artun Akçakın",
  "Murat Akça",
  "İlyas Akçay",
  "Önder Akdağ",
  "İbrahim Akdağ",
  "Erdal Akdarı",
  "Uğur Akdemir",
  "Suat Akdereli",
  "Tunahan Akdoğan",
  "Nick Barmby",
  "Geoff Barnett",
  "Graham Barnett",
  "John Barnwell",
  "Gareth Barry",
  "Tony Barton",
  "Cliff Bastin",
  "Stuart Baxter",
  "James Beattie ",
  "Kevin Beattie",
  "David Beckham",
  "Colin Bell",
  "Jim Bellamy",
  "Amos",
  "Ben Brereton",
  "Foster",
  "Gibson",
  "Godfrey",
  "Johnson",
  "Ben Mee",
];
int yanitIndex = 0;
