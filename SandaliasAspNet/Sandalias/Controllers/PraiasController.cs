using Microsoft.AspNetCore.Mvc;
using Sandalias.Models;

namespace Sandalias.Controllers
{
    public class PraiasController : Controller
    {
        public IActionResult Maresias()
        {
            var maresias = new Praias
            {
                Nome = "Praia de Maresias - São Sebastião",
                Descricao = "A Praia de Maresias, localizada no município de São Sebastião, no litoral norte do estado de São Paulo, é um dos destinos mais populares e encantadores da região. Com uma extensão de aproximadamente 5 quilômetros, a praia é conhecida por suas areias claras e finas, águas cristalinas e vegetação exuberante que circunda a área. Maresias é famosa tanto por sua beleza natural quanto por sua vibrante vida noturna, atraindo turistas de todas as idades e perfis. A orla de Maresias é dividida em diferentes setores, cada um oferecendo uma experiência única. O lado esquerdo da praia é mais tranquilo e familiar, perfeito para aqueles que buscam relaxar e desfrutar do som das ondas. Já o lado direito, conhecido como \"Canto do Moreira\", é um local favorito dos surfistas devido às suas ondas fortes e constantes, ideais para a prática do surfe. Maresias também é palco de competições de surfe nacionais e internacionais, destacando-se como um importante ponto no circuito de surfe brasileiro. Maresias possui uma excelente infraestrutura turística, com uma ampla gama de opções de hospedagem que vão desde campings e pousadas acolhedoras até hotéis de luxo.",
                CaminhoMapa = "~/images/Maresias/Mapa.png",
                fotosPraias = new List<Praias>
                {
                    new Praias
                    {
                        caminhoImagem = "~/images/Maresias/Maresias1.png"
                    },
                    new Praias
                    {
                       caminhoImagem = "~/images/Maresias/Maresias2.png"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Maresias/Maresias3.png",
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Maresias/Maresias1.png"
                    },
                    new Praias
                    {
                       caminhoImagem = "~/images/Maresias/Maresias2.png"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Maresias/Maresias3.png",
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Maresias/Maresias1.png"
                    },
                    new Praias
                    {
                       caminhoImagem = "~/images/Maresias/Maresias2.png"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Maresias/Maresias3.png",
                    },
                     new Praias
                    {
                        caminhoImagem = "~/images/Maresias/Maresias1.png"
                    },
                    new Praias
                    {
                       caminhoImagem = "~/images/Maresias/Maresias1.png"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Maresias/Maresias1.png",
                    },


                }
            };

            return View(maresias);
        }
        public IActionResult Enseada()
        {
            var enseada = new Praias
            {
                Nome = "Praia da Enseada -  Guarujá",
                Descricao = "A Praia da Enseada, localizada no Guarujá, no Litoral Sul de São Paulo, é uma das mais visitadas da região. Com uma faixa de areia extensa e branca e águas tranquilas, é ideal para famílias e práticas de esportes aquáticos, como stand-up paddle e jet ski. Além disso, sua orla conta com uma infraestrutura completa, repleta de quiosques, bares e restaurantes que oferecem diversas opções gastronômicas e de lazer. A Enseada é dividida em setores, com áreas mais tranquilas para quem busca relaxar, e outros pontos onde é comum a prática de esportes na areia e na água. Esse equilíbrio entre lazer e esportes faz com que a praia seja um destino versátil para turistas de todas as idades e perfis. A proximidade com marinas também atrai quem deseja explorar a costa de barco. A praia sedia eventos e competições, e sua localização permite fácil acesso a outras praias e atrações turísticas do Guarujá. A Enseada oferece diversas opções de hospedagem, desde pousadas simples até hotéis mais sofisticados, garantindo uma estadia confortável.",
                CaminhoMapa = "~/images/Maresias/Mapa.png",
                fotosPraias = new List<Praias>
                {
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Enseada.jpeg"
                    },

                }
            };

            return View(enseada);
        }
        public IActionResult Juliao()
        {
            var juliao = new Praias
            {
                Nome = "Praia do Julião - Ilhabela",
                Descricao = "A Praia do Julião, situada em Ilhabela, é um refúgio de tranquilidade e beleza cênica, sendo um dos destinos mais encantadores da ilha. Suas águas claras e calmas são perfeitas para famílias que desejam desfrutar de momentos relaxantes e seguros, além de serem ideais para a prática de esportes aquáticos como caiaque, stand-up paddle e snorkeling, onde é possível explorar a rica fauna marinha da região. A praia possui uma extensa faixa de areia dourada, que é parcialmente sombreada por amendoeiras e outras árvores nativas, proporcionando áreas de descanso ao ar livre, onde os visitantes podem relaxar à sombra e curtir a paisagem. Por ser mais tranquila que outras praias da ilha, o Julião oferece um ambiente acolhedor, sendo uma excelente opção para quem busca um dia mais sossegado, longe da agitação turística. Embora a infraestrutura seja simples, com poucos quiosques e restaurantes, os serviços disponíveis garantem o conforto necessário para os visitantes, que podem se refrescar com bebidas e petiscos enquanto aproveitam o cenário natural. A Praia do Julião também é acessível por trilhas, o que torna o passeio ainda mais envolvente para os que apreciam caminhadas pela vegetação exuberante de Ilhabela.",
                CaminhoMapa = "~/images/Maresias/Mapa.png",
                fotosPraias = new List<Praias>
                {
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },
                    new Praias
                    {
                        caminhoImagem = "~/images/Praias/Juliao.jpeg"
                    },

                }
            };
            return View(juliao);
        }
        public IActionResult Couves()
        {
            var couves = new Praias
            {
                Nome = "Praia das Couves - Ubatuba",
                Descricao = "A Praia das Couves, localizada em Ubatuba, no Litoral Norte de São Paulo, é um refúgio paradisíaco para os amantes da natureza e um dos destinos mais preservados da região. Suas águas cristalinas e calmas, combinadas com a areia fina e dourada, criam o cenário perfeito para a prática de atividades como snorkeling e mergulho livre, onde os visitantes podem observar uma rica vida marinha, incluindo peixes coloridos e corais. O acesso à Praia das Couves se dá exclusivamente por trilha ou barco, o que ajuda a manter o local mais reservado e menos frequentado, ideal para quem busca tranquilidade e contato direto com a natureza. A trilha oferece belas vistas da vegetação local e proporciona um passeio envolvente para os aventureiros, enquanto a chegada por barco oferece uma perspectiva única da praia e suas belezas. A ausência de grandes quiosques e construções contribui para a preservação ambiental, tornando a praia um lugar onde os visitantes podem desfrutar de um ambiente mais selvagem e intocado. Apesar de sua simplicidade em termos de infraestrutura, a Praia das Couves se destaca como um destino ideal para aqueles que desejam uma experiência mais autêntica e próxima da natureza.",
                CaminhoMapa = "~/images/Maresias/Mapa.png",
                fotosPraias = new List<Praias>
                    {
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        },
                        new Praias
                        {
                            caminhoImagem = "~/images/Praias/Couves.jpg"
                        }
                    }
            };

            return View(couves);
            }

        }
    } 

