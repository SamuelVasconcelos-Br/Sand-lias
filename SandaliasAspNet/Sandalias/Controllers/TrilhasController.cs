using Microsoft.AspNetCore.Mvc;
using Sandalias.Models;

namespace Sandalias.Controllers
{
    public class TrilhasController : Controller
    {
        public IActionResult Fortaleza()
        {
            var fortaleza = new Trilhas
            {
                Nome = "Trilha da Fortaleza",
                Local = "Guarujá",
                Descricao = "A Trilha da Fortaleza da Barra Grande, localizada no Guarujá, inicia-se no bairro de Santa Cruz dos Navegantes e percorre aproximadamente 2 km em meio à exuberante vegetação da Mata Atlântica. Com nível de dificuldade considerado baixo, a trilha é acessível para a maioria dos visitantes e oferece uma experiência envolvente em contato direto com a natureza. Ao longo do caminho, os aventureiros são presenteados com vistas panorâmicas da Baía de Santos, um dos pontos altos da caminhada, que revela paisagens deslumbrantes do litoral paulista. Além da beleza natural, a trilha é repleta de história, culminando na Fortaleza da Barra Grande, uma construção que data do século XVI e desempenhou um papel importante na defesa da costa brasileira durante o período colonial. A fortaleza, que já foi palco de batalhas e vigilância costeira, hoje é um monumento histórico que preserva parte da arquitetura militar da época, com suas muralhas, canhões e estrutura bem preservada.",
                fotosTrilhas = new List<Trilhas>
                {
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Fortaleza.jpg"
                    },
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Fortaleza.jpg"
                    },
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Fortaleza.jpg"
                    }
                },
                CaminhoMapa = "~/images/Trilhas/Mapa.png",

                Curiosidades = "A Trilha da Fortaleza da Barra Grande, no Guarujá, não é apenas rica em história, mas também oferece curiosidades interessantes. Durante o percurso, é possível observar uma variedade de espécies da Mata Atlântica, como o mico-leão-dourado e aves como o sabiá e o tucano, que são frequentemente avistados na área. Além da fauna, a trilha passa por trechos onde há vestígios de antigas construções usadas na defesa do litoral brasileiro, incluindo pequenos fortes e baterias que complementavam a proteção da Fortaleza. Outro ponto curioso é que, ao final da trilha, na Fortaleza da Barra Grande, ainda estão preservados antigos canhões que datam do século XVI."
            };
            return View(fortaleza);
        }
        public IActionResult Bananas()
        {
            var bananas = new Trilhas
            {
                Nome = "Trilha das Bananas",
                Local = "São Sebastião",
                Descricao = "A Trilha do Saco das Bananas, localizada em Ilhabela, é um caminho encantador que conecta a Praia do Saco das Bananas à Praia da Fome. Com aproximadamente 1,5 km de extensão, essa trilha apresenta um nível de dificuldade moderado, sendo adequada para caminhantes que buscam um contato mais próximo com a natureza. Durante o percurso, os visitantes atravessam áreas de mata atlântica exuberante, com vegetação nativa rica e variada, além de oportunidades para avistar aves e pequenos animais da fauna local. O trajeto oferece vistas deslumbrantes do mar e das ilhas ao redor, proporcionando momentos de contemplação. Ao final da trilha, a Praia do Saco das Bananas se revela como um refúgio tranquilo, com águas calmas e cercadas por um cenário natural preservado.",
                fotosTrilhas = new List<Trilhas>
                {
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Bananas.jpg"
                    },
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Bananas.jpg"
                    },
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Bananas.jpg"
                    }
                },
                CaminhoMapa = "~/images/Trilhas/Mapa.png",

                Curiosidades = "A Trilha do Saco das Bananas é conhecida por suas belezas naturais e algumas curiosidades interessantes. Um dos destaques é que o nome \"Saco das Bananas\" remete a uma antiga tradição dos pescadores locais, que utilizavam a enseada para guardar suas embarcações e também para armazenar bananas, um dos produtos cultivados na região. Durante a caminhada, os visitantes podem encontrar vestígios de trilhas de antigos caminhos utilizados por moradores locais e caçadores, que datam de tempos passados. Além disso, a trilha é um importante corredor ecológico, ligando diferentes habitats e promovendo a biodiversidade na área. A região também é famosa por ser um excelente ponto de observação para o pôr do sol, atraindo muitos visitantes que desejam terminar o dia em um ambiente paradisíaco."
            };
            return View(bananas);
        }
        public IActionResult SetePraias()
        {
            var setePraias = new Trilhas
            {
                Nome = "Trilha das 7 Praias",
                Local = "Ubatuba",
                Descricao = "A Trilha das Sete Praias, localizada em Ilhabela, é uma das mais famosas da região, oferecendo um percurso de aproximadamente 12 km que conecta diversas praias paradisíacas. Com um nível de dificuldade considerado moderado, essa trilha é ideal para os amantes da natureza e do trekking. Ao longo do caminho, os visitantes são presenteados com uma variedade de paisagens, desde exuberantes áreas de mata atlântica até vistas deslumbrantes do mar e das ilhas vizinhas. A trilha passa por sete praias, cada uma com suas características únicas: Praia da Feiticeira, Praia do Julião, Praia das Conchas, Praia da Fome, Praia do Saco das Bananas, Praia do Bonete e Praia da Sela. A diversidade de fauna e flora é rica, com oportunidades para observar aves, borboletas e, ocasionalmente, pequenos mamíferos.",
                fotosTrilhas = new List<Trilhas>
                {
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Sete.jpg"
                    },
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Sete.jpg"
                    },
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Sete.jpg"
                    }
                },
                CaminhoMapa = "~/images/Trilhas/Mapa.png",

                Curiosidades = "A Trilha das Sete Praias é repleta de curiosidades fascinantes. Uma delas é que cada praia tem uma história própria e peculiar; por exemplo, a Praia do Bonete é famosa por sua beleza selvagem e difícil acesso, o que a torna um verdadeiro paraíso escondido. Durante o percurso, é possível encontrar cachoeiras e poços naturais, proporcionando momentos de refresco ao longo da caminhada. A trilha é também um importante habitat para a biodiversidade local, abrigando diversas espécies de plantas e animais, algumas delas ameaçadas de extinção. Outro fato interessante é que a trilha foi utilizada por antigos moradores para o transporte de produtos e suprimentos entre as comunidades isoladas das praias."
            };
            return View(setePraias);
        }
        public IActionResult Bonete()
        {
            var bonete = new Trilhas
            {
                Nome = "Trilha do Bonete",
                Local = "Ilhabela",
                Descricao = "A Trilha do Bonete, situada em Ilhabela, é uma caminhada deslumbrante que leva à isolada e bela Praia do Bonete, considerada uma das mais encantadoras da região. Com cerca de 12 km de extensão, a trilha apresenta um nível de dificuldade moderado a alto, exigindo um bom preparo físico dos caminhantes. Ao longo do percurso, os visitantes atravessam trechos de mata atlântica densa, repleta de flora e fauna nativas, e são recompensados com vistas panorâmicas do oceano e das ilhas adjacentes. O caminho é marcado por subidas e descidas que adicionam um toque de aventura, enquanto se ouve o canto de aves e o som do mar ao fundo. Ao chegar à Praia do Bonete, a sensação de tranquilidade é imediata, com suas águas cristalinas e cercadas por uma vegetação exuberante, ideal para um banho refrescante ou para relaxar na areia.",
                fotosTrilhas = new List<Trilhas>
                {
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Bonete.jpg"
                    },
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Bonete.jpg"
                    },
                    new Trilhas
                    {
                        CaminhoImagem = "~/images/Trilhas/Bonete.jpg"
                    }
                },
                CaminhoMapa = "~/images/Trilhas/Mapa.png",

                Curiosidades = "A Trilha do Bonete possui diversas curiosidades que a tornam ainda mais especial. Uma delas é que a Praia do Bonete é frequentemente mencionada como um dos últimos redutos de preservação da cultura caiçara, com comunidades locais que mantêm tradições e modos de vida ligados ao mar e à natureza. Durante a trilha, é possível encontrar vestígios de antigas trilhas utilizadas por pescadores e moradores locais, que datam de tempos em que o acesso era ainda mais restrito. Além disso, o caminho oferece a chance de avistar a rica biodiversidade da região, incluindo espécies raras de plantas e animais, como o mico-leão-da-cara-dourada. A trilha é famosa por suas paisagens de tirar o fôlego, e muitos visitantes a consideram uma das melhores para se observar o pôr do sol, tornando o final da caminhada uma experiência inesquecível."
            };
            return View(bonete);
        }
    }
}
