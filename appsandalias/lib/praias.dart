import 'package:appsandalias/PraiaCard.dart';
import 'package:appsandalias/main.dart';
import 'package:appsandalias/trilhas.dart';
import 'package:flutter/material.dart';

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       
    );        
  }
 
 class PraiasPag extends StatefulWidget {
  const PraiasPag({super.key}); 

  @override
  // ignore: library_private_types_in_public_api
  _MyPraiaPageState createState() => _MyPraiaPageState();
 
 }

  
class _MyPraiaPageState extends State<PraiasPag> {

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
        children: const <Widget>[
          PraiaCard(imagePath: 'assets/images/PraiaMaresias.jpg', praiaName: 'Praia de Maresias',  descricao: '',),
          PraiaCard(imagePath: 'assets/images/PraiaEnseada.jpeg', praiaName: 'Praia da Enseada', descricao: '',),
          PraiaCard(imagePath: 'assets/images/PraiaCouves.jpg', praiaName: 'Praia das Couves', descricao: '',),
          PraiaCard(imagePath: 'assets/images/PraiaJuliao.jpg', praiaName: 'Praia do Julião', descricao: '',),
        ],
      ),
    );
}
}


