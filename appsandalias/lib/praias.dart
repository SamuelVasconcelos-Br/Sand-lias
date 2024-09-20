import 'package:appsandalias/PraiaCard.dart';
import 'package:appsandalias/main.dart';
import 'package:appsandalias/praiasespec.dart';
import 'package:appsandalias/praiasespec2.dart';
import 'package:appsandalias/trilhas.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
 
 class PraiasPag extends StatefulWidget {
  const PraiasPag({super.key}); 
  
  

  @override
  // ignore: library_private_types_in_public_api
  _MyPraiaPageState createState() => _MyPraiaPageState();
 
 }

  
class _MyPraiaPageState extends State<PraiasPag> {

void _navigateToPraiaPage(BuildContext context, String praiaName) {
    if (praiaName == 'Praia de Maresias') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MaresiasPage()),
      );
    }
  }

  void _navigateToPraia2Page(BuildContext context, String praiaName) {
    if (praiaName == 'Praia da Enseada') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const EnseadaPage()),
      );
    }
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        
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
              leading: const Icon(Icons.pets),
              title: const Text('Espécies'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()), );
              },
            ),
          ],
        ),
      ),

      
      body: GridView.count(
        crossAxisCount: 1,
        children:  <Widget>[
          PraiaCard(imagePath: 'assets/images/PraiaMaresias.jpg', praiaName: 'Praia de Maresias',  descricao: '', onTap: () => _navigateToPraiaPage(context, 'Praia de Maresias')),
          PraiaCard(imagePath: 'assets/images/PraiaEnseada.jpeg', praiaName: 'Praia da Enseada', descricao: '', onTap: () => _navigateToPraia2Page(context, 'Praia da Enseada')),
          const PraiaCard(imagePath: 'assets/images/PraiaCouves.jpg', praiaName: 'Praia das Couves', descricao: '',),
          const PraiaCard(imagePath: 'assets/images/PraiaJuliao.jpg', praiaName: 'Praia do Julião', descricao: '',),
        ],
      ),
    );
}
}


