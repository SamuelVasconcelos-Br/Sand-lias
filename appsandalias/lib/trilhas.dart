import 'package:appsandalias/TrilhaCard.dart';
import 'package:appsandalias/main.dart';
import 'package:appsandalias/praias.dart';
import 'package:flutter/material.dart';

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trilhas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       
    );        
  }

class TrilhasPag extends StatelessWidget {
const TrilhasPag({super.key}); 

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
              leading: const Icon(Icons.beach_access_outlined),
              title: const Text('Praias'),
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const PraiasPag()), );
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
          TrilhaCard(imagePath: 'assets/images/PraiaMaresias.jpg', trilhaName: 'Praia de Maresias',  descricao: '',),
          TrilhaCard(imagePath: 'assets/images/PraiaEnseada.jpeg', trilhaName: 'Praia da Enseada', descricao: '',),
          TrilhaCard(imagePath: 'assets/images/PraiaCouves.jpg', trilhaName: 'Praia das Couves', descricao: '',),
          TrilhaCard(imagePath: 'assets/images/PraiaJuliao.jpg', trilhaName: 'Praia do Julião', descricao: '',),
        ],
      ),
    );


}
}




}
}


