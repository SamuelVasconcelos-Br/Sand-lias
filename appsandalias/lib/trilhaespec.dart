import 'package:flutter/material.dart';

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
                  'assets/images/GaivotaIntro.jpg', 
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
                      'Gaivota',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Larinae',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Gaivota é o nome dado a diferentes espécies de aves marinhas que fazem parte da família Laridae. O termo ave marinha é utilizado para se referir às aves que conseguem seu alimento desde a linha de baixa-mar até o mar aberto. O ambiente marinho é fundamental para sua sobrevivência.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Características',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  _buildCharacteristicCard(
                    'assets/images/animal1.jpeg', 
                    'São animais onívoros, que podem capturar suas próprias presas, roubar alimento de outras aves e até mesmo se alimentar de carniça e lixo.',
                  ),
                  const SizedBox(height: 10),
                  _buildCharacteristicCard(
                    'assets/images/animalGaivota2.jpg', 
                    'O aumento do número de gaivotas afeta negativamente outras espécies costeiras e causa transtornos e prejuízos aos seres humanos.',
                  ),
                  const SizedBox(height: 10),
                  _buildCharacteristicCard(
                    'assets/images/animalGaivota3.jpg', 
                    'A plumagem das gaivotas é branca, cinza e preta, suas pernas e pés são fortes, com membranas natatórias e seu bico é longo e robusto.',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Cuidados',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                '1. Não alimente as gaivotas com comida humana: Embora possa ser tentador alimentar essas aves, dar-lhes comida humana pode causar problemas de saúde e dependência, levando-as a perder suas habilidades de caça natural.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                '2. Mantenha sua comida segura: Se estiver na praia ou em áreas onde as gaivotas são comuns, mantenha sua comida e lixo bem fechados para evitar que as gaivotas tentem roubá-los.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                '3. Evite perturbações em seus ninhos: Se você estiver perto de áreas onde as gaivotas fazem seus ninhos, evite perturbá-los, especialmente durante a época de reprodução. Mantenha distância e evite fazer barulhos altos ou gestos bruscos que possam assustá-las.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                '4. Respeite as leis de proteção da vida selvagem: Em muitos lugares, as gaivotas são protegidas por leis de conservação da vida selvagem. Certifique-se de conhecer e respeitar essas leis.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                '5. Evite alimentar as gaivotas inadvertidamente: Certifique-se de que seu lixo esteja sempre bem fechado e que não haja alimentos expostos que possam atrair as gaivotas.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                '6. Evite interferir em seu comportamento natural: As gaivotas desempenham um papel importante nos ecossistemas costeiros, por isso é melhor não interferir em seu comportamento natural, a menos que seja necessário para proteger sua segurança ou a segurança humana.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                '7. Mantenha distância: Se uma gaivota parecer especialmente agressiva, é melhor manter distância e evitar confrontos.',
                style: TextStyle(fontSize: 16),
              ),
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
