import 'package:appsandalias/TrilhaCard.dart';
import 'package:appsandalias/main.dart';
import 'package:appsandalias/praias.dart';
import 'package:appsandalias/trilhaespec2.dart';
import 'package:appsandalias/trilhasespec.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

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

class TrilhasPag extends StatefulWidget {
const TrilhasPag({super.key}); 


@override
  // ignore: library_private_types_in_public_api
  _MyTrilhaPageState createState() => _MyTrilhaPageState();
 

}

class _MyTrilhaPageState extends State<TrilhasPag> {



void _navigateToTrilhaPage(BuildContext context, String trilhaName) {
    if (trilhaName == 'Trilha dos 7 praias') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TrilhasetePage()),
      );
    }
  }

void _navigateToTrilha2Page(BuildContext context, String trilhaName) {
    if (trilhaName == 'Trilha do saco das bananas') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TrilhabananaPage()),
      );
    }
  }

  void abrirUrl() async {
    const url = 'https://www.instagram.com/projetosandalias.2ds/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
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

            const Gap (400),

            ListTile(
              leading: const Icon(Icons.airplane_ticket),
              title: const Text('Instagram do APP'),
              onTap: () {abrirUrl();}
            )
          ],
        ),
      ),

       body: GridView.count(
        crossAxisCount: 1,
        children:  <Widget>[
          TrilhaCard(imagePath: 'assets/images/trilha7.jpg', trilhaName: 'Trilha dos 7 praias',  descricao: '', onTap: () => _navigateToTrilhaPage(context, 'Trilha dos 7 praias')),
          TrilhaCard(imagePath: 'assets/images/trilhabananas.jpg', trilhaName: 'Trilha do saco das bananas', descricao: '', onTap: () =>  _navigateToTrilha2Page (context, 'Trilha do saco das bananas')),
          const TrilhaCard(imagePath: 'assets/images/trilhafortaleza.jpg', trilhaName: 'Trilha da fortaleza', descricao: '',),
          const TrilhaCard(imagePath: 'assets/images/trilhabonete.jpg', trilhaName: 'Trilha do bonete', descricao: '',),
        ],
      ),
    );


}

}


