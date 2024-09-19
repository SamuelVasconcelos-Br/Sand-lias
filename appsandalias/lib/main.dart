import 'package:appsandalias/AnimalCard.dart';
import 'package:appsandalias/animals.dart';
import 'package:appsandalias/praias.dart';
import 'package:appsandalias/trilhas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Espécies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  


  void _navigateToAnimalPage(BuildContext context, String animalName) {
    if (animalName == 'Gaivota') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GaivotaPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 239, 23),
        title: const Text('Sandálias'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 215, 71),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Trilha'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TrilhasPag()), );
              },
            ),
            ListTile(
              leading: const Icon(Icons.beach_access_outlined),
              title: const Text('Praias'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PraiasPag()), );
              },
            ),
             
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          AnimalCard(imagePath: 'assets/images/animal1.jpeg', animalName: 'Gaivota', onTap: () => _navigateToAnimalPage(context, 'Gaivota')),
          const AnimalCard(imagePath: 'assets/images/animal2.png', animalName: 'Cavalo-Marinho 1'),
          const AnimalCard(imagePath: 'assets/images/animal3.jpeg', animalName: 'Tartaruga 1'),
          const AnimalCard(imagePath: 'assets/images/animal1.jpeg', animalName: 'Gaivota 2'),
          const AnimalCard(imagePath: 'assets/images/animal2.png', animalName: 'Cavalo-Marinho 2'),
          const AnimalCard(imagePath: 'assets/images/animal3.jpeg', animalName: 'Tartaruga 2'),
          const AnimalCard(imagePath: 'assets/images/animal1.jpeg', animalName: 'Gaivota 3'),
          const AnimalCard(imagePath: 'assets/images/animal2.png', animalName: 'Cavalo-Marinho 3'),
          const AnimalCard(imagePath: 'assets/images/animal3.jpeg', animalName: 'Tartaruga 3')
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 241, 241, 236),
    );
  }
}



