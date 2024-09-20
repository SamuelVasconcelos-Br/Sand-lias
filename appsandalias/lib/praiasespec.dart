import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MaresiasPage extends StatelessWidget {
  const MaresiasPage({super.key});

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
                  'assets/images/MaresiasIntro.jpg', 
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
                      'Praia de Maresias',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'São Sebastião, São Paulo',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Maresias é a praia responsável por grande parte dos turista que chegam ao Litoral Norte de São Paulo. Famosa pelas boas ondas e por ter revelado grandes nomes do surfe mundial, Maresias é muito mais que apenas uma praia. De tão importante para a região de São Sebastião, há quem chegue por lá pensando que Maresias é a cidade de fato.',
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
                    'assets/images/CapelaMaresias.jpg', 
                    'A Capela São Benedito e Sant’Anna, em Maresias, é uma igrejinha de paredes brancas, portas e detalhes azuis. ',
                  ),
                  const SizedBox(height: 10),
                  _buildCharacteristicCard(
                    'assets/images/PoçoCaetano.jpg', 
                    'o Poço do Caetano é uma área com piscinas naturais e pequenas quedas de água cristalina cercada de uma vegetação nativa exuberante.',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Imagens',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/images/ImgMaresias1.jpg'),

              const Gap(30),

              Image.asset('assets/images/ImgMaresias2.jpg'),

              const Gap(30),

              Image.asset('assets/images/ImgMaresias3.jpg'),
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
