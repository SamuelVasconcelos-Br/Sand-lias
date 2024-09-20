import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TrilhasetePage extends StatelessWidget {
  const TrilhasetePage({super.key});

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
                  'assets/images/Trilha7Intro.jpg', 
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
                      'Trilha dos Sete Praias',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Ubatuba, São Paulo',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'A Trilha das Sete Praias possui 8 km e está localizada na costa sul de Ubatuba e liga a Praia da Lagoinha até a Praia da Fortaleza, passando pela Praia do Oeste, Peres, Bonete, Grande do Bonete, Praia do Deserto e a Praia do Cedro do Sul. A oportunidade única de conhecer sete praias paradisíacas, vislumbrar de lindas paisagens e aproveitar o profundo contato com a natureza faz com que essa trilha seja uma opção diferenciada de passeio em Ubatuba.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),

               const Gap(20),
              
              const Text(
                'Mapa:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image.asset('assets/images/Trilha7mapa.jpg'),


            ],
          ),
        ),
      ),
      
    );
  }

}
