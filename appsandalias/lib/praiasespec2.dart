import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EnseadaPage extends StatelessWidget {
  const EnseadaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.yellow),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/images/EnseadaIntro.jpg', 
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: const Color.fromARGB(255, 255, 215, 71),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Praia da Enseada',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Guarujá, São Paulo',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'A Praia da Enseada é uma das mais populares e a maior praia de Guarujá, com 5,6 km de extensão. Possui águas claras, mar agitado e longa faixa de areia branca e fina. Está localizada entre a Praia da Pitangueiras e a Praia do Éden, rodeada de hotéis, pousadas, bares e restaurantes. Do alto, a praia pode ser vista de forma panorâmica no Mirante da Campina.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),

              const Gap(20),
              
              const SizedBox(height: 10),
              const Text(
                'Pontos de interesse:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  _buildCharacteristicCard(
                    'assets/images/mirante.jpg', 
                    'O Mirante da Campina fica localizado no Morro da Campina, também conhecido como Morro do Maluf. É o marco zero da cidade de Guarujá e divide as praias de Pitangueiras e Enseada. ',
                  ),
                  const SizedBox(height: 10),
                  _buildCharacteristicCard(
                    'assets/images/Acqua.jpg', 
                    'O Acqua Mundo, é um empreendimento privado, que privilegia desde sua inauguração, a educação ambiental e a pesquisa ecológica. Com isto oferece aos visitantes 49 recintos com representações de vários habitats marinhos',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Imagens',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/images/ImgEnseada1.jpg'),

              const Gap(30),

              Image.asset('assets/images/ImgEnseada2.jpg'),

              const Gap(30),

              Image.asset('assets/images/ImgEnseada3.jpg'),
            ],
          ),
        ),
      ),
      
    );
  }

  Widget _buildCharacteristicCard(String imagePath, String text) {
    return Card(
      color: const Color.fromARGB(255, 255, 215, 71),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
