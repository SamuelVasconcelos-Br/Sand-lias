import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TrilhabananaPage extends StatelessWidget {
  const TrilhabananaPage({super.key});

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
                  'assets/images/TrilhaBananasIntro.jpg', 
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
                      'Trilha do saco de bananas',
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
                      'A travessia do Saco das Bananas tem início na praia da Caçandoca, em Ubatuba, e percorre aproximadamente 15km até chegar no destino final da praia de Tabatinga, já em Caraguatatuba. Normalmente a trilha é feita em dois dias e uma noite a fim de se aproveitar mais os atrativos do local, mas pode ser perfeitamente percorrida em um dia.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),

               const Gap(20),

              const SizedBox(height: 10),
              const Text(
                'Mapa:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              
              Image.asset('assets/images/TrilhaBananasmapa.jpg'),

            ],
          ),
        ),
      ),
      
    );
  }

}
