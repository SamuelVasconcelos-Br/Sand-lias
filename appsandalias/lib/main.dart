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
      title: 'Sandálias',
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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
              leading: const Icon(Icons.home),
              title: const Text('Praia'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PraiasPag()), );
              },
            ),
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Trilha'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TrilhasPag()), );
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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      
    );
  }
}

class AnimalCard extends StatelessWidget {
  final String imagePath;
  final String animalName;
  final VoidCallback? onTap;

  const AnimalCard({
    super.key,
    required this.imagePath,
    required this.animalName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  animalName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
