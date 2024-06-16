import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PharmacyPage(),
    );
  }
}

class PharmacyPage extends StatelessWidget {
  const PharmacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFADD8E6), // Cor de fundo azul claro
      appBar: AppBar(
        title: const Text('Guarujá, SP'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Image.asset(
                'images/Mapa.png', // Certifique-se de que o mapa está na pasta assets
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 8),
                  Text(
                    'Você está aqui!',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Drogasil - Guarujá',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 8),
                      Text('Rua , São Paulo - SP xxxxxxxxxx'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 8),
                      Text('xxxxx-xxxx'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(width: 8),
                      Text('Horário de funcionamento'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text('segunda-feira 07:00 - 22:00'),
                  const Text('terça-feira 07:00 - 22:00'),
                  const Text('quarta-feira 07:00 - 22:00'),
                  const Text('quinta-feira 07:00 - 22:00'),
                  const Text('sexta-feira 07:00 - 22:00'),
                  const Text('sábado 07:00 - 22:00'),
                  const Text('domingo 09:00 - 16:00'),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                    onPressed: () {
                      // Adicione a lógica para abrir o Google Maps aqui
                    },
                    child: const Text('Rotas: Maps.Google.Com'),
                  ),
                  )
                  ,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
